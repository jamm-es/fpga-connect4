import argparse


# extract arguments
parser = argparse.ArgumentParser(
    prog='Verilog array flatener/packer generator', 
    description='Creates verilog code that packs or flatens a 2D wire array to allow these arrays to be passed to and from modules.'
)
parser.add_argument('var_name', type=str)
parser.add_argument('row_size', type=int)
parser.add_argument('row_count', type=int)
args = parser.parse_args()

# declare flat variable
variable = f'wire [{args.row_size*args.row_count-1}:0] FLAT__{args.var_name};'

# generate packer (2d array from flattened)
packed = f'assign {{{','.join([f"{args.var_name}[{i}]" for i in reversed(range(args.row_count))])}}} = FLAT__{args.var_name};'

# generate flatener (flattened from 2d array)
flattened = f'assign FLAT__{args.var_name} = {{{','.join([f"{args.var_name}[{i}]" for i in reversed(range(args.row_count))])}}};s'



print('Variable:')
print(variable)
print('Packed:')
print(packed)
print('Flattened')
print(flattened)