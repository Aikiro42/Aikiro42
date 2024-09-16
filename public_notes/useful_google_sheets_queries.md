
# Timetable
## Data
```json
{
  "Member": ["Alice", "Bob", "Carol", "Dean", "Esther"],
  "Day": ["Sept. 19 (Thursday)", "Sept. 20 (Friday)"],
  "Shift Start Time": time,
  "Shift End Time": time
}
```
- Cell `A2` contains the time to check for available members.
## Query
```
=TRANSPOSE(IFERROR(FILTER(Booth_Shifts[Member], Booth_Shifts[Day]="Sept. 19 (Thursday)", timevalue(A2)>Booth_Shifts[Shift Start time], timevalue(A2)<Booth_Shifts[Shift End Time]), ""))
```