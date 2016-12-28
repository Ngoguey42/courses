
int: FACTOR = 3;
int: MAX_DIGIT = FACTOR * FACTOR;

int: ROW_SIZE = FACTOR * FACTOR;
int: MAX_Y = ROW_SIZE - 1;

int: COL_SIZE = FACTOR * FACTOR;
int: MAX_X = COL_SIZE - 1;

int: GRID_SIZE = ROW_SIZE * COL_SIZE;
int: GRID_LASTID = GRID_SIZE - 1;


array[0..MAX_Y, 0..MAX_X] of var int: grid;

constraint grid[0,2] = 2;
constraint grid[0,4] = 9;
constraint grid[0,6] = 3;
constraint grid[1,0] = 8;
constraint grid[1,2] = 5;
constraint grid[2,0] = 1;
constraint grid[3,1] = 9;
constraint grid[3,4] = 6;
constraint grid[3,7] = 4;
constraint grid[4,7] = 5;
constraint grid[4,8] = 8;
constraint grid[5,8] = 1;
constraint grid[6,1] = 7;
constraint grid[6,6] = 2;
constraint grid[7,0] = 3;
constraint grid[7,3] = 5;
constraint grid[8,3] = 1;

include "alldifferent.mzn";

% Digit range
constraint forall(x in 0..MAX_Y, y in 0..MAX_X)(
  grid[y,x] >= 1 /\ grid[y,x] <= MAX_DIGIT
);

% Columns diff
constraint forall(x in 0..MAX_X)(
  alldifferent(
    [grid[y, x] | y in 0..MAX_Y]
  )
);

% Rows diff
constraint forall(y in 0..MAX_Y)(
  alldifferent(
    [grid[y, x] | x in 0..MAX_X]
  )
);

% Block diff
constraint forall(bx in 0..(FACTOR - 1), by in 0..(FACTOR - 1))(
  alldifferent(
    [grid[by * FACTOR + dy, bx * FACTOR + dx]
    | dx in 0..(FACTOR - 1), dy in 0..(FACTOR - 1)]
  )
);

solve satisfy;

output [
  show(grid[y, x])
    ++ if x == MAX_X /\ y mod 3 == 2 then "\n=====================\n"
       elseif x == MAX_X then "\n"
       elseif x mod 3 == 2 then " | "
       else " " endif
 | y in 0..MAX_Y
 , x in 0..MAX_X
];


