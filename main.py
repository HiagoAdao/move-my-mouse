from argparse import ArgumentParser, RawTextHelpFormatter
from mouse_move import mouse_move

parser = ArgumentParser(
    description=(
        "Python script to move the mouse automatically "
        "so you don't get inactive"
    ),
    formatter_class=RawTextHelpFormatter,
)
parser.add_argument(
    '-m',
    '--minutes',
    help='Number of minutes the mouse will be moving',
    type=int,
    required=True,
)
args = parser.parse_args()

if __name__ == '__main__':
    mouse_move(args.minutes)
