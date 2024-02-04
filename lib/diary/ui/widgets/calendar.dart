import 'package:dart_date/dart_date.dart';
import 'package:dartx/dartx.dart' as dx;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/styles/ne_colors.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: context.colors.surfaceVariant,
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TableCalendar(
                focusedDay: DateTime.now(),
                firstDay: DateTime.now().addYears(-10),
                lastDay: DateTime.now().addYears(10),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextFormatter: (date, locale) {
                    return DateFormat("MMMM',' y", locale)
                        .format(date)
                        .capitalize();
                  },
                  titleTextStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: context.colors.onSurfaceVariant,
                  ),
                  headerPadding: EdgeInsets.zero,
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: context.colors.onSurfaceVariant,
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: context.colors.onSurfaceVariant,
                  ),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    fontSize: 10,
                    color: context.colors.onPrimaryContainer,
                  ),
                  weekendStyle: TextStyle(
                    fontSize: 10,
                    color: context.colors.onPrimaryContainer,
                  ),
                  dowTextFormatter: (date, locale) {
                    return DateFormat.E(locale)
                        .format(date)
                        .characters
                        .first
                        .toUpperCase();
                  },
                ),
                calendarBuilders: CalendarBuilders(
                  todayBuilder: (_, day, __) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: DayCard(day),
                    );
                  },
                  defaultBuilder: (_, day, __) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: DayCard(day),
                    );
                  },
                  outsideBuilder: (context, day, focusedDay) {
                    return const SizedBox();
                  },
                ),
              ),
              const VerticalSpace(16),
              const _Labels(),
              const VerticalSpace(8),
            ],
          ),
        ),
      ],
    );
  }
}

class _Labels extends StatelessWidget {
  const _Labels();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Label(
          color: context.colors.primary,
          label: 'Diários não escritos',
        ),
        const HorizontalSpace(24),
        const Label(
          color: NeColors.green,
          label: 'Diários já registrados',
        ),
      ],
    );
  }
}

class Label extends StatelessWidget {
  final Color color;
  final String label;

  const Label({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const HorizontalSpace(8),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: context.colors.onBackground,
          ),
        ),
      ],
    );
  }
}

class DayCard extends StatelessWidget {
  final DateTime date;

  const DayCard(this.date, {super.key});

  DateTime get localDate => date.toLocal();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: date.isAfter(DateTime.now())
            ? context.colors.surface
            : context.colors.primary,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          date.day.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
