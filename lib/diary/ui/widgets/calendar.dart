import 'package:dart_date/dart_date.dart' as dt;
import 'package:dartx/dartx.dart' as dx;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:necrologium/diary/core/diary.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/styles/ne_colors.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  final Diary diary;

  const Calendar({super.key, required this.diary});

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
                      child: _DayCard(day, wrote: diary.wroteOnDay(day)),
                    );
                  },
                  defaultBuilder: (_, day, __) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: _DayCard(day, wrote: diary.wroteOnDay(day)),
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
        _Label(
          color: context.colors.primary,
          label: 'Diários não escritos',
        ),
        const HorizontalSpace(24),
        const _Label(
          color: NeColors.green,
          label: 'Diários já registrados',
        ),
      ],
    );
  }
}

class _Label extends StatelessWidget {
  final Color color;
  final String label;

  const _Label({required this.color, required this.label});

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

class _DayCard extends StatelessWidget {
  final bool wrote;
  final DateTime day;

  const _DayCard(this.day, {this.wrote = false});

  Color color(BuildContext context) {
    if (wrote) {
      return NeColors.green;
    }

    if (day.date.isAfter(DateTime.now().date)) {
      return context.colors.surface;
    }

    return context.colors.primary;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color(context),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          day.day.toString(),
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