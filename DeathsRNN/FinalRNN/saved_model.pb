??<
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??:
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
0module_wrapper/simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*A
shared_name20module_wrapper/simple_rnn/simple_rnn_cell/kernel
?
Dmodule_wrapper/simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp0module_wrapper/simple_rnn/simple_rnn_cell/kernel* 
_output_shapes
:
??*
dtype0
?
:module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*K
shared_name<:module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel
?
Nmodule_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp:module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
.module_wrapper/simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.module_wrapper/simple_rnn/simple_rnn_cell/bias
?
Bmodule_wrapper/simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp.module_wrapper/simple_rnn/simple_rnn_cell/bias*
_output_shapes	
:?*
dtype0
?
6module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*G
shared_name86module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel
?
Jmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpReadVariableOp6module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel* 
_output_shapes
:
??*
dtype0
?
@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*Q
shared_nameB@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
?
Tmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
4module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias
?
Hmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOpReadVariableOp4module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias*
_output_shapes	
:?*
dtype0
?
6module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*G
shared_name86module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel
?
Jmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/Read/ReadVariableOpReadVariableOp6module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel* 
_output_shapes
:
??*
dtype0
?
@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*Q
shared_nameB@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel
?
Tmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
4module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias
?
Hmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/Read/ReadVariableOpReadVariableOp4module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias*
_output_shapes	
:?*
dtype0
?
6module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*G
shared_name86module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel
?
Jmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/Read/ReadVariableOpReadVariableOp6module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel* 
_output_shapes
:
??*
dtype0
?
@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*Q
shared_nameB@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel
?
Tmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
4module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias
?
Hmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/Read/ReadVariableOpReadVariableOp4module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias*
_output_shapes	
:?*
dtype0
?
module_wrapper_4/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namemodule_wrapper_4/dense/kernel
?
1module_wrapper_4/dense/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_4/dense/kernel*
_output_shapes
:	?*
dtype0
?
module_wrapper_4/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namemodule_wrapper_4/dense/bias
?
/module_wrapper_4/dense/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_4/dense/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
7Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*H
shared_name97Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/m
?
KAdam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/m/Read/ReadVariableOpReadVariableOp7Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/m* 
_output_shapes
:
??*
dtype0
?
AAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/m
?
UAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpAAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
5Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/m
?
IAdam/module_wrapper/simple_rnn/simple_rnn_cell/bias/m/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/m*
_output_shapes	
:?*
dtype0
?
=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*N
shared_name?=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/m
?
QAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/m* 
_output_shapes
:
??*
dtype0
?
GAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*X
shared_nameIGAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m
?
[Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpGAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/m
?
OAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/m/Read/ReadVariableOpReadVariableOp;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/m*
_output_shapes	
:?*
dtype0
?
=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*N
shared_name?=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/m
?
QAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/m* 
_output_shapes
:
??*
dtype0
?
GAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*X
shared_nameIGAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m
?
[Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpGAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/m
?
OAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/m/Read/ReadVariableOpReadVariableOp;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/m*
_output_shapes	
:?*
dtype0
?
=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*N
shared_name?=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/m
?
QAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/m/Read/ReadVariableOpReadVariableOp=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/m* 
_output_shapes
:
??*
dtype0
?
GAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*X
shared_nameIGAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m
?
[Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpGAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/m
?
OAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/m/Read/ReadVariableOpReadVariableOp;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/module_wrapper_4/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/module_wrapper_4/dense/kernel/m
?
8Adam/module_wrapper_4/dense/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_4/dense/kernel/m*
_output_shapes
:	?*
dtype0
?
"Adam/module_wrapper_4/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/module_wrapper_4/dense/bias/m
?
6Adam/module_wrapper_4/dense/bias/m/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_4/dense/bias/m*
_output_shapes
:*
dtype0
?
7Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*H
shared_name97Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/v
?
KAdam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/v/Read/ReadVariableOpReadVariableOp7Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/v* 
_output_shapes
:
??*
dtype0
?
AAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/v
?
UAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpAAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
5Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/v
?
IAdam/module_wrapper/simple_rnn/simple_rnn_cell/bias/v/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/v*
_output_shapes	
:?*
dtype0
?
=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*N
shared_name?=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/v
?
QAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/v* 
_output_shapes
:
??*
dtype0
?
GAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*X
shared_nameIGAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v
?
[Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpGAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/v
?
OAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/v/Read/ReadVariableOpReadVariableOp;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/v*
_output_shapes	
:?*
dtype0
?
=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*N
shared_name?=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/v
?
QAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/v* 
_output_shapes
:
??*
dtype0
?
GAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*X
shared_nameIGAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v
?
[Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpGAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/v
?
OAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/v/Read/ReadVariableOpReadVariableOp;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/v*
_output_shapes	
:?*
dtype0
?
=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*N
shared_name?=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/v
?
QAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/v/Read/ReadVariableOpReadVariableOp=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/v* 
_output_shapes
:
??*
dtype0
?
GAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*X
shared_nameIGAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v
?
[Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpGAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/v
?
OAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/v/Read/ReadVariableOpReadVariableOp;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/module_wrapper_4/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/module_wrapper_4/dense/kernel/v
?
8Adam/module_wrapper_4/dense/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_4/dense/kernel/v*
_output_shapes
:	?*
dtype0
?
"Adam/module_wrapper_4/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/module_wrapper_4/dense/bias/v
?
6Adam/module_wrapper_4/dense/bias/v/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_4/dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?b
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?a
value?aB?a B?a
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
_
_module
regularization_losses
trainable_variables
	variables
	keras_api
_
_module
regularization_losses
trainable_variables
	variables
	keras_api
_
_module
regularization_losses
trainable_variables
	variables
	keras_api
_
_module
regularization_losses
trainable_variables
	variables
	keras_api
_
 _module
!regularization_losses
"trainable_variables
#	variables
$	keras_api
?
%iter

&beta_1

'beta_2
	(decay
)learning_rate*m?+m?,m?-m?.m?/m?0m?1m?2m?3m?4m?5m?6m?7m?*v?+v?,v?-v?.v?/v?0v?1v?2v?3v?4v?5v?6v?7v?
 
f
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
f
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
?
8layer_regularization_losses
9non_trainable_variables

:layers
;layer_metrics
<metrics
regularization_losses
	variables
	trainable_variables
 
l
=cell
>
state_spec
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
 

*0
+1
,2

*0
+1
,2
?
Clayer_regularization_losses
Dnon_trainable_variables

Elayers
Flayer_metrics
regularization_losses
trainable_variables
	variables
Gmetrics
l
Hcell
I
state_spec
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
 

-0
.1
/2

-0
.1
/2
?
Nlayer_regularization_losses
Onon_trainable_variables

Players
Qlayer_metrics
regularization_losses
trainable_variables
	variables
Rmetrics
l
Scell
T
state_spec
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
 

00
11
22

00
11
22
?
Ylayer_regularization_losses
Znon_trainable_variables

[layers
\layer_metrics
regularization_losses
trainable_variables
	variables
]metrics
l
^cell
_
state_spec
`	variables
atrainable_variables
bregularization_losses
c	keras_api
 

30
41
52

30
41
52
?
dlayer_regularization_losses
enon_trainable_variables

flayers
glayer_metrics
regularization_losses
trainable_variables
	variables
hmetrics
h

6kernel
7bias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
 

60
71

60
71
?
mlayer_regularization_losses
nnon_trainable_variables

olayers
player_metrics
!regularization_losses
"trainable_variables
#	variables
qmetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0module_wrapper/simple_rnn/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE:module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE.module_wrapper/simple_rnn/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE6module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE4module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE6module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE4module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE6module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE4module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEmodule_wrapper_4/dense/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmodule_wrapper_4/dense/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
 
 
#
0
1
2
3
4
 

r0
~

*kernel
+recurrent_kernel
,bias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
 

*0
+1
,2

*0
+1
,2
 
?

wstates
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
?	variables
@trainable_variables
Aregularization_losses
 
 
 
 
 


-kernel
.recurrent_kernel
/bias
}	variables
~trainable_variables
regularization_losses
?	keras_api
 

-0
.1
/2

-0
.1
/2
 
?
?states
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
 
 
 
 
 
?

0kernel
1recurrent_kernel
2bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
 

00
11
22

00
11
22
 
?
?states
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 
 
 
 
?

3kernel
4recurrent_kernel
5bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
 

30
41
52

30
41
52
 
?
?states
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
 
 
 
 
 

60
71

60
71
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api

*0
+1
,2

*0
+1
,2
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
s	variables
ttrainable_variables
uregularization_losses
 
 

=0
 
 
 

-0
.1
/2

-0
.1
/2
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
 
 

H0
 
 
 

00
11
22

00
11
22
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 

S0
 
 
 

30
41
52

30
41
52
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 

^0
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
??
VARIABLE_VALUE7Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE$Adam/module_wrapper_4/dense/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/module_wrapper_4/dense/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE$Adam/module_wrapper_4/dense/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/module_wrapper_4/dense/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
$serving_default_module_wrapper_inputPlaceholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCall$serving_default_module_wrapper_input0module_wrapper/simple_rnn/simple_rnn_cell/kernel.module_wrapper/simple_rnn/simple_rnn_cell/bias:module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel6module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel4module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel6module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel4module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel6module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel4module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernelmodule_wrapper_4/dense/kernelmodule_wrapper_4/dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_26172
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpDmodule_wrapper/simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpNmodule_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpBmodule_wrapper/simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpJmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpTmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpHmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOpJmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/Read/ReadVariableOpTmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/Read/ReadVariableOpHmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/Read/ReadVariableOpJmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/Read/ReadVariableOpTmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOpHmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/Read/ReadVariableOp1module_wrapper_4/dense/kernel/Read/ReadVariableOp/module_wrapper_4/dense/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpKAdam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/m/Read/ReadVariableOpUAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/m/Read/ReadVariableOpIAdam/module_wrapper/simple_rnn/simple_rnn_cell/bias/m/Read/ReadVariableOpQAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/m/Read/ReadVariableOp[Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m/Read/ReadVariableOpOAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/m/Read/ReadVariableOpQAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/m/Read/ReadVariableOp[Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m/Read/ReadVariableOpOAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/m/Read/ReadVariableOpQAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/m/Read/ReadVariableOp[Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m/Read/ReadVariableOpOAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/m/Read/ReadVariableOp8Adam/module_wrapper_4/dense/kernel/m/Read/ReadVariableOp6Adam/module_wrapper_4/dense/bias/m/Read/ReadVariableOpKAdam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/v/Read/ReadVariableOpUAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/v/Read/ReadVariableOpIAdam/module_wrapper/simple_rnn/simple_rnn_cell/bias/v/Read/ReadVariableOpQAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/v/Read/ReadVariableOp[Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v/Read/ReadVariableOpOAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/v/Read/ReadVariableOpQAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/v/Read/ReadVariableOp[Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v/Read/ReadVariableOpOAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/v/Read/ReadVariableOpQAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/v/Read/ReadVariableOp[Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v/Read/ReadVariableOpOAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/v/Read/ReadVariableOp8Adam/module_wrapper_4/dense/kernel/v/Read/ReadVariableOp6Adam/module_wrapper_4/dense/bias/v/Read/ReadVariableOpConst*>
Tin7
523	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_30619
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate0module_wrapper/simple_rnn/simple_rnn_cell/kernel:module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel.module_wrapper/simple_rnn/simple_rnn_cell/bias6module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel4module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias6module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel4module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias6module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel4module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/biasmodule_wrapper_4/dense/kernelmodule_wrapper_4/dense/biastotalcount7Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/mAAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/m5Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/m=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/mGAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/m=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/mGAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/m=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/mGAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/m$Adam/module_wrapper_4/dense/kernel/m"Adam/module_wrapper_4/dense/bias/m7Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/vAAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/v5Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/v=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/vGAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/v=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/vGAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/v=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/vGAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/v$Adam/module_wrapper_4/dense/kernel/v"Adam/module_wrapper_4/dense/bias/v*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_30776??7
?
?
#__inference_signature_wrapper_26172
module_wrapper_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
??
	unknown_9:	?

unknown_10:
??

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_24849o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
,
_output_shapes
:??????????
.
_user_specified_namemodule_wrapper_input
?

?
simple_rnn_1_while_cond_286466
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_28646___redundant_placeholder0M
Isimple_rnn_1_while_simple_rnn_1_while_cond_28646___redundant_placeholder1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_28646___redundant_placeholder2M
Isimple_rnn_1_while_simple_rnn_1_while_cond_28646___redundant_placeholder3
simple_rnn_1_while_identity
?
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?H
?
.module_wrapper_2_simple_rnn_2_while_body_27591X
Tmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_loop_counter^
Zmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_maximum_iterations3
/module_wrapper_2_simple_rnn_2_while_placeholder5
1module_wrapper_2_simple_rnn_2_while_placeholder_15
1module_wrapper_2_simple_rnn_2_while_placeholder_2W
Smodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_strided_slice_1_0?
?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0j
Vmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0:
??f
Wmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:	?l
Xmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
??0
,module_wrapper_2_simple_rnn_2_while_identity2
.module_wrapper_2_simple_rnn_2_while_identity_12
.module_wrapper_2_simple_rnn_2_while_identity_22
.module_wrapper_2_simple_rnn_2_while_identity_32
.module_wrapper_2_simple_rnn_2_while_identity_4U
Qmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_strided_slice_1?
?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorh
Tmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource:
??d
Umodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:	?j
Vmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:
????Lmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp?Kmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp?Mmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp?
Umodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Gmodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0/module_wrapper_2_simple_rnn_2_while_placeholder^module_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Kmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpVmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
<module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMulNmodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Smodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Lmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpWmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
=module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAddFmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0Tmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpXmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
>module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul1module_wrapper_2_simple_rnn_2_while_placeholder_2Umodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/addAddV2Fmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:0Hmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
:module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/ReluRelu=module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
Hmodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1module_wrapper_2_simple_rnn_2_while_placeholder_1/module_wrapper_2_simple_rnn_2_while_placeholderHmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0*
_output_shapes
: *
element_dtype0:???k
)module_wrapper_2/simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
'module_wrapper_2/simple_rnn_2/while/addAddV2/module_wrapper_2_simple_rnn_2_while_placeholder2module_wrapper_2/simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: m
+module_wrapper_2/simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
)module_wrapper_2/simple_rnn_2/while/add_1AddV2Tmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_loop_counter4module_wrapper_2/simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: ?
,module_wrapper_2/simple_rnn_2/while/IdentityIdentity-module_wrapper_2/simple_rnn_2/while/add_1:z:0)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_2/simple_rnn_2/while/Identity_1IdentityZmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_maximum_iterations)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_2/simple_rnn_2/while/Identity_2Identity+module_wrapper_2/simple_rnn_2/while/add:z:0)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_2/simple_rnn_2/while/Identity_3IdentityXmodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_2/simple_rnn_2/while/Identity_4IdentityHmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*(
_output_shapes
:???????????
(module_wrapper_2/simple_rnn_2/while/NoOpNoOpM^module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpL^module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpN^module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,module_wrapper_2_simple_rnn_2_while_identity5module_wrapper_2/simple_rnn_2/while/Identity:output:0"i
.module_wrapper_2_simple_rnn_2_while_identity_17module_wrapper_2/simple_rnn_2/while/Identity_1:output:0"i
.module_wrapper_2_simple_rnn_2_while_identity_27module_wrapper_2/simple_rnn_2/while/Identity_2:output:0"i
.module_wrapper_2_simple_rnn_2_while_identity_37module_wrapper_2/simple_rnn_2/while/Identity_3:output:0"i
.module_wrapper_2_simple_rnn_2_while_identity_47module_wrapper_2/simple_rnn_2/while/Identity_4:output:0"?
Qmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_strided_slice_1Smodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_strided_slice_1_0"?
Umodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourceWmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"?
Vmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourceXmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"?
Tmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceVmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"?
?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Lmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpLmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2?
Kmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpKmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2?
Mmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpMmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?D
?
*module_wrapper_simple_rnn_while_body_27809P
Lmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_loop_counterV
Rmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_maximum_iterations/
+module_wrapper_simple_rnn_while_placeholder1
-module_wrapper_simple_rnn_while_placeholder_11
-module_wrapper_simple_rnn_while_placeholder_2O
Kmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_strided_slice_1_0?
?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0d
Pmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:
??`
Qmodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	?f
Rmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
??,
(module_wrapper_simple_rnn_while_identity.
*module_wrapper_simple_rnn_while_identity_1.
*module_wrapper_simple_rnn_while_identity_2.
*module_wrapper_simple_rnn_while_identity_3.
*module_wrapper_simple_rnn_while_identity_4M
Imodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_strided_slice_1?
?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensorb
Nmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:
??^
Omodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	?d
Pmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
????Fmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?Emodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?Gmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Qmodule_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Cmodule_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0+module_wrapper_simple_rnn_while_placeholderZmodule_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Emodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpPmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
6module_wrapper/simple_rnn/while/simple_rnn_cell/MatMulMatMulJmodule_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Mmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Fmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpQmodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
7module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd@module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul:product:0Nmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Gmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpRmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
8module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul-module_wrapper_simple_rnn_while_placeholder_2Omodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3module_wrapper/simple_rnn/while/simple_rnn_cell/addAddV2@module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0Bmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
4module_wrapper/simple_rnn/while/simple_rnn_cell/ReluRelu7module_wrapper/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
Dmodule_wrapper/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-module_wrapper_simple_rnn_while_placeholder_1+module_wrapper_simple_rnn_while_placeholderBmodule_wrapper/simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:???g
%module_wrapper/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
#module_wrapper/simple_rnn/while/addAddV2+module_wrapper_simple_rnn_while_placeholder.module_wrapper/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: i
'module_wrapper/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
%module_wrapper/simple_rnn/while/add_1AddV2Lmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_loop_counter0module_wrapper/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: ?
(module_wrapper/simple_rnn/while/IdentityIdentity)module_wrapper/simple_rnn/while/add_1:z:0%^module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
*module_wrapper/simple_rnn/while/Identity_1IdentityRmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_maximum_iterations%^module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
*module_wrapper/simple_rnn/while/Identity_2Identity'module_wrapper/simple_rnn/while/add:z:0%^module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
*module_wrapper/simple_rnn/while/Identity_3IdentityTmodule_wrapper/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
*module_wrapper/simple_rnn/while/Identity_4IdentityBmodule_wrapper/simple_rnn/while/simple_rnn_cell/Relu:activations:0%^module_wrapper/simple_rnn/while/NoOp*
T0*(
_output_shapes
:???????????
$module_wrapper/simple_rnn/while/NoOpNoOpG^module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpF^module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpH^module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(module_wrapper_simple_rnn_while_identity1module_wrapper/simple_rnn/while/Identity:output:0"a
*module_wrapper_simple_rnn_while_identity_13module_wrapper/simple_rnn/while/Identity_1:output:0"a
*module_wrapper_simple_rnn_while_identity_23module_wrapper/simple_rnn/while/Identity_2:output:0"a
*module_wrapper_simple_rnn_while_identity_33module_wrapper/simple_rnn/while/Identity_3:output:0"a
*module_wrapper_simple_rnn_while_identity_43module_wrapper/simple_rnn/while/Identity_4:output:0"?
Imodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_strided_slice_1Kmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_strided_slice_1_0"?
Omodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceQmodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Pmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceRmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
Nmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourcePmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"?
?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Fmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpFmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2?
Emodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpEmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2?
Gmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpGmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?4
?
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_26748

inputs+
simple_rnn_cell_1_26673:
??&
simple_rnn_cell_1_26675:	?+
simple_rnn_cell_1_26677:
??
identity??)simple_rnn_cell_1/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_26673simple_rnn_cell_1_26675simple_rnn_cell_1_26677*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_26633n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_26673simple_rnn_cell_1_26675simple_rnn_cell_1_26677*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_26685*
condR
while_cond_26684*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????z
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?

?
simple_rnn_3_while_cond_254526
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_28
4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1M
Isimple_rnn_3_while_simple_rnn_3_while_cond_25452___redundant_placeholder0M
Isimple_rnn_3_while_simple_rnn_3_while_cond_25452___redundant_placeholder1M
Isimple_rnn_3_while_simple_rnn_3_while_cond_25452___redundant_placeholder2M
Isimple_rnn_3_while_simple_rnn_3_while_cond_25452___redundant_placeholder3
simple_rnn_3_while_identity
?
simple_rnn_3/while/LessLesssimple_rnn_3_while_placeholder4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
? 
?
while_body_26977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
while_simple_rnn_cell_2_26999_0:
??.
while_simple_rnn_cell_2_27001_0:	?3
while_simple_rnn_cell_2_27003_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_2_26999:
??,
while_simple_rnn_cell_2_27001:	?1
while_simple_rnn_cell_2_27003:
????/while/simple_rnn_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
/while/simple_rnn_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_2_26999_0while_simple_rnn_cell_2_27001_0while_simple_rnn_cell_2_27003_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_26925?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity8while/simple_rnn_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_2_26999while_simple_rnn_cell_2_26999_0"@
while_simple_rnn_cell_2_27001while_simple_rnn_cell_2_27001_0"@
while_simple_rnn_cell_2_27003while_simple_rnn_cell_2_27003_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_2/StatefulPartitionedCall/while/simple_rnn_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?+
?
while_body_29313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
6while_simple_rnn_cell_matmul_readvariableop_resource_0:
??F
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	?L
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
4while_simple_rnn_cell_matmul_readvariableop_resource:
??D
5while_simple_rnn_cell_biasadd_readvariableop_resource:	?J
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
????,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????t
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder(while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?6
?
simple_rnn_while_body_284092
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0U
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:
??Q
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	?W
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
??
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorS
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:
??O
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	?U
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
????7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
%simple_rnn/while/simple_rnn_cell/ReluRelu(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder3simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:???X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_4Identity3simple_rnn/while/simple_rnn_cell/Relu:activations:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"?
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"?
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
0__inference_module_wrapper_4_layer_call_fn_29240

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25330o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_26805

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?H
?
.module_wrapper_1_simple_rnn_1_while_body_27913X
Tmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_loop_counter^
Zmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_maximum_iterations3
/module_wrapper_1_simple_rnn_1_while_placeholder5
1module_wrapper_1_simple_rnn_1_while_placeholder_15
1module_wrapper_1_simple_rnn_1_while_placeholder_2W
Smodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_strided_slice_1_0?
?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0j
Vmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
??f
Wmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	?l
Xmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
??0
,module_wrapper_1_simple_rnn_1_while_identity2
.module_wrapper_1_simple_rnn_1_while_identity_12
.module_wrapper_1_simple_rnn_1_while_identity_22
.module_wrapper_1_simple_rnn_1_while_identity_32
.module_wrapper_1_simple_rnn_1_while_identity_4U
Qmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_strided_slice_1?
?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorh
Tmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:
??d
Umodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	?j
Vmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
????Lmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?Kmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?Mmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
Umodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Gmodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0/module_wrapper_1_simple_rnn_1_while_placeholder^module_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Kmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpVmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
<module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMulNmodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Smodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Lmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpWmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
=module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAddFmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Tmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpXmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
>module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul1module_wrapper_1_simple_rnn_1_while_placeholder_2Umodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/addAddV2Fmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:0Hmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
:module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/ReluRelu=module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
Hmodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1module_wrapper_1_simple_rnn_1_while_placeholder_1/module_wrapper_1_simple_rnn_1_while_placeholderHmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:???k
)module_wrapper_1/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
'module_wrapper_1/simple_rnn_1/while/addAddV2/module_wrapper_1_simple_rnn_1_while_placeholder2module_wrapper_1/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: m
+module_wrapper_1/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
)module_wrapper_1/simple_rnn_1/while/add_1AddV2Tmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_loop_counter4module_wrapper_1/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ?
,module_wrapper_1/simple_rnn_1/while/IdentityIdentity-module_wrapper_1/simple_rnn_1/while/add_1:z:0)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_1/simple_rnn_1/while/Identity_1IdentityZmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_maximum_iterations)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_1/simple_rnn_1/while/Identity_2Identity+module_wrapper_1/simple_rnn_1/while/add:z:0)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_1/simple_rnn_1/while/Identity_3IdentityXmodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_1/simple_rnn_1/while/Identity_4IdentityHmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:???????????
(module_wrapper_1/simple_rnn_1/while/NoOpNoOpM^module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpL^module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpN^module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,module_wrapper_1_simple_rnn_1_while_identity5module_wrapper_1/simple_rnn_1/while/Identity:output:0"i
.module_wrapper_1_simple_rnn_1_while_identity_17module_wrapper_1/simple_rnn_1/while/Identity_1:output:0"i
.module_wrapper_1_simple_rnn_1_while_identity_27module_wrapper_1/simple_rnn_1/while/Identity_2:output:0"i
.module_wrapper_1_simple_rnn_1_while_identity_37module_wrapper_1/simple_rnn_1/while/Identity_3:output:0"i
.module_wrapper_1_simple_rnn_1_while_identity_47module_wrapper_1/simple_rnn_1/while/Identity_4:output:0"?
Qmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_strided_slice_1Smodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_strided_slice_1_0"?
Umodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceWmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
Vmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceXmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
Tmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceVmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Lmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpLmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2?
Kmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpKmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2?
Mmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpMmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_29788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29788___redundant_placeholder03
/while_while_cond_29788___redundant_placeholder13
/while_while_cond_29788___redundant_placeholder23
/while_while_cond_29788___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25390

args_07
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0u
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?*
!__inference__traced_restore_30776
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: W
Cassignvariableop_5_module_wrapper_simple_rnn_simple_rnn_cell_kernel:
??a
Massignvariableop_6_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel:
??P
Aassignvariableop_7_module_wrapper_simple_rnn_simple_rnn_cell_bias:	?]
Iassignvariableop_8_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel:
??g
Sassignvariableop_9_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel:
??W
Hassignvariableop_10_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias:	?^
Jassignvariableop_11_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel:
??h
Tassignvariableop_12_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel:
??W
Hassignvariableop_13_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias:	?^
Jassignvariableop_14_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel:
??h
Tassignvariableop_15_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel:
??W
Hassignvariableop_16_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias:	?D
1assignvariableop_17_module_wrapper_4_dense_kernel:	?=
/assignvariableop_18_module_wrapper_4_dense_bias:#
assignvariableop_19_total: #
assignvariableop_20_count: _
Kassignvariableop_21_adam_module_wrapper_simple_rnn_simple_rnn_cell_kernel_m:
??i
Uassignvariableop_22_adam_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_m:
??X
Iassignvariableop_23_adam_module_wrapper_simple_rnn_simple_rnn_cell_bias_m:	?e
Qassignvariableop_24_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_m:
??o
[assignvariableop_25_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_m:
??^
Oassignvariableop_26_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_m:	?e
Qassignvariableop_27_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_m:
??o
[assignvariableop_28_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_m:
??^
Oassignvariableop_29_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_m:	?e
Qassignvariableop_30_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_m:
??o
[assignvariableop_31_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_m:
??^
Oassignvariableop_32_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_m:	?K
8assignvariableop_33_adam_module_wrapper_4_dense_kernel_m:	?D
6assignvariableop_34_adam_module_wrapper_4_dense_bias_m:_
Kassignvariableop_35_adam_module_wrapper_simple_rnn_simple_rnn_cell_kernel_v:
??i
Uassignvariableop_36_adam_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_v:
??X
Iassignvariableop_37_adam_module_wrapper_simple_rnn_simple_rnn_cell_bias_v:	?e
Qassignvariableop_38_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_v:
??o
[assignvariableop_39_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_v:
??^
Oassignvariableop_40_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_v:	?e
Qassignvariableop_41_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_v:
??o
[assignvariableop_42_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_v:
??^
Oassignvariableop_43_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_v:	?e
Qassignvariableop_44_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_v:
??o
[assignvariableop_45_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_v:
??^
Oassignvariableop_46_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_v:	?K
8assignvariableop_47_adam_module_wrapper_4_dense_kernel_v:	?D
6assignvariableop_48_adam_module_wrapper_4_dense_bias_v:
identity_50??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpCassignvariableop_5_module_wrapper_simple_rnn_simple_rnn_cell_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpMassignvariableop_6_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpAassignvariableop_7_module_wrapper_simple_rnn_simple_rnn_cell_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpIassignvariableop_8_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpSassignvariableop_9_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpHassignvariableop_10_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpJassignvariableop_11_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpTassignvariableop_12_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpHassignvariableop_13_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpJassignvariableop_14_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpTassignvariableop_15_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpHassignvariableop_16_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp1assignvariableop_17_module_wrapper_4_dense_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp/assignvariableop_18_module_wrapper_4_dense_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpKassignvariableop_21_adam_module_wrapper_simple_rnn_simple_rnn_cell_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpUassignvariableop_22_adam_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpIassignvariableop_23_adam_module_wrapper_simple_rnn_simple_rnn_cell_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpQassignvariableop_24_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp[assignvariableop_25_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpOassignvariableop_26_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpQassignvariableop_27_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp[assignvariableop_28_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpOassignvariableop_29_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpQassignvariableop_30_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp[assignvariableop_31_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpOassignvariableop_32_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp8assignvariableop_33_adam_module_wrapper_4_dense_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_module_wrapper_4_dense_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpKassignvariableop_35_adam_module_wrapper_simple_rnn_simple_rnn_cell_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpUassignvariableop_36_adam_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpIassignvariableop_37_adam_module_wrapper_simple_rnn_simple_rnn_cell_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpQassignvariableop_38_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp[assignvariableop_39_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpOassignvariableop_40_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOpQassignvariableop_41_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp[assignvariableop_42_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpOassignvariableop_43_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpQassignvariableop_44_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp[assignvariableop_45_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOpOassignvariableop_46_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp8assignvariableop_47_adam_module_wrapper_4_dense_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_module_wrapper_4_dense_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_50IdentityIdentity_49:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_50Identity_50:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
1__inference_simple_rnn_cell_3_layer_call_fn_30401

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_27097p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
*__inference_simple_rnn_layer_call_fn_29260
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_simple_rnn_layer_call_and_return_conditional_losses_26297}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?

?
1__inference_simple_rnn_cell_1_layer_call_fn_30277

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_26513p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?

?
simple_rnn_while_cond_283002
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1I
Esimple_rnn_while_simple_rnn_while_cond_28300___redundant_placeholder0I
Esimple_rnn_while_simple_rnn_while_cond_28300___redundant_placeholder1I
Esimple_rnn_while_simple_rnn_while_cond_28300___redundant_placeholder2I
Esimple_rnn_while_simple_rnn_while_cond_28300___redundant_placeholder3
simple_rnn_while_identity
?
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?I
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25080

args_0Q
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:
??M
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	?S
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?simple_rnn_1/whileH
simple_rnn_1/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_1/transpose	Transposeargs_0$simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_1/simple_rnn_cell_1/ReluRelu&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_1_while_body_25014*)
cond!R
simple_rnn_1_while_cond_25013*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????p
IdentityIdentitysimple_rnn_1/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
*__inference_sequential_layer_call_fn_28259

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
??
	unknown_9:	?

unknown_10:
??

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
simple_rnn_2_while_cond_255836
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_28
4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1M
Isimple_rnn_2_while_simple_rnn_2_while_cond_25583___redundant_placeholder0M
Isimple_rnn_2_while_simple_rnn_2_while_cond_25583___redundant_placeholder1M
Isimple_rnn_2_while_simple_rnn_2_while_cond_25583___redundant_placeholder2M
Isimple_rnn_2_while_simple_rnn_2_while_cond_25583___redundant_placeholder3
simple_rnn_2_while_identity
?
simple_rnn_2/while/LessLesssimple_rnn_2_while_placeholder4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
1__inference_simple_rnn_cell_3_layer_call_fn_30415

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_27217p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?3
?
E__inference_simple_rnn_layer_call_and_return_conditional_losses_26456

inputs)
simple_rnn_cell_26381:
??$
simple_rnn_cell_26383:	?)
simple_rnn_cell_26385:
??
identity??'simple_rnn_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_26381simple_rnn_cell_26383simple_rnn_cell_26385*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_26341n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_26381simple_rnn_cell_26383simple_rnn_cell_26385*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_26393*
condR
while_cond_26392*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?,
?
while_body_29897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_2_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_2_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_2_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_2/MatMul/ReadVariableOp?/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_2/BiasAddBiasAdd(while/simple_rnn_cell_2/MatMul:product:06while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_2/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_2/addAddV2(while/simple_rnn_cell_2/BiasAdd:output:0*while/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_2/ReluReluwhile/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_2/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity*while/simple_rnn_cell_2/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_2/MatMul/ReadVariableOp0^while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_2_biasadd_readvariableop_resource9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_2_matmul_readvariableop_resource8while_simple_rnn_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_2/MatMul/ReadVariableOp-while/simple_rnn_cell_2/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_29312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29312___redundant_placeholder03
/while_while_cond_29312___redundant_placeholder13
/while_while_cond_29312___redundant_placeholder23
/while_while_cond_29312___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
.module_wrapper_3_simple_rnn_3_while_cond_27694X
Tmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_loop_counter^
Zmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_maximum_iterations3
/module_wrapper_3_simple_rnn_3_while_placeholder5
1module_wrapper_3_simple_rnn_3_while_placeholder_15
1module_wrapper_3_simple_rnn_3_while_placeholder_2Z
Vmodule_wrapper_3_simple_rnn_3_while_less_module_wrapper_3_simple_rnn_3_strided_slice_1o
kmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_cond_27694___redundant_placeholder0o
kmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_cond_27694___redundant_placeholder1o
kmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_cond_27694___redundant_placeholder2o
kmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_cond_27694___redundant_placeholder30
,module_wrapper_3_simple_rnn_3_while_identity
?
(module_wrapper_3/simple_rnn_3/while/LessLess/module_wrapper_3_simple_rnn_3_while_placeholderVmodule_wrapper_3_simple_rnn_3_while_less_module_wrapper_3_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: ?
,module_wrapper_3/simple_rnn_3/while/IdentityIdentity,module_wrapper_3/simple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "e
,module_wrapper_3_simple_rnn_3_while_identity5module_wrapper_3/simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?w
? 
__inference__traced_save_30619
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopO
Ksavev2_module_wrapper_simple_rnn_simple_rnn_cell_kernel_read_readvariableopY
Usavev2_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableopM
Isavev2_module_wrapper_simple_rnn_simple_rnn_cell_bias_read_readvariableopU
Qsavev2_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableop_
[savev2_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableopS
Osavev2_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableopU
Qsavev2_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_read_readvariableop_
[savev2_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_read_readvariableopS
Osavev2_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_read_readvariableopU
Qsavev2_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_read_readvariableop_
[savev2_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_read_readvariableopS
Osavev2_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_read_readvariableop<
8savev2_module_wrapper_4_dense_kernel_read_readvariableop:
6savev2_module_wrapper_4_dense_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopV
Rsavev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_kernel_m_read_readvariableop`
\savev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_m_read_readvariableopT
Psavev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_bias_m_read_readvariableop\
Xsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_m_read_readvariableopf
bsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_m_read_readvariableopZ
Vsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_m_read_readvariableop\
Xsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_m_read_readvariableopf
bsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_m_read_readvariableopZ
Vsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_m_read_readvariableop\
Xsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_m_read_readvariableopf
bsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_m_read_readvariableopZ
Vsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_m_read_readvariableopC
?savev2_adam_module_wrapper_4_dense_kernel_m_read_readvariableopA
=savev2_adam_module_wrapper_4_dense_bias_m_read_readvariableopV
Rsavev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_kernel_v_read_readvariableop`
\savev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_v_read_readvariableopT
Psavev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_bias_v_read_readvariableop\
Xsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_v_read_readvariableopf
bsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_v_read_readvariableopZ
Vsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_v_read_readvariableop\
Xsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_v_read_readvariableopf
bsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_v_read_readvariableopZ
Vsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_v_read_readvariableop\
Xsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_v_read_readvariableopf
bsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_v_read_readvariableopZ
Vsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_v_read_readvariableopC
?savev2_adam_module_wrapper_4_dense_kernel_v_read_readvariableopA
=savev2_adam_module_wrapper_4_dense_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopKsavev2_module_wrapper_simple_rnn_simple_rnn_cell_kernel_read_readvariableopUsavev2_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableopIsavev2_module_wrapper_simple_rnn_simple_rnn_cell_bias_read_readvariableopQsavev2_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableop[savev2_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableopOsavev2_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableopQsavev2_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_read_readvariableop[savev2_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_read_readvariableopOsavev2_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_read_readvariableopQsavev2_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_read_readvariableop[savev2_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_read_readvariableopOsavev2_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_read_readvariableop8savev2_module_wrapper_4_dense_kernel_read_readvariableop6savev2_module_wrapper_4_dense_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopRsavev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_kernel_m_read_readvariableop\savev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_m_read_readvariableopPsavev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_bias_m_read_readvariableopXsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_m_read_readvariableopbsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_m_read_readvariableopVsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_m_read_readvariableopXsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_m_read_readvariableopbsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_m_read_readvariableopVsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_m_read_readvariableopXsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_m_read_readvariableopbsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_m_read_readvariableopVsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_m_read_readvariableop?savev2_adam_module_wrapper_4_dense_kernel_m_read_readvariableop=savev2_adam_module_wrapper_4_dense_bias_m_read_readvariableopRsavev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_kernel_v_read_readvariableop\savev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_recurrent_kernel_v_read_readvariableopPsavev2_adam_module_wrapper_simple_rnn_simple_rnn_cell_bias_v_read_readvariableopXsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_kernel_v_read_readvariableopbsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_v_read_readvariableopVsavev2_adam_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_bias_v_read_readvariableopXsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_kernel_v_read_readvariableopbsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_v_read_readvariableopVsavev2_adam_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_bias_v_read_readvariableopXsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_kernel_v_read_readvariableopbsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_v_read_readvariableopVsavev2_adam_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_bias_v_read_readvariableop?savev2_adam_module_wrapper_4_dense_kernel_v_read_readvariableop=savev2_adam_module_wrapper_4_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :
??:
??:?:
??:
??:?:
??:
??:?:
??:
??:?:	?:: : :
??:
??:?:
??:
??:?:
??:
??:?:
??:
??:?:	?::
??:
??:?:
??:
??:?:
??:
??:?:
??:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:&
"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:& "
 
_output_shapes
:
??:!!

_output_shapes	
:?:%"!

_output_shapes
:	?: #

_output_shapes
::&$"
 
_output_shapes
:
??:&%"
 
_output_shapes
:
??:!&

_output_shapes	
:?:&'"
 
_output_shapes
:
??:&("
 
_output_shapes
:
??:!)

_output_shapes	
:?:&*"
 
_output_shapes
:
??:&+"
 
_output_shapes
:
??:!,

_output_shapes	
:?:&-"
 
_output_shapes
:
??:&."
 
_output_shapes
:
??:!/

_output_shapes	
:?:%0!

_output_shapes
:	?: 1

_output_shapes
::2

_output_shapes
: 
?

?
simple_rnn_3_while_cond_290146
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_28
4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1M
Isimple_rnn_3_while_simple_rnn_3_while_cond_29014___redundant_placeholder0M
Isimple_rnn_3_while_simple_rnn_3_while_cond_29014___redundant_placeholder1M
Isimple_rnn_3_while_simple_rnn_3_while_cond_29014___redundant_placeholder2M
Isimple_rnn_3_while_simple_rnn_3_while_cond_29014___redundant_placeholder3
simple_rnn_3_while_identity
?
simple_rnn_3/while/LessLesssimple_rnn_3_while_placeholder4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?8
?
simple_rnn_3_while_body_291236
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_25
1simple_rnn_3_while_simple_rnn_3_strided_slice_1_0q
msimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
??
simple_rnn_3_while_identity!
simple_rnn_3_while_identity_1!
simple_rnn_3_while_identity_2!
simple_rnn_3_while_identity_3!
simple_rnn_3_while_identity_43
/simple_rnn_3_while_simple_rnn_3_strided_slice_1o
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:
??S
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:	?Y
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:
????;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp?:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp?<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp?
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_3_while_placeholderMsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_3_while_placeholder_2Dsimple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_3/while/simple_rnn_cell_3/addAddV25simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_3/while/simple_rnn_cell_3/ReluRelu,simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_3_while_placeholder_1simple_rnn_3_while_placeholder7simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_3/while/addAddV2simple_rnn_3_while_placeholder!simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_3/while/add_1AddV22simple_rnn_3_while_simple_rnn_3_while_loop_counter#simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/add_1:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_1Identity8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_2Identitysimple_rnn_3/while/add:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_3IdentityGsimple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_4Identity7simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0^simple_rnn_3/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_3/while/NoOpNoOp<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0"G
simple_rnn_3_while_identity_1&simple_rnn_3/while/Identity_1:output:0"G
simple_rnn_3_while_identity_2&simple_rnn_3/while/Identity_2:output:0"G
simple_rnn_3_while_identity_3&simple_rnn_3/while/Identity_3:output:0"G
simple_rnn_3_while_identity_4&simple_rnn_3/while/Identity_4:output:0"d
/simple_rnn_3_while_simple_rnn_3_strided_slice_11simple_rnn_3_while_simple_rnn_3_strided_slice_1_0"?
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"?
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"?
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"?
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensormsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?	
9sequential_module_wrapper_3_simple_rnn_3_while_cond_24776n
jsequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_loop_countert
psequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_maximum_iterations>
:sequential_module_wrapper_3_simple_rnn_3_while_placeholder@
<sequential_module_wrapper_3_simple_rnn_3_while_placeholder_1@
<sequential_module_wrapper_3_simple_rnn_3_while_placeholder_2p
lsequential_module_wrapper_3_simple_rnn_3_while_less_sequential_module_wrapper_3_simple_rnn_3_strided_slice_1?
?sequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_cond_24776___redundant_placeholder0?
?sequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_cond_24776___redundant_placeholder1?
?sequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_cond_24776___redundant_placeholder2?
?sequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_cond_24776___redundant_placeholder3;
7sequential_module_wrapper_3_simple_rnn_3_while_identity
?
3sequential/module_wrapper_3/simple_rnn_3/while/LessLess:sequential_module_wrapper_3_simple_rnn_3_while_placeholderlsequential_module_wrapper_3_simple_rnn_3_while_less_sequential_module_wrapper_3_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: ?
7sequential/module_wrapper_3/simple_rnn_3/while/IdentityIdentity7sequential/module_wrapper_3/simple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "{
7sequential_module_wrapper_3_simple_rnn_3_while_identity@sequential/module_wrapper_3/simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
*__inference_sequential_layer_call_fn_28226

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
??
	unknown_9:	?

unknown_10:
??

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?=
?
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_29617
inputs_0D
0simple_rnn_cell_1_matmul_readvariableop_resource:
??@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_1/BiasAdd/ReadVariableOp?'simple_rnn_cell_1/MatMul/ReadVariableOp?)simple_rnn_cell_1/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_1/ReluRelusimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29551*
condR
while_cond_29550*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?I
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25650

args_0Q
=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource:
??M
>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:	?S
?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp?4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp?6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp?simple_rnn_2/whileH
simple_rnn_2/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_sliceStridedSlicesimple_rnn_2/Shape:output:0)simple_rnn_2/strided_slice/stack:output:0+simple_rnn_2/strided_slice/stack_1:output:0+simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_2/zeros/packedPack#simple_rnn_2/strided_slice:output:0$simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_2/zerosFill"simple_rnn_2/zeros/packed:output:0!simple_rnn_2/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_2/transpose	Transposeargs_0$simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_2/Shape_1Shapesimple_rnn_2/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_1StridedSlicesimple_rnn_2/Shape_1:output:0+simple_rnn_2/strided_slice_1/stack:output:0-simple_rnn_2/strided_slice_1/stack_1:output:0-simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_2/TensorArrayV2TensorListReserve1simple_rnn_2/TensorArrayV2/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_2/transpose:y:0Ksimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_2StridedSlicesimple_rnn_2/transpose:y:0+simple_rnn_2/strided_slice_2/stack:output:0-simple_rnn_2/strided_slice_2/stack_1:output:0-simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_2/simple_rnn_cell_2/MatMulMatMul%simple_rnn_2/strided_slice_2:output:0<simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAdd/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0=simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMulsimple_rnn_2/zeros:output:0>simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_2/simple_rnn_cell_2/addAddV2/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:01simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_2/simple_rnn_cell_2/ReluRelu&simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_2/TensorArrayV2_1TensorListReserve3simple_rnn_2/TensorArrayV2_1/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_2/whileWhile(simple_rnn_2/while/loop_counter:output:0.simple_rnn_2/while/maximum_iterations:output:0simple_rnn_2/time:output:0%simple_rnn_2/TensorArrayV2_1:handle:0simple_rnn_2/zeros:output:0%simple_rnn_2/strided_slice_1:output:0Dsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_2_while_body_25584*)
cond!R
simple_rnn_2_while_cond_25583*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_2/while:output:3Fsimple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_3StridedSlice8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_2/strided_slice_3/stack:output:0-simple_rnn_2/strided_slice_3/stack_1:output:0-simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_2/transpose_1	Transpose8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????p
IdentityIdentitysimple_rnn_2/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5^simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp7^simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp^simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2l
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2p
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2(
simple_rnn_2/whilesimple_rnn_2/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
simple_rnn_while_cond_248972
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1I
Esimple_rnn_while_simple_rnn_while_cond_24897___redundant_placeholder0I
Esimple_rnn_while_simple_rnn_while_cond_24897___redundant_placeholder1I
Esimple_rnn_while_simple_rnn_while_cond_24897___redundant_placeholder2I
Esimple_rnn_while_simple_rnn_while_cond_24897___redundant_placeholder3
simple_rnn_while_identity
?
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_30026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_30026___redundant_placeholder03
/while_while_cond_30026___redundant_placeholder13
/while_while_cond_30026___redundant_placeholder23
/while_while_cond_30026___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?R
?
9sequential_module_wrapper_3_simple_rnn_3_while_body_24777n
jsequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_loop_countert
psequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_maximum_iterations>
:sequential_module_wrapper_3_simple_rnn_3_while_placeholder@
<sequential_module_wrapper_3_simple_rnn_3_while_placeholder_1@
<sequential_module_wrapper_3_simple_rnn_3_while_placeholder_2m
isequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_strided_slice_1_0?
?sequential_module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0u
asequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:
??q
bsequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:	?w
csequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
??;
7sequential_module_wrapper_3_simple_rnn_3_while_identity=
9sequential_module_wrapper_3_simple_rnn_3_while_identity_1=
9sequential_module_wrapper_3_simple_rnn_3_while_identity_2=
9sequential_module_wrapper_3_simple_rnn_3_while_identity_3=
9sequential_module_wrapper_3_simple_rnn_3_while_identity_4k
gsequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_strided_slice_1?
?sequential_module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensors
_sequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:
??o
`sequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:	?u
asequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:
????Wsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp?Vsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp?Xsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp?
`sequential/module_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Rsequential/module_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0:sequential_module_wrapper_3_simple_rnn_3_while_placeholderisequential/module_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Vsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpasequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
Gsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMulYsequential/module_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0^sequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Wsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpbsequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
Hsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAddQsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0_sequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Xsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpcsequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
Isequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul<sequential_module_wrapper_3_simple_rnn_3_while_placeholder_2`sequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Dsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/addAddV2Qsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:0Ssequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Esequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/ReluReluHsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
Ssequential/module_wrapper_3/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem<sequential_module_wrapper_3_simple_rnn_3_while_placeholder_1:sequential_module_wrapper_3_simple_rnn_3_while_placeholderSsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0*
_output_shapes
: *
element_dtype0:???v
4sequential/module_wrapper_3/simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
2sequential/module_wrapper_3/simple_rnn_3/while/addAddV2:sequential_module_wrapper_3_simple_rnn_3_while_placeholder=sequential/module_wrapper_3/simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: x
6sequential/module_wrapper_3/simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
4sequential/module_wrapper_3/simple_rnn_3/while/add_1AddV2jsequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_loop_counter?sequential/module_wrapper_3/simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: ?
7sequential/module_wrapper_3/simple_rnn_3/while/IdentityIdentity8sequential/module_wrapper_3/simple_rnn_3/while/add_1:z:04^sequential/module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_3/simple_rnn_3/while/Identity_1Identitypsequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_while_maximum_iterations4^sequential/module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_3/simple_rnn_3/while/Identity_2Identity6sequential/module_wrapper_3/simple_rnn_3/while/add:z:04^sequential/module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_3/simple_rnn_3/while/Identity_3Identitycsequential/module_wrapper_3/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^sequential/module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_3/simple_rnn_3/while/Identity_4IdentitySsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:04^sequential/module_wrapper_3/simple_rnn_3/while/NoOp*
T0*(
_output_shapes
:???????????
3sequential/module_wrapper_3/simple_rnn_3/while/NoOpNoOpX^sequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpW^sequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpY^sequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "{
7sequential_module_wrapper_3_simple_rnn_3_while_identity@sequential/module_wrapper_3/simple_rnn_3/while/Identity:output:0"
9sequential_module_wrapper_3_simple_rnn_3_while_identity_1Bsequential/module_wrapper_3/simple_rnn_3/while/Identity_1:output:0"
9sequential_module_wrapper_3_simple_rnn_3_while_identity_2Bsequential/module_wrapper_3/simple_rnn_3/while/Identity_2:output:0"
9sequential_module_wrapper_3_simple_rnn_3_while_identity_3Bsequential/module_wrapper_3/simple_rnn_3/while/Identity_3:output:0"
9sequential_module_wrapper_3_simple_rnn_3_while_identity_4Bsequential/module_wrapper_3/simple_rnn_3/while/Identity_4:output:0"?
gsequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_strided_slice_1isequential_module_wrapper_3_simple_rnn_3_while_sequential_module_wrapper_3_simple_rnn_3_strided_slice_1_0"?
`sequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourcebsequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"?
asequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourcecsequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"?
_sequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceasequential_module_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"?
?sequential_module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor?sequential_module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Wsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpWsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2?
Vsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpVsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2?
Xsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpXsequential/module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_29658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29658___redundant_placeholder03
/while_while_cond_29658___redundant_placeholder13
/while_while_cond_29658___redundant_placeholder23
/while_while_cond_29658___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_26976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_26976___redundant_placeholder03
/while_while_cond_26976___redundant_placeholder13
/while_while_cond_26976___redundant_placeholder23
/while_while_cond_26976___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_26817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_26817___redundant_placeholder03
/while_while_cond_26817___redundant_placeholder13
/while_while_cond_26817___redundant_placeholder23
/while_while_cond_26817___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
simple_rnn_1_while_cond_257146
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_25714___redundant_placeholder0M
Isimple_rnn_1_while_simple_rnn_1_while_cond_25714___redundant_placeholder1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_25714___redundant_placeholder2M
Isimple_rnn_1_while_simple_rnn_1_while_cond_25714___redundant_placeholder3
simple_rnn_1_while_identity
?
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
,__inference_simple_rnn_1_layer_call_fn_29509
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_26748}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?4
?
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_27040

inputs+
simple_rnn_cell_2_26965:
??&
simple_rnn_cell_2_26967:	?+
simple_rnn_cell_2_26969:
??
identity??)simple_rnn_cell_2/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
)simple_rnn_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_2_26965simple_rnn_cell_2_26967simple_rnn_cell_2_26969*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_26925n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_2_26965simple_rnn_cell_2_26967simple_rnn_cell_2_26969*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_26977*
condR
while_cond_26976*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????z
NoOpNoOp*^simple_rnn_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2V
)simple_rnn_cell_2/StatefulPartitionedCall)simple_rnn_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
,__inference_simple_rnn_2_layer_call_fn_29736
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_26881}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?R
?
9sequential_module_wrapper_1_simple_rnn_1_while_body_24569n
jsequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_loop_countert
psequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_maximum_iterations>
:sequential_module_wrapper_1_simple_rnn_1_while_placeholder@
<sequential_module_wrapper_1_simple_rnn_1_while_placeholder_1@
<sequential_module_wrapper_1_simple_rnn_1_while_placeholder_2m
isequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_strided_slice_1_0?
?sequential_module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0u
asequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
??q
bsequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	?w
csequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
??;
7sequential_module_wrapper_1_simple_rnn_1_while_identity=
9sequential_module_wrapper_1_simple_rnn_1_while_identity_1=
9sequential_module_wrapper_1_simple_rnn_1_while_identity_2=
9sequential_module_wrapper_1_simple_rnn_1_while_identity_3=
9sequential_module_wrapper_1_simple_rnn_1_while_identity_4k
gsequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_strided_slice_1?
?sequential_module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensors
_sequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:
??o
`sequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	?u
asequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
????Wsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?Vsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?Xsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
`sequential/module_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Rsequential/module_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0:sequential_module_wrapper_1_simple_rnn_1_while_placeholderisequential/module_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Vsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpasequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
Gsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMulYsequential/module_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0^sequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Wsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpbsequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
Hsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAddQsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0_sequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Xsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpcsequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
Isequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul<sequential_module_wrapper_1_simple_rnn_1_while_placeholder_2`sequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Dsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/addAddV2Qsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:0Ssequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Esequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/ReluReluHsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
Ssequential/module_wrapper_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem<sequential_module_wrapper_1_simple_rnn_1_while_placeholder_1:sequential_module_wrapper_1_simple_rnn_1_while_placeholderSsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:???v
4sequential/module_wrapper_1/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
2sequential/module_wrapper_1/simple_rnn_1/while/addAddV2:sequential_module_wrapper_1_simple_rnn_1_while_placeholder=sequential/module_wrapper_1/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: x
6sequential/module_wrapper_1/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
4sequential/module_wrapper_1/simple_rnn_1/while/add_1AddV2jsequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_loop_counter?sequential/module_wrapper_1/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ?
7sequential/module_wrapper_1/simple_rnn_1/while/IdentityIdentity8sequential/module_wrapper_1/simple_rnn_1/while/add_1:z:04^sequential/module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_1/simple_rnn_1/while/Identity_1Identitypsequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_maximum_iterations4^sequential/module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_1/simple_rnn_1/while/Identity_2Identity6sequential/module_wrapper_1/simple_rnn_1/while/add:z:04^sequential/module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_1/simple_rnn_1/while/Identity_3Identitycsequential/module_wrapper_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^sequential/module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_1/simple_rnn_1/while/Identity_4IdentitySsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:04^sequential/module_wrapper_1/simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:???????????
3sequential/module_wrapper_1/simple_rnn_1/while/NoOpNoOpX^sequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpW^sequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpY^sequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "{
7sequential_module_wrapper_1_simple_rnn_1_while_identity@sequential/module_wrapper_1/simple_rnn_1/while/Identity:output:0"
9sequential_module_wrapper_1_simple_rnn_1_while_identity_1Bsequential/module_wrapper_1/simple_rnn_1/while/Identity_1:output:0"
9sequential_module_wrapper_1_simple_rnn_1_while_identity_2Bsequential/module_wrapper_1/simple_rnn_1/while/Identity_2:output:0"
9sequential_module_wrapper_1_simple_rnn_1_while_identity_3Bsequential/module_wrapper_1/simple_rnn_1/while/Identity_3:output:0"
9sequential_module_wrapper_1_simple_rnn_1_while_identity_4Bsequential/module_wrapper_1/simple_rnn_1/while/Identity_4:output:0"?
gsequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_strided_slice_1isequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_strided_slice_1_0"?
`sequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourcebsequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
asequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourcecsequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
_sequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceasequential_module_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
?sequential_module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor?sequential_module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Wsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpWsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2?
Vsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpVsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2?
Xsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpXsequential/module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?I
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_28713

args_0Q
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:
??M
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	?S
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?simple_rnn_1/whileH
simple_rnn_1/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_1/transpose	Transposeargs_0$simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_1/simple_rnn_cell_1/ReluRelu&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_1_while_body_28647*)
cond!R
simple_rnn_1_while_cond_28646*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????p
IdentityIdentitysimple_rnn_1/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
1__inference_simple_rnn_cell_1_layer_call_fn_30291

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_26633p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?I
?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_29081

args_0Q
=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:
??M
>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:	?S
?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp?4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp?6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp?simple_rnn_3/whileH
simple_rnn_3/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_sliceStridedSlicesimple_rnn_3/Shape:output:0)simple_rnn_3/strided_slice/stack:output:0+simple_rnn_3/strided_slice/stack_1:output:0+simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_3/zeros/packedPack#simple_rnn_3/strided_slice:output:0$simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_3/zerosFill"simple_rnn_3/zeros/packed:output:0!simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_3/transpose	Transposeargs_0$simple_rnn_3/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_3/Shape_1Shapesimple_rnn_3/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_1StridedSlicesimple_rnn_3/Shape_1:output:0+simple_rnn_3/strided_slice_1/stack:output:0-simple_rnn_3/strided_slice_1/stack_1:output:0-simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_3/TensorArrayV2TensorListReserve1simple_rnn_3/TensorArrayV2/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_3/transpose:y:0Ksimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_2StridedSlicesimple_rnn_3/transpose:y:0+simple_rnn_3/strided_slice_2/stack:output:0-simple_rnn_3/strided_slice_2/stack_1:output:0-simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_3/simple_rnn_cell_3/MatMulMatMul%simple_rnn_3/strided_slice_2:output:0<simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0=simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMulsimple_rnn_3/zeros:output:0>simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_3/simple_rnn_cell_3/addAddV2/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_3/simple_rnn_cell_3/ReluRelu&simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_3/TensorArrayV2_1TensorListReserve3simple_rnn_3/TensorArrayV2_1/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_3/whileWhile(simple_rnn_3/while/loop_counter:output:0.simple_rnn_3/while/maximum_iterations:output:0simple_rnn_3/time:output:0%simple_rnn_3/TensorArrayV2_1:handle:0simple_rnn_3/zeros:output:0%simple_rnn_3/strided_slice_1:output:0Dsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_3_while_body_29015*)
cond!R
simple_rnn_3_while_cond_29014*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_3/while:output:3Fsimple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_3StridedSlice8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_3/strided_slice_3/stack:output:0-simple_rnn_3/strided_slice_3/stack_1:output:0-simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_3/transpose_1	Transpose8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????u
IdentityIdentity%simple_rnn_3/strided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp^simple_rnn_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2p
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_3/whilesimple_rnn_3/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
simple_rnn_2_while_cond_251296
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_28
4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1M
Isimple_rnn_2_while_simple_rnn_2_while_cond_25129___redundant_placeholder0M
Isimple_rnn_2_while_simple_rnn_2_while_cond_25129___redundant_placeholder1M
Isimple_rnn_2_while_simple_rnn_2_while_cond_25129___redundant_placeholder2M
Isimple_rnn_2_while_simple_rnn_2_while_cond_25129___redundant_placeholder3
simple_rnn_2_while_identity
?
simple_rnn_2/while/LessLesssimple_rnn_2_while_placeholder4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
? 
?
while_body_27110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
while_simple_rnn_cell_3_27132_0:
??.
while_simple_rnn_cell_3_27134_0:	?3
while_simple_rnn_cell_3_27136_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_3_27132:
??,
while_simple_rnn_cell_3_27134:	?1
while_simple_rnn_cell_3_27136:
????/while/simple_rnn_cell_3/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_3_27132_0while_simple_rnn_cell_3_27134_0while_simple_rnn_cell_3_27136_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_27097?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_3_27132while_simple_rnn_cell_3_27132_0"@
while_simple_rnn_cell_3_27134while_simple_rnn_cell_3_27134_0"@
while_simple_rnn_cell_3_27136while_simple_rnn_cell_3_27136_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
.module_wrapper_2_simple_rnn_2_while_cond_28016X
Tmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_loop_counter^
Zmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_maximum_iterations3
/module_wrapper_2_simple_rnn_2_while_placeholder5
1module_wrapper_2_simple_rnn_2_while_placeholder_15
1module_wrapper_2_simple_rnn_2_while_placeholder_2Z
Vmodule_wrapper_2_simple_rnn_2_while_less_module_wrapper_2_simple_rnn_2_strided_slice_1o
kmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_cond_28016___redundant_placeholder0o
kmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_cond_28016___redundant_placeholder1o
kmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_cond_28016___redundant_placeholder2o
kmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_cond_28016___redundant_placeholder30
,module_wrapper_2_simple_rnn_2_while_identity
?
(module_wrapper_2/simple_rnn_2/while/LessLess/module_wrapper_2_simple_rnn_2_while_placeholderVmodule_wrapper_2_simple_rnn_2_while_less_module_wrapper_2_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: ?
,module_wrapper_2/simple_rnn_2/while/IdentityIdentity,module_wrapper_2/simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "e
,module_wrapper_2_simple_rnn_2_while_identity5module_wrapper_2/simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
? 
?
while_body_27269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
while_simple_rnn_cell_3_27291_0:
??.
while_simple_rnn_cell_3_27293_0:	?3
while_simple_rnn_cell_3_27295_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_3_27291:
??,
while_simple_rnn_cell_3_27293:	?1
while_simple_rnn_cell_3_27295:
????/while/simple_rnn_cell_3/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_3_27291_0while_simple_rnn_cell_3_27293_0while_simple_rnn_cell_3_27295_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_27217?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_3_27291while_simple_rnn_cell_3_27291_0"@
while_simple_rnn_cell_3_27293while_simple_rnn_cell_3_27293_0"@
while_simple_rnn_cell_3_27295while_simple_rnn_cell_3_27295_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_26525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_26525___redundant_placeholder03
/while_while_cond_26525___redundant_placeholder13
/while_while_cond_26525___redundant_placeholder23
/while_while_cond_26525___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_26221

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?I
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_28843

args_0Q
=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource:
??M
>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:	?S
?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp?4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp?6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp?simple_rnn_2/whileH
simple_rnn_2/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_sliceStridedSlicesimple_rnn_2/Shape:output:0)simple_rnn_2/strided_slice/stack:output:0+simple_rnn_2/strided_slice/stack_1:output:0+simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_2/zeros/packedPack#simple_rnn_2/strided_slice:output:0$simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_2/zerosFill"simple_rnn_2/zeros/packed:output:0!simple_rnn_2/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_2/transpose	Transposeargs_0$simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_2/Shape_1Shapesimple_rnn_2/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_1StridedSlicesimple_rnn_2/Shape_1:output:0+simple_rnn_2/strided_slice_1/stack:output:0-simple_rnn_2/strided_slice_1/stack_1:output:0-simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_2/TensorArrayV2TensorListReserve1simple_rnn_2/TensorArrayV2/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_2/transpose:y:0Ksimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_2StridedSlicesimple_rnn_2/transpose:y:0+simple_rnn_2/strided_slice_2/stack:output:0-simple_rnn_2/strided_slice_2/stack_1:output:0-simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_2/simple_rnn_cell_2/MatMulMatMul%simple_rnn_2/strided_slice_2:output:0<simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAdd/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0=simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMulsimple_rnn_2/zeros:output:0>simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_2/simple_rnn_cell_2/addAddV2/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:01simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_2/simple_rnn_cell_2/ReluRelu&simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_2/TensorArrayV2_1TensorListReserve3simple_rnn_2/TensorArrayV2_1/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_2/whileWhile(simple_rnn_2/while/loop_counter:output:0.simple_rnn_2/while/maximum_iterations:output:0simple_rnn_2/time:output:0%simple_rnn_2/TensorArrayV2_1:handle:0simple_rnn_2/zeros:output:0%simple_rnn_2/strided_slice_1:output:0Dsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_2_while_body_28777*)
cond!R
simple_rnn_2_while_cond_28776*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_2/while:output:3Fsimple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_3StridedSlice8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_2/strided_slice_3/stack:output:0-simple_rnn_2/strided_slice_3/stack_1:output:0-simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_2/transpose_1	Transpose8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????p
IdentityIdentitysimple_rnn_2/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5^simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp7^simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp^simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2l
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2p
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2(
simple_rnn_2/whilesimple_rnn_2/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?8
?
simple_rnn_1_while_body_286476
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
??
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:
??S
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	?Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
????;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_1/while/simple_rnn_cell_1/ReluRelu,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder7simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_4Identity7simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0^simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"?
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?N
?
5sequential_module_wrapper_simple_rnn_while_body_24465f
bsequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_loop_counterl
hsequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_maximum_iterations:
6sequential_module_wrapper_simple_rnn_while_placeholder<
8sequential_module_wrapper_simple_rnn_while_placeholder_1<
8sequential_module_wrapper_simple_rnn_while_placeholder_2e
asequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_strided_slice_1_0?
?sequential_module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0o
[sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:
??k
\sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	?q
]sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
??7
3sequential_module_wrapper_simple_rnn_while_identity9
5sequential_module_wrapper_simple_rnn_while_identity_19
5sequential_module_wrapper_simple_rnn_while_identity_29
5sequential_module_wrapper_simple_rnn_while_identity_39
5sequential_module_wrapper_simple_rnn_while_identity_4c
_sequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_strided_slice_1?
?sequential_module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensorm
Ysequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:
??i
Zsequential_module_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	?o
[sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
????Qsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?Psequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?Rsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
\sequential/module_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Nsequential/module_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor_06sequential_module_wrapper_simple_rnn_while_placeholderesequential/module_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Psequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp[sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
Asequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMulMatMulUsequential/module_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Xsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Qsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp\sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
Bsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAddBiasAddKsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul:product:0Ysequential/module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Rsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp]sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
Csequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul8sequential_module_wrapper_simple_rnn_while_placeholder_2Zsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
>sequential/module_wrapper/simple_rnn/while/simple_rnn_cell/addAddV2Ksequential/module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0Msequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential/module_wrapper/simple_rnn/while/simple_rnn_cell/ReluReluBsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
Osequential/module_wrapper/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem8sequential_module_wrapper_simple_rnn_while_placeholder_16sequential_module_wrapper_simple_rnn_while_placeholderMsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:???r
0sequential/module_wrapper/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential/module_wrapper/simple_rnn/while/addAddV26sequential_module_wrapper_simple_rnn_while_placeholder9sequential/module_wrapper/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: t
2sequential/module_wrapper/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential/module_wrapper/simple_rnn/while/add_1AddV2bsequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_loop_counter;sequential/module_wrapper/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: ?
3sequential/module_wrapper/simple_rnn/while/IdentityIdentity4sequential/module_wrapper/simple_rnn/while/add_1:z:00^sequential/module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
5sequential/module_wrapper/simple_rnn/while/Identity_1Identityhsequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_maximum_iterations0^sequential/module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
5sequential/module_wrapper/simple_rnn/while/Identity_2Identity2sequential/module_wrapper/simple_rnn/while/add:z:00^sequential/module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
5sequential/module_wrapper/simple_rnn/while/Identity_3Identity_sequential/module_wrapper/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^sequential/module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
5sequential/module_wrapper/simple_rnn/while/Identity_4IdentityMsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/Relu:activations:00^sequential/module_wrapper/simple_rnn/while/NoOp*
T0*(
_output_shapes
:???????????
/sequential/module_wrapper/simple_rnn/while/NoOpNoOpR^sequential/module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpQ^sequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpS^sequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "s
3sequential_module_wrapper_simple_rnn_while_identity<sequential/module_wrapper/simple_rnn/while/Identity:output:0"w
5sequential_module_wrapper_simple_rnn_while_identity_1>sequential/module_wrapper/simple_rnn/while/Identity_1:output:0"w
5sequential_module_wrapper_simple_rnn_while_identity_2>sequential/module_wrapper/simple_rnn/while/Identity_2:output:0"w
5sequential_module_wrapper_simple_rnn_while_identity_3>sequential/module_wrapper/simple_rnn/while/Identity_3:output:0"w
5sequential_module_wrapper_simple_rnn_while_identity_4>sequential/module_wrapper/simple_rnn/while/Identity_4:output:0"?
_sequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_strided_slice_1asequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_strided_slice_1_0"?
Zsequential_module_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource\sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
[sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource]sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
Ysequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource[sequential_module_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"?
?sequential_module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor?sequential_module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Qsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpQsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2?
Psequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpPsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2?
Rsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpRsequential/module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
simple_rnn_1_while_cond_285386
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_28538___redundant_placeholder0M
Isimple_rnn_1_while_simple_rnn_1_while_cond_28538___redundant_placeholder1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_28538___redundant_placeholder2M
Isimple_rnn_1_while_simple_rnn_1_while_cond_28538___redundant_placeholder3
simple_rnn_1_while_identity
?
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
simple_rnn_while_cond_258452
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1I
Esimple_rnn_while_simple_rnn_while_cond_25845___redundant_placeholder0I
Esimple_rnn_while_simple_rnn_while_cond_25845___redundant_placeholder1I
Esimple_rnn_while_simple_rnn_while_cond_25845___redundant_placeholder2I
Esimple_rnn_while_simple_rnn_while_cond_25845___redundant_placeholder3
simple_rnn_while_identity
?
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_30449

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?!
?
E__inference_sequential_layer_call_and_return_conditional_losses_25993

inputs(
module_wrapper_25959:
??#
module_wrapper_25961:	?(
module_wrapper_25963:
??*
module_wrapper_1_25966:
??%
module_wrapper_1_25968:	?*
module_wrapper_1_25970:
??*
module_wrapper_2_25973:
??%
module_wrapper_2_25975:	?*
module_wrapper_2_25977:
??*
module_wrapper_3_25980:
??%
module_wrapper_3_25982:	?*
module_wrapper_3_25984:
??)
module_wrapper_4_25987:	?$
module_wrapper_4_25989:
identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_4/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_25959module_wrapper_25961module_wrapper_25963*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25912?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0module_wrapper_1_25966module_wrapper_1_25968module_wrapper_1_25970*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25781?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_25973module_wrapper_2_25975module_wrapper_2_25977*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25650?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0module_wrapper_3_25980module_wrapper_3_25982module_wrapper_3_25984*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25519?
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0module_wrapper_4_25987module_wrapper_4_25989*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25390?
IdentityIdentity1module_wrapper_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_26392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_26392___redundant_placeholder03
/while_while_cond_26392___redundant_placeholder13
/while_while_cond_26392___redundant_placeholder23
/while_while_cond_26392___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?+
?
while_body_29421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
6while_simple_rnn_cell_matmul_readvariableop_resource_0:
??F
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	?L
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
4while_simple_rnn_cell_matmul_readvariableop_resource:
??D
5while_simple_rnn_cell_biasadd_readvariableop_resource:	?J
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
????,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????t
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder(while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?8
?
simple_rnn_2_while_body_255846
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_25
1simple_rnn_2_while_simple_rnn_2_strided_slice_1_0q
msimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
??
simple_rnn_2_while_identity!
simple_rnn_2_while_identity_1!
simple_rnn_2_while_identity_2!
simple_rnn_2_while_identity_3!
simple_rnn_2_while_identity_43
/simple_rnn_2_while_simple_rnn_2_strided_slice_1o
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource:
??S
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:	?Y
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:
????;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp?:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp?<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp?
Dsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_2_while_placeholderMsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMul=simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAdd5simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0Csimple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul simple_rnn_2_while_placeholder_2Dsimple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_2/while/simple_rnn_cell_2/addAddV25simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:07simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_2/while/simple_rnn_cell_2/ReluRelu,simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_2_while_placeholder_1simple_rnn_2_while_placeholder7simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_2/while/addAddV2simple_rnn_2_while_placeholder!simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_2/while/add_1AddV22simple_rnn_2_while_simple_rnn_2_while_loop_counter#simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/add_1:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_1Identity8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_2Identitysimple_rnn_2/while/add:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_3IdentityGsimple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_4Identity7simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0^simple_rnn_2/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_2/while/NoOpNoOp<^simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;^simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp=^simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0"G
simple_rnn_2_while_identity_1&simple_rnn_2/while/Identity_1:output:0"G
simple_rnn_2_while_identity_2&simple_rnn_2/while/Identity_2:output:0"G
simple_rnn_2_while_identity_3&simple_rnn_2/while/Identity_3:output:0"G
simple_rnn_2_while_identity_4&simple_rnn_2/while/Identity_4:output:0"d
/simple_rnn_2_while_simple_rnn_2_strided_slice_11simple_rnn_2_while_simple_rnn_2_strided_slice_1_0"?
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourceFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"?
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourceGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"?
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"?
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensormsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2x
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2|
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
? 
?
while_body_26526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
while_simple_rnn_cell_1_26548_0:
??.
while_simple_rnn_cell_1_26550_0:	?3
while_simple_rnn_cell_1_26552_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_1_26548:
??,
while_simple_rnn_cell_1_26550:	?1
while_simple_rnn_cell_1_26552:
????/while/simple_rnn_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_1_26548_0while_simple_rnn_cell_1_26550_0while_simple_rnn_cell_1_26552_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_26513?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_1_26548while_simple_rnn_cell_1_26548_0"@
while_simple_rnn_cell_1_26550while_simple_rnn_cell_1_26550_0"@
while_simple_rnn_cell_1_26552while_simple_rnn_cell_1_26552_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
,__inference_simple_rnn_2_layer_call_fn_29747
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_27040}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?8
?
simple_rnn_3_while_body_252466
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_25
1simple_rnn_3_while_simple_rnn_3_strided_slice_1_0q
msimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
??
simple_rnn_3_while_identity!
simple_rnn_3_while_identity_1!
simple_rnn_3_while_identity_2!
simple_rnn_3_while_identity_3!
simple_rnn_3_while_identity_43
/simple_rnn_3_while_simple_rnn_3_strided_slice_1o
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:
??S
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:	?Y
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:
????;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp?:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp?<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp?
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_3_while_placeholderMsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_3_while_placeholder_2Dsimple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_3/while/simple_rnn_cell_3/addAddV25simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_3/while/simple_rnn_cell_3/ReluRelu,simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_3_while_placeholder_1simple_rnn_3_while_placeholder7simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_3/while/addAddV2simple_rnn_3_while_placeholder!simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_3/while/add_1AddV22simple_rnn_3_while_simple_rnn_3_while_loop_counter#simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/add_1:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_1Identity8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_2Identitysimple_rnn_3/while/add:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_3IdentityGsimple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_4Identity7simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0^simple_rnn_3/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_3/while/NoOpNoOp<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0"G
simple_rnn_3_while_identity_1&simple_rnn_3/while/Identity_1:output:0"G
simple_rnn_3_while_identity_2&simple_rnn_3/while/Identity_2:output:0"G
simple_rnn_3_while_identity_3&simple_rnn_3/while/Identity_3:output:0"G
simple_rnn_3_while_identity_4&simple_rnn_3/while/Identity_4:output:0"d
/simple_rnn_3_while_simple_rnn_3_strided_slice_11simple_rnn_3_while_simple_rnn_3_strided_slice_1_0"?
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"?
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"?
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"?
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensormsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_30308

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
while_cond_29550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29550___redundant_placeholder03
/while_while_cond_29550___redundant_placeholder13
/while_while_cond_29550___redundant_placeholder23
/while_while_cond_29550___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_29231

args_07
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0u
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
while_cond_30134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_30134___redundant_placeholder03
/while_while_cond_30134___redundant_placeholder13
/while_while_cond_30134___redundant_placeholder23
/while_while_cond_30134___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?=
?
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_29963
inputs_0D
0simple_rnn_cell_2_matmul_readvariableop_resource:
??@
1simple_rnn_cell_2_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_2_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_2/BiasAdd/ReadVariableOp?'simple_rnn_cell_2/MatMul/ReadVariableOp?)simple_rnn_cell_2/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_2/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_2/BiasAddBiasAdd"simple_rnn_cell_2/MatMul:product:00simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_2/MatMul_1MatMulzeros:output:01simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_2/addAddV2"simple_rnn_cell_2/BiasAdd:output:0$simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_2/ReluRelusimple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_2_matmul_readvariableop_resource1simple_rnn_cell_2_biasadd_readvariableop_resource2simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29897*
condR
while_cond_29896*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp)^simple_rnn_cell_2/BiasAdd/ReadVariableOp(^simple_rnn_cell_2/MatMul/ReadVariableOp*^simple_rnn_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2T
(simple_rnn_cell_2/BiasAdd/ReadVariableOp(simple_rnn_cell_2/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_2/MatMul/ReadVariableOp'simple_rnn_cell_2/MatMul/ReadVariableOp2V
)simple_rnn_cell_2/MatMul_1/ReadVariableOp)simple_rnn_cell_2/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?I
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_28951

args_0Q
=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource:
??M
>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:	?S
?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp?4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp?6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp?simple_rnn_2/whileH
simple_rnn_2/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_sliceStridedSlicesimple_rnn_2/Shape:output:0)simple_rnn_2/strided_slice/stack:output:0+simple_rnn_2/strided_slice/stack_1:output:0+simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_2/zeros/packedPack#simple_rnn_2/strided_slice:output:0$simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_2/zerosFill"simple_rnn_2/zeros/packed:output:0!simple_rnn_2/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_2/transpose	Transposeargs_0$simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_2/Shape_1Shapesimple_rnn_2/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_1StridedSlicesimple_rnn_2/Shape_1:output:0+simple_rnn_2/strided_slice_1/stack:output:0-simple_rnn_2/strided_slice_1/stack_1:output:0-simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_2/TensorArrayV2TensorListReserve1simple_rnn_2/TensorArrayV2/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_2/transpose:y:0Ksimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_2StridedSlicesimple_rnn_2/transpose:y:0+simple_rnn_2/strided_slice_2/stack:output:0-simple_rnn_2/strided_slice_2/stack_1:output:0-simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_2/simple_rnn_cell_2/MatMulMatMul%simple_rnn_2/strided_slice_2:output:0<simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAdd/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0=simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMulsimple_rnn_2/zeros:output:0>simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_2/simple_rnn_cell_2/addAddV2/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:01simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_2/simple_rnn_cell_2/ReluRelu&simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_2/TensorArrayV2_1TensorListReserve3simple_rnn_2/TensorArrayV2_1/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_2/whileWhile(simple_rnn_2/while/loop_counter:output:0.simple_rnn_2/while/maximum_iterations:output:0simple_rnn_2/time:output:0%simple_rnn_2/TensorArrayV2_1:handle:0simple_rnn_2/zeros:output:0%simple_rnn_2/strided_slice_1:output:0Dsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_2_while_body_28885*)
cond!R
simple_rnn_2_while_cond_28884*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_2/while:output:3Fsimple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_3StridedSlice8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_2/strided_slice_3/stack:output:0-simple_rnn_2/strided_slice_3/stack_1:output:0-simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_2/transpose_1	Transpose8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????p
IdentityIdentitysimple_rnn_2/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5^simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp7^simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp^simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2l
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2p
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2(
simple_rnn_2/whilesimple_rnn_2/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_30370

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
0__inference_module_wrapper_2_layer_call_fn_28962

args_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25196t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_3_layer_call_fn_29200

args_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25312p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?,
?
while_body_29659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_1_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_1/MatMul/ReadVariableOp?/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_1/ReluReluwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity*while/simple_rnn_cell_1/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
simple_rnn_while_cond_284082
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1I
Esimple_rnn_while_simple_rnn_while_cond_28408___redundant_placeholder0I
Esimple_rnn_while_simple_rnn_while_cond_28408___redundant_placeholder1I
Esimple_rnn_while_simple_rnn_while_cond_28408___redundant_placeholder2I
Esimple_rnn_while_simple_rnn_while_cond_28408___redundant_placeholder3
simple_rnn_while_identity
?
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?,
?
while_body_29551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_1_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_1/MatMul/ReadVariableOp?/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_1/ReluReluwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity*while/simple_rnn_cell_1/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_27217

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?,
?
while_body_29789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_2_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_2_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_2_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_2/MatMul/ReadVariableOp?/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_2/BiasAddBiasAdd(while/simple_rnn_cell_2/MatMul:product:06while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_2/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_2/addAddV2(while/simple_rnn_cell_2/BiasAdd:output:0*while/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_2/ReluReluwhile/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_2/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity*while/simple_rnn_cell_2/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_2/MatMul/ReadVariableOp0^while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_2_biasadd_readvariableop_resource9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_2_matmul_readvariableop_resource8while_simple_rnn_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_2/MatMul/ReadVariableOp-while/simple_rnn_cell_2/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_29221

args_07
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0u
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
.module_wrapper_3_simple_rnn_3_while_cond_28120X
Tmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_loop_counter^
Zmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_maximum_iterations3
/module_wrapper_3_simple_rnn_3_while_placeholder5
1module_wrapper_3_simple_rnn_3_while_placeholder_15
1module_wrapper_3_simple_rnn_3_while_placeholder_2Z
Vmodule_wrapper_3_simple_rnn_3_while_less_module_wrapper_3_simple_rnn_3_strided_slice_1o
kmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_cond_28120___redundant_placeholder0o
kmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_cond_28120___redundant_placeholder1o
kmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_cond_28120___redundant_placeholder2o
kmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_cond_28120___redundant_placeholder30
,module_wrapper_3_simple_rnn_3_while_identity
?
(module_wrapper_3/simple_rnn_3/while/LessLess/module_wrapper_3_simple_rnn_3_while_placeholderVmodule_wrapper_3_simple_rnn_3_while_less_module_wrapper_3_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: ?
,module_wrapper_3/simple_rnn_3/while/IdentityIdentity,module_wrapper_3/simple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "e
,module_wrapper_3_simple_rnn_3_while_identity5module_wrapper_3/simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?R
?
9sequential_module_wrapper_2_simple_rnn_2_while_body_24673n
jsequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_loop_countert
psequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_maximum_iterations>
:sequential_module_wrapper_2_simple_rnn_2_while_placeholder@
<sequential_module_wrapper_2_simple_rnn_2_while_placeholder_1@
<sequential_module_wrapper_2_simple_rnn_2_while_placeholder_2m
isequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_strided_slice_1_0?
?sequential_module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0u
asequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0:
??q
bsequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:	?w
csequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
??;
7sequential_module_wrapper_2_simple_rnn_2_while_identity=
9sequential_module_wrapper_2_simple_rnn_2_while_identity_1=
9sequential_module_wrapper_2_simple_rnn_2_while_identity_2=
9sequential_module_wrapper_2_simple_rnn_2_while_identity_3=
9sequential_module_wrapper_2_simple_rnn_2_while_identity_4k
gsequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_strided_slice_1?
?sequential_module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensors
_sequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource:
??o
`sequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:	?u
asequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:
????Wsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp?Vsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp?Xsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp?
`sequential/module_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Rsequential/module_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0:sequential_module_wrapper_2_simple_rnn_2_while_placeholderisequential/module_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Vsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpasequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
Gsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMulYsequential/module_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0^sequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Wsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpbsequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
Hsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAddQsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0_sequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Xsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpcsequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
Isequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul<sequential_module_wrapper_2_simple_rnn_2_while_placeholder_2`sequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Dsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/addAddV2Qsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:0Ssequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Esequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/ReluReluHsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
Ssequential/module_wrapper_2/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem<sequential_module_wrapper_2_simple_rnn_2_while_placeholder_1:sequential_module_wrapper_2_simple_rnn_2_while_placeholderSsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0*
_output_shapes
: *
element_dtype0:???v
4sequential/module_wrapper_2/simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
2sequential/module_wrapper_2/simple_rnn_2/while/addAddV2:sequential_module_wrapper_2_simple_rnn_2_while_placeholder=sequential/module_wrapper_2/simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: x
6sequential/module_wrapper_2/simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
4sequential/module_wrapper_2/simple_rnn_2/while/add_1AddV2jsequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_loop_counter?sequential/module_wrapper_2/simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: ?
7sequential/module_wrapper_2/simple_rnn_2/while/IdentityIdentity8sequential/module_wrapper_2/simple_rnn_2/while/add_1:z:04^sequential/module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_2/simple_rnn_2/while/Identity_1Identitypsequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_maximum_iterations4^sequential/module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_2/simple_rnn_2/while/Identity_2Identity6sequential/module_wrapper_2/simple_rnn_2/while/add:z:04^sequential/module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_2/simple_rnn_2/while/Identity_3Identitycsequential/module_wrapper_2/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^sequential/module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
9sequential/module_wrapper_2/simple_rnn_2/while/Identity_4IdentitySsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:04^sequential/module_wrapper_2/simple_rnn_2/while/NoOp*
T0*(
_output_shapes
:???????????
3sequential/module_wrapper_2/simple_rnn_2/while/NoOpNoOpX^sequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpW^sequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpY^sequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "{
7sequential_module_wrapper_2_simple_rnn_2_while_identity@sequential/module_wrapper_2/simple_rnn_2/while/Identity:output:0"
9sequential_module_wrapper_2_simple_rnn_2_while_identity_1Bsequential/module_wrapper_2/simple_rnn_2/while/Identity_1:output:0"
9sequential_module_wrapper_2_simple_rnn_2_while_identity_2Bsequential/module_wrapper_2/simple_rnn_2/while/Identity_2:output:0"
9sequential_module_wrapper_2_simple_rnn_2_while_identity_3Bsequential/module_wrapper_2/simple_rnn_2/while/Identity_3:output:0"
9sequential_module_wrapper_2_simple_rnn_2_while_identity_4Bsequential/module_wrapper_2/simple_rnn_2/while/Identity_4:output:0"?
gsequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_strided_slice_1isequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_strided_slice_1_0"?
`sequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourcebsequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"?
asequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourcecsequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"?
_sequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceasequential_module_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"?
?sequential_module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor?sequential_module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Wsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpWsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2?
Vsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpVsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2?
Xsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpXsequential/module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_30246

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?I
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25781

args_0Q
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:
??M
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	?S
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?simple_rnn_1/whileH
simple_rnn_1/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_1/transpose	Transposeargs_0$simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_1/simple_rnn_cell_1/ReluRelu&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_1_while_body_25715*)
cond!R
simple_rnn_1_while_cond_25714*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????p
IdentityIdentitysimple_rnn_1/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?4
?
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_26589

inputs+
simple_rnn_cell_1_26514:
??&
simple_rnn_cell_1_26516:	?+
simple_rnn_cell_1_26518:
??
identity??)simple_rnn_cell_1/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_26514simple_rnn_cell_1_26516simple_rnn_cell_1_26518*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_26513n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_26514simple_rnn_cell_1_26516simple_rnn_cell_1_26518*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_26526*
condR
while_cond_26525*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????z
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?8
?
simple_rnn_1_while_body_285396
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
??
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:
??S
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	?Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
????;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_1/while/simple_rnn_cell_1/ReluRelu,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder7simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_4Identity7simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0^simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"?
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_26684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_26684___redundant_placeholder03
/while_while_cond_26684___redundant_placeholder13
/while_while_cond_26684___redundant_placeholder23
/while_while_cond_26684___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_27767

inputs\
Hmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:
??X
Imodule_wrapper_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	?^
Jmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
??b
Nmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:
??^
Omodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	?d
Pmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
??b
Nmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource:
??^
Omodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:	?d
Pmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:
??b
Nmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:
??^
Omodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:	?d
Pmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:
??H
5module_wrapper_4_dense_matmul_readvariableop_resource:	?D
6module_wrapper_4_dense_biasadd_readvariableop_resource:
identity??@module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp??module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?Amodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?module_wrapper/simple_rnn/while?Fmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?Emodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?Gmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?#module_wrapper_1/simple_rnn_1/while?Fmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp?Emodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp?Gmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp?#module_wrapper_2/simple_rnn_2/while?Fmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp?Emodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp?Gmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp?#module_wrapper_3/simple_rnn_3/while?-module_wrapper_4/dense/BiasAdd/ReadVariableOp?,module_wrapper_4/dense/MatMul/ReadVariableOpU
module_wrapper/simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:w
-module_wrapper/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/module_wrapper/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/module_wrapper/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'module_wrapper/simple_rnn/strided_sliceStridedSlice(module_wrapper/simple_rnn/Shape:output:06module_wrapper/simple_rnn/strided_slice/stack:output:08module_wrapper/simple_rnn/strided_slice/stack_1:output:08module_wrapper/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(module_wrapper/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
&module_wrapper/simple_rnn/zeros/packedPack0module_wrapper/simple_rnn/strided_slice:output:01module_wrapper/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%module_wrapper/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
module_wrapper/simple_rnn/zerosFill/module_wrapper/simple_rnn/zeros/packed:output:0.module_wrapper/simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:??????????}
(module_wrapper/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#module_wrapper/simple_rnn/transpose	Transposeinputs1module_wrapper/simple_rnn/transpose/perm:output:0*
T0*,
_output_shapes
:??????????x
!module_wrapper/simple_rnn/Shape_1Shape'module_wrapper/simple_rnn/transpose:y:0*
T0*
_output_shapes
:y
/module_wrapper/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1module_wrapper/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1module_wrapper/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)module_wrapper/simple_rnn/strided_slice_1StridedSlice*module_wrapper/simple_rnn/Shape_1:output:08module_wrapper/simple_rnn/strided_slice_1/stack:output:0:module_wrapper/simple_rnn/strided_slice_1/stack_1:output:0:module_wrapper/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
5module_wrapper/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'module_wrapper/simple_rnn/TensorArrayV2TensorListReserve>module_wrapper/simple_rnn/TensorArrayV2/element_shape:output:02module_wrapper/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Omodule_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Amodule_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'module_wrapper/simple_rnn/transpose:y:0Xmodule_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???y
/module_wrapper/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1module_wrapper/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1module_wrapper/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)module_wrapper/simple_rnn/strided_slice_2StridedSlice'module_wrapper/simple_rnn/transpose:y:08module_wrapper/simple_rnn/strided_slice_2/stack:output:0:module_wrapper/simple_rnn/strided_slice_2/stack_1:output:0:module_wrapper/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
?module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpHmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
0module_wrapper/simple_rnn/simple_rnn_cell/MatMulMatMul2module_wrapper/simple_rnn/strided_slice_2:output:0Gmodule_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpImodule_wrapper_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1module_wrapper/simple_rnn/simple_rnn_cell/BiasAddBiasAdd:module_wrapper/simple_rnn/simple_rnn_cell/MatMul:product:0Hmodule_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Amodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpJmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
2module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1MatMul(module_wrapper/simple_rnn/zeros:output:0Imodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-module_wrapper/simple_rnn/simple_rnn_cell/addAddV2:module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd:output:0<module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
.module_wrapper/simple_rnn/simple_rnn_cell/ReluRelu1module_wrapper/simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
7module_wrapper/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)module_wrapper/simple_rnn/TensorArrayV2_1TensorListReserve@module_wrapper/simple_rnn/TensorArrayV2_1/element_shape:output:02module_wrapper/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???`
module_wrapper/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2module_wrapper/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????n
,module_wrapper/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
module_wrapper/simple_rnn/whileWhile5module_wrapper/simple_rnn/while/loop_counter:output:0;module_wrapper/simple_rnn/while/maximum_iterations:output:0'module_wrapper/simple_rnn/time:output:02module_wrapper/simple_rnn/TensorArrayV2_1:handle:0(module_wrapper/simple_rnn/zeros:output:02module_wrapper/simple_rnn/strided_slice_1:output:0Qmodule_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Hmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceImodule_wrapper_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceJmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *6
body.R,
*module_wrapper_simple_rnn_while_body_27383*6
cond.R,
*module_wrapper_simple_rnn_while_cond_27382*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Jmodule_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
<module_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack(module_wrapper/simple_rnn/while:output:3Smodule_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
/module_wrapper/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1module_wrapper/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1module_wrapper/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)module_wrapper/simple_rnn/strided_slice_3StridedSliceEmodule_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:08module_wrapper/simple_rnn/strided_slice_3/stack:output:0:module_wrapper/simple_rnn/strided_slice_3/stack_1:output:0:module_wrapper/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask
*module_wrapper/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
%module_wrapper/simple_rnn/transpose_1	TransposeEmodule_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:03module_wrapper/simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????|
#module_wrapper_1/simple_rnn_1/ShapeShape)module_wrapper/simple_rnn/transpose_1:y:0*
T0*
_output_shapes
:{
1module_wrapper_1/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3module_wrapper_1/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3module_wrapper_1/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+module_wrapper_1/simple_rnn_1/strided_sliceStridedSlice,module_wrapper_1/simple_rnn_1/Shape:output:0:module_wrapper_1/simple_rnn_1/strided_slice/stack:output:0<module_wrapper_1/simple_rnn_1/strided_slice/stack_1:output:0<module_wrapper_1/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
,module_wrapper_1/simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_1/simple_rnn_1/zeros/packedPack4module_wrapper_1/simple_rnn_1/strided_slice:output:05module_wrapper_1/simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)module_wrapper_1/simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
#module_wrapper_1/simple_rnn_1/zerosFill3module_wrapper_1/simple_rnn_1/zeros/packed:output:02module_wrapper_1/simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
,module_wrapper_1/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
'module_wrapper_1/simple_rnn_1/transpose	Transpose)module_wrapper/simple_rnn/transpose_1:y:05module_wrapper_1/simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
%module_wrapper_1/simple_rnn_1/Shape_1Shape+module_wrapper_1/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:}
3module_wrapper_1/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_1/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_1/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_1/simple_rnn_1/strided_slice_1StridedSlice.module_wrapper_1/simple_rnn_1/Shape_1:output:0<module_wrapper_1/simple_rnn_1/strided_slice_1/stack:output:0>module_wrapper_1/simple_rnn_1/strided_slice_1/stack_1:output:0>module_wrapper_1/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
9module_wrapper_1/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+module_wrapper_1/simple_rnn_1/TensorArrayV2TensorListReserveBmodule_wrapper_1/simple_rnn_1/TensorArrayV2/element_shape:output:06module_wrapper_1/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Smodule_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Emodule_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+module_wrapper_1/simple_rnn_1/transpose:y:0\module_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???}
3module_wrapper_1/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_1/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_1/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_1/simple_rnn_1/strided_slice_2StridedSlice+module_wrapper_1/simple_rnn_1/transpose:y:0<module_wrapper_1/simple_rnn_1/strided_slice_2/stack:output:0>module_wrapper_1/simple_rnn_1/strided_slice_2/stack_1:output:0>module_wrapper_1/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Emodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpNmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
6module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMulMatMul6module_wrapper_1/simple_rnn_1/strided_slice_2:output:0Mmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Fmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpOmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0Nmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Gmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpPmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMul,module_wrapper_1/simple_rnn_1/zeros:output:0Omodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/addAddV2@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:0Bmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
4module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/ReluRelu7module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
;module_wrapper_1/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-module_wrapper_1/simple_rnn_1/TensorArrayV2_1TensorListReserveDmodule_wrapper_1/simple_rnn_1/TensorArrayV2_1/element_shape:output:06module_wrapper_1/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???d
"module_wrapper_1/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
6module_wrapper_1/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????r
0module_wrapper_1/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
#module_wrapper_1/simple_rnn_1/whileWhile9module_wrapper_1/simple_rnn_1/while/loop_counter:output:0?module_wrapper_1/simple_rnn_1/while/maximum_iterations:output:0+module_wrapper_1/simple_rnn_1/time:output:06module_wrapper_1/simple_rnn_1/TensorArrayV2_1:handle:0,module_wrapper_1/simple_rnn_1/zeros:output:06module_wrapper_1/simple_rnn_1/strided_slice_1:output:0Umodule_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceOmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourcePmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.module_wrapper_1_simple_rnn_1_while_body_27487*:
cond2R0
.module_wrapper_1_simple_rnn_1_while_cond_27486*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Nmodule_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
@module_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack,module_wrapper_1/simple_rnn_1/while:output:3Wmodule_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
3module_wrapper_1/simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
5module_wrapper_1/simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_1/simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_1/simple_rnn_1/strided_slice_3StridedSliceImodule_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0<module_wrapper_1/simple_rnn_1/strided_slice_3/stack:output:0>module_wrapper_1/simple_rnn_1/strided_slice_3/stack_1:output:0>module_wrapper_1/simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
.module_wrapper_1/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
)module_wrapper_1/simple_rnn_1/transpose_1	TransposeImodule_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:07module_wrapper_1/simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
#module_wrapper_2/simple_rnn_2/ShapeShape-module_wrapper_1/simple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
:{
1module_wrapper_2/simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3module_wrapper_2/simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3module_wrapper_2/simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+module_wrapper_2/simple_rnn_2/strided_sliceStridedSlice,module_wrapper_2/simple_rnn_2/Shape:output:0:module_wrapper_2/simple_rnn_2/strided_slice/stack:output:0<module_wrapper_2/simple_rnn_2/strided_slice/stack_1:output:0<module_wrapper_2/simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
,module_wrapper_2/simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_2/simple_rnn_2/zeros/packedPack4module_wrapper_2/simple_rnn_2/strided_slice:output:05module_wrapper_2/simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)module_wrapper_2/simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
#module_wrapper_2/simple_rnn_2/zerosFill3module_wrapper_2/simple_rnn_2/zeros/packed:output:02module_wrapper_2/simple_rnn_2/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
,module_wrapper_2/simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
'module_wrapper_2/simple_rnn_2/transpose	Transpose-module_wrapper_1/simple_rnn_1/transpose_1:y:05module_wrapper_2/simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
%module_wrapper_2/simple_rnn_2/Shape_1Shape+module_wrapper_2/simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:}
3module_wrapper_2/simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_2/simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_2/simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_2/simple_rnn_2/strided_slice_1StridedSlice.module_wrapper_2/simple_rnn_2/Shape_1:output:0<module_wrapper_2/simple_rnn_2/strided_slice_1/stack:output:0>module_wrapper_2/simple_rnn_2/strided_slice_1/stack_1:output:0>module_wrapper_2/simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
9module_wrapper_2/simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+module_wrapper_2/simple_rnn_2/TensorArrayV2TensorListReserveBmodule_wrapper_2/simple_rnn_2/TensorArrayV2/element_shape:output:06module_wrapper_2/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Smodule_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Emodule_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+module_wrapper_2/simple_rnn_2/transpose:y:0\module_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???}
3module_wrapper_2/simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_2/simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_2/simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_2/simple_rnn_2/strided_slice_2StridedSlice+module_wrapper_2/simple_rnn_2/transpose:y:0<module_wrapper_2/simple_rnn_2/strided_slice_2/stack:output:0>module_wrapper_2/simple_rnn_2/strided_slice_2/stack_1:output:0>module_wrapper_2/simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Emodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpNmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
6module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMulMatMul6module_wrapper_2/simple_rnn_2/strided_slice_2:output:0Mmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Fmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpOmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAdd@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0Nmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Gmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpPmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMul,module_wrapper_2/simple_rnn_2/zeros:output:0Omodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/addAddV2@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:0Bmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
4module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/ReluRelu7module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
;module_wrapper_2/simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-module_wrapper_2/simple_rnn_2/TensorArrayV2_1TensorListReserveDmodule_wrapper_2/simple_rnn_2/TensorArrayV2_1/element_shape:output:06module_wrapper_2/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???d
"module_wrapper_2/simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
6module_wrapper_2/simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????r
0module_wrapper_2/simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
#module_wrapper_2/simple_rnn_2/whileWhile9module_wrapper_2/simple_rnn_2/while/loop_counter:output:0?module_wrapper_2/simple_rnn_2/while/maximum_iterations:output:0+module_wrapper_2/simple_rnn_2/time:output:06module_wrapper_2/simple_rnn_2/TensorArrayV2_1:handle:0,module_wrapper_2/simple_rnn_2/zeros:output:06module_wrapper_2/simple_rnn_2/strided_slice_1:output:0Umodule_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resourceOmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resourcePmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.module_wrapper_2_simple_rnn_2_while_body_27591*:
cond2R0
.module_wrapper_2_simple_rnn_2_while_cond_27590*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Nmodule_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
@module_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack,module_wrapper_2/simple_rnn_2/while:output:3Wmodule_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
3module_wrapper_2/simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
5module_wrapper_2/simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_2/simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_2/simple_rnn_2/strided_slice_3StridedSliceImodule_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0<module_wrapper_2/simple_rnn_2/strided_slice_3/stack:output:0>module_wrapper_2/simple_rnn_2/strided_slice_3/stack_1:output:0>module_wrapper_2/simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
.module_wrapper_2/simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
)module_wrapper_2/simple_rnn_2/transpose_1	TransposeImodule_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:07module_wrapper_2/simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
#module_wrapper_3/simple_rnn_3/ShapeShape-module_wrapper_2/simple_rnn_2/transpose_1:y:0*
T0*
_output_shapes
:{
1module_wrapper_3/simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3module_wrapper_3/simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3module_wrapper_3/simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+module_wrapper_3/simple_rnn_3/strided_sliceStridedSlice,module_wrapper_3/simple_rnn_3/Shape:output:0:module_wrapper_3/simple_rnn_3/strided_slice/stack:output:0<module_wrapper_3/simple_rnn_3/strided_slice/stack_1:output:0<module_wrapper_3/simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
,module_wrapper_3/simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_3/simple_rnn_3/zeros/packedPack4module_wrapper_3/simple_rnn_3/strided_slice:output:05module_wrapper_3/simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)module_wrapper_3/simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
#module_wrapper_3/simple_rnn_3/zerosFill3module_wrapper_3/simple_rnn_3/zeros/packed:output:02module_wrapper_3/simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
,module_wrapper_3/simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
'module_wrapper_3/simple_rnn_3/transpose	Transpose-module_wrapper_2/simple_rnn_2/transpose_1:y:05module_wrapper_3/simple_rnn_3/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
%module_wrapper_3/simple_rnn_3/Shape_1Shape+module_wrapper_3/simple_rnn_3/transpose:y:0*
T0*
_output_shapes
:}
3module_wrapper_3/simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_3/simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_3/simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_3/simple_rnn_3/strided_slice_1StridedSlice.module_wrapper_3/simple_rnn_3/Shape_1:output:0<module_wrapper_3/simple_rnn_3/strided_slice_1/stack:output:0>module_wrapper_3/simple_rnn_3/strided_slice_1/stack_1:output:0>module_wrapper_3/simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
9module_wrapper_3/simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+module_wrapper_3/simple_rnn_3/TensorArrayV2TensorListReserveBmodule_wrapper_3/simple_rnn_3/TensorArrayV2/element_shape:output:06module_wrapper_3/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Smodule_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Emodule_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+module_wrapper_3/simple_rnn_3/transpose:y:0\module_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???}
3module_wrapper_3/simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_3/simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_3/simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_3/simple_rnn_3/strided_slice_2StridedSlice+module_wrapper_3/simple_rnn_3/transpose:y:0<module_wrapper_3/simple_rnn_3/strided_slice_2/stack:output:0>module_wrapper_3/simple_rnn_3/strided_slice_2/stack_1:output:0>module_wrapper_3/simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Emodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpNmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
6module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMulMatMul6module_wrapper_3/simple_rnn_3/strided_slice_2:output:0Mmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Fmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpOmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0Nmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Gmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpPmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMul,module_wrapper_3/simple_rnn_3/zeros:output:0Omodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/addAddV2@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:0Bmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
4module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/ReluRelu7module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
;module_wrapper_3/simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-module_wrapper_3/simple_rnn_3/TensorArrayV2_1TensorListReserveDmodule_wrapper_3/simple_rnn_3/TensorArrayV2_1/element_shape:output:06module_wrapper_3/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???d
"module_wrapper_3/simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
6module_wrapper_3/simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????r
0module_wrapper_3/simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
#module_wrapper_3/simple_rnn_3/whileWhile9module_wrapper_3/simple_rnn_3/while/loop_counter:output:0?module_wrapper_3/simple_rnn_3/while/maximum_iterations:output:0+module_wrapper_3/simple_rnn_3/time:output:06module_wrapper_3/simple_rnn_3/TensorArrayV2_1:handle:0,module_wrapper_3/simple_rnn_3/zeros:output:06module_wrapper_3/simple_rnn_3/strided_slice_1:output:0Umodule_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resourceOmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resourcePmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.module_wrapper_3_simple_rnn_3_while_body_27695*:
cond2R0
.module_wrapper_3_simple_rnn_3_while_cond_27694*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Nmodule_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
@module_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStack,module_wrapper_3/simple_rnn_3/while:output:3Wmodule_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
3module_wrapper_3/simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
5module_wrapper_3/simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_3/simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_3/simple_rnn_3/strided_slice_3StridedSliceImodule_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0<module_wrapper_3/simple_rnn_3/strided_slice_3/stack:output:0>module_wrapper_3/simple_rnn_3/strided_slice_3/stack_1:output:0>module_wrapper_3/simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
.module_wrapper_3/simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
)module_wrapper_3/simple_rnn_3/transpose_1	TransposeImodule_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:07module_wrapper_3/simple_rnn_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
,module_wrapper_4/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_4_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
module_wrapper_4/dense/MatMulMatMul6module_wrapper_3/simple_rnn_3/strided_slice_3:output:04module_wrapper_4/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-module_wrapper_4/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_4_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
module_wrapper_4/dense/BiasAddBiasAdd'module_wrapper_4/dense/MatMul:product:05module_wrapper_4/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'module_wrapper_4/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????	
NoOpNoOpA^module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp@^module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpB^module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp ^module_wrapper/simple_rnn/whileG^module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpH^module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp$^module_wrapper_1/simple_rnn_1/whileG^module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpF^module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpH^module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp$^module_wrapper_2/simple_rnn_2/whileG^module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpF^module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpH^module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp$^module_wrapper_3/simple_rnn_3/while.^module_wrapper_4/dense/BiasAdd/ReadVariableOp-^module_wrapper_4/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 2?
@module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp@module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2?
?module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2?
Amodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpAmodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2B
module_wrapper/simple_rnn/whilemodule_wrapper/simple_rnn/while2?
Fmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpFmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2?
Emodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpEmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2?
Gmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpGmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2J
#module_wrapper_1/simple_rnn_1/while#module_wrapper_1/simple_rnn_1/while2?
Fmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpFmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2?
Emodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpEmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2?
Gmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpGmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2J
#module_wrapper_2/simple_rnn_2/while#module_wrapper_2/simple_rnn_2/while2?
Fmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpFmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2?
Emodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpEmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2?
Gmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpGmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2J
#module_wrapper_3/simple_rnn_3/while#module_wrapper_3/simple_rnn_3/while2^
-module_wrapper_4/dense/BiasAdd/ReadVariableOp-module_wrapper_4/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_4/dense/MatMul/ReadVariableOp,module_wrapper_4/dense/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?I
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_28605

args_0Q
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:
??M
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	?S
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?simple_rnn_1/whileH
simple_rnn_1/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_1/transpose	Transposeargs_0$simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_1/simple_rnn_cell_1/ReluRelu&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_1_while_body_28539*)
cond!R
simple_rnn_1_while_cond_28538*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????p
IdentityIdentitysimple_rnn_1/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?6
?
simple_rnn_while_body_283012
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0U
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:
??Q
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	?W
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
??
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorS
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:
??O
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	?U
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
????7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
%simple_rnn/while/simple_rnn_cell/ReluRelu(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder3simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:???X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_4Identity3simple_rnn/while/simple_rnn_cell/Relu:activations:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"?
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"?
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_26341

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_28193

inputs\
Hmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:
??X
Imodule_wrapper_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	?^
Jmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
??b
Nmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:
??^
Omodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	?d
Pmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
??b
Nmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource:
??^
Omodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:	?d
Pmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:
??b
Nmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:
??^
Omodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:	?d
Pmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:
??H
5module_wrapper_4_dense_matmul_readvariableop_resource:	?D
6module_wrapper_4_dense_biasadd_readvariableop_resource:
identity??@module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp??module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?Amodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?module_wrapper/simple_rnn/while?Fmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?Emodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?Gmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?#module_wrapper_1/simple_rnn_1/while?Fmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp?Emodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp?Gmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp?#module_wrapper_2/simple_rnn_2/while?Fmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp?Emodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp?Gmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp?#module_wrapper_3/simple_rnn_3/while?-module_wrapper_4/dense/BiasAdd/ReadVariableOp?,module_wrapper_4/dense/MatMul/ReadVariableOpU
module_wrapper/simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:w
-module_wrapper/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/module_wrapper/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/module_wrapper/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'module_wrapper/simple_rnn/strided_sliceStridedSlice(module_wrapper/simple_rnn/Shape:output:06module_wrapper/simple_rnn/strided_slice/stack:output:08module_wrapper/simple_rnn/strided_slice/stack_1:output:08module_wrapper/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(module_wrapper/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
&module_wrapper/simple_rnn/zeros/packedPack0module_wrapper/simple_rnn/strided_slice:output:01module_wrapper/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%module_wrapper/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
module_wrapper/simple_rnn/zerosFill/module_wrapper/simple_rnn/zeros/packed:output:0.module_wrapper/simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:??????????}
(module_wrapper/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#module_wrapper/simple_rnn/transpose	Transposeinputs1module_wrapper/simple_rnn/transpose/perm:output:0*
T0*,
_output_shapes
:??????????x
!module_wrapper/simple_rnn/Shape_1Shape'module_wrapper/simple_rnn/transpose:y:0*
T0*
_output_shapes
:y
/module_wrapper/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1module_wrapper/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1module_wrapper/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)module_wrapper/simple_rnn/strided_slice_1StridedSlice*module_wrapper/simple_rnn/Shape_1:output:08module_wrapper/simple_rnn/strided_slice_1/stack:output:0:module_wrapper/simple_rnn/strided_slice_1/stack_1:output:0:module_wrapper/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
5module_wrapper/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'module_wrapper/simple_rnn/TensorArrayV2TensorListReserve>module_wrapper/simple_rnn/TensorArrayV2/element_shape:output:02module_wrapper/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Omodule_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Amodule_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'module_wrapper/simple_rnn/transpose:y:0Xmodule_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???y
/module_wrapper/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1module_wrapper/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1module_wrapper/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)module_wrapper/simple_rnn/strided_slice_2StridedSlice'module_wrapper/simple_rnn/transpose:y:08module_wrapper/simple_rnn/strided_slice_2/stack:output:0:module_wrapper/simple_rnn/strided_slice_2/stack_1:output:0:module_wrapper/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
?module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpHmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
0module_wrapper/simple_rnn/simple_rnn_cell/MatMulMatMul2module_wrapper/simple_rnn/strided_slice_2:output:0Gmodule_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpImodule_wrapper_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1module_wrapper/simple_rnn/simple_rnn_cell/BiasAddBiasAdd:module_wrapper/simple_rnn/simple_rnn_cell/MatMul:product:0Hmodule_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Amodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpJmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
2module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1MatMul(module_wrapper/simple_rnn/zeros:output:0Imodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-module_wrapper/simple_rnn/simple_rnn_cell/addAddV2:module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd:output:0<module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
.module_wrapper/simple_rnn/simple_rnn_cell/ReluRelu1module_wrapper/simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
7module_wrapper/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)module_wrapper/simple_rnn/TensorArrayV2_1TensorListReserve@module_wrapper/simple_rnn/TensorArrayV2_1/element_shape:output:02module_wrapper/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???`
module_wrapper/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2module_wrapper/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????n
,module_wrapper/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
module_wrapper/simple_rnn/whileWhile5module_wrapper/simple_rnn/while/loop_counter:output:0;module_wrapper/simple_rnn/while/maximum_iterations:output:0'module_wrapper/simple_rnn/time:output:02module_wrapper/simple_rnn/TensorArrayV2_1:handle:0(module_wrapper/simple_rnn/zeros:output:02module_wrapper/simple_rnn/strided_slice_1:output:0Qmodule_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Hmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceImodule_wrapper_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceJmodule_wrapper_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *6
body.R,
*module_wrapper_simple_rnn_while_body_27809*6
cond.R,
*module_wrapper_simple_rnn_while_cond_27808*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Jmodule_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
<module_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack(module_wrapper/simple_rnn/while:output:3Smodule_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
/module_wrapper/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1module_wrapper/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1module_wrapper/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)module_wrapper/simple_rnn/strided_slice_3StridedSliceEmodule_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:08module_wrapper/simple_rnn/strided_slice_3/stack:output:0:module_wrapper/simple_rnn/strided_slice_3/stack_1:output:0:module_wrapper/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask
*module_wrapper/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
%module_wrapper/simple_rnn/transpose_1	TransposeEmodule_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:03module_wrapper/simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????|
#module_wrapper_1/simple_rnn_1/ShapeShape)module_wrapper/simple_rnn/transpose_1:y:0*
T0*
_output_shapes
:{
1module_wrapper_1/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3module_wrapper_1/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3module_wrapper_1/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+module_wrapper_1/simple_rnn_1/strided_sliceStridedSlice,module_wrapper_1/simple_rnn_1/Shape:output:0:module_wrapper_1/simple_rnn_1/strided_slice/stack:output:0<module_wrapper_1/simple_rnn_1/strided_slice/stack_1:output:0<module_wrapper_1/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
,module_wrapper_1/simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_1/simple_rnn_1/zeros/packedPack4module_wrapper_1/simple_rnn_1/strided_slice:output:05module_wrapper_1/simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)module_wrapper_1/simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
#module_wrapper_1/simple_rnn_1/zerosFill3module_wrapper_1/simple_rnn_1/zeros/packed:output:02module_wrapper_1/simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
,module_wrapper_1/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
'module_wrapper_1/simple_rnn_1/transpose	Transpose)module_wrapper/simple_rnn/transpose_1:y:05module_wrapper_1/simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
%module_wrapper_1/simple_rnn_1/Shape_1Shape+module_wrapper_1/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:}
3module_wrapper_1/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_1/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_1/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_1/simple_rnn_1/strided_slice_1StridedSlice.module_wrapper_1/simple_rnn_1/Shape_1:output:0<module_wrapper_1/simple_rnn_1/strided_slice_1/stack:output:0>module_wrapper_1/simple_rnn_1/strided_slice_1/stack_1:output:0>module_wrapper_1/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
9module_wrapper_1/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+module_wrapper_1/simple_rnn_1/TensorArrayV2TensorListReserveBmodule_wrapper_1/simple_rnn_1/TensorArrayV2/element_shape:output:06module_wrapper_1/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Smodule_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Emodule_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+module_wrapper_1/simple_rnn_1/transpose:y:0\module_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???}
3module_wrapper_1/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_1/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_1/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_1/simple_rnn_1/strided_slice_2StridedSlice+module_wrapper_1/simple_rnn_1/transpose:y:0<module_wrapper_1/simple_rnn_1/strided_slice_2/stack:output:0>module_wrapper_1/simple_rnn_1/strided_slice_2/stack_1:output:0>module_wrapper_1/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Emodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpNmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
6module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMulMatMul6module_wrapper_1/simple_rnn_1/strided_slice_2:output:0Mmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Fmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpOmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0Nmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Gmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpPmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMul,module_wrapper_1/simple_rnn_1/zeros:output:0Omodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/addAddV2@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:0Bmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
4module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/ReluRelu7module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
;module_wrapper_1/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-module_wrapper_1/simple_rnn_1/TensorArrayV2_1TensorListReserveDmodule_wrapper_1/simple_rnn_1/TensorArrayV2_1/element_shape:output:06module_wrapper_1/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???d
"module_wrapper_1/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
6module_wrapper_1/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????r
0module_wrapper_1/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
#module_wrapper_1/simple_rnn_1/whileWhile9module_wrapper_1/simple_rnn_1/while/loop_counter:output:0?module_wrapper_1/simple_rnn_1/while/maximum_iterations:output:0+module_wrapper_1/simple_rnn_1/time:output:06module_wrapper_1/simple_rnn_1/TensorArrayV2_1:handle:0,module_wrapper_1/simple_rnn_1/zeros:output:06module_wrapper_1/simple_rnn_1/strided_slice_1:output:0Umodule_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceOmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourcePmodule_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.module_wrapper_1_simple_rnn_1_while_body_27913*:
cond2R0
.module_wrapper_1_simple_rnn_1_while_cond_27912*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Nmodule_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
@module_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack,module_wrapper_1/simple_rnn_1/while:output:3Wmodule_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
3module_wrapper_1/simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
5module_wrapper_1/simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_1/simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_1/simple_rnn_1/strided_slice_3StridedSliceImodule_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0<module_wrapper_1/simple_rnn_1/strided_slice_3/stack:output:0>module_wrapper_1/simple_rnn_1/strided_slice_3/stack_1:output:0>module_wrapper_1/simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
.module_wrapper_1/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
)module_wrapper_1/simple_rnn_1/transpose_1	TransposeImodule_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:07module_wrapper_1/simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
#module_wrapper_2/simple_rnn_2/ShapeShape-module_wrapper_1/simple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
:{
1module_wrapper_2/simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3module_wrapper_2/simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3module_wrapper_2/simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+module_wrapper_2/simple_rnn_2/strided_sliceStridedSlice,module_wrapper_2/simple_rnn_2/Shape:output:0:module_wrapper_2/simple_rnn_2/strided_slice/stack:output:0<module_wrapper_2/simple_rnn_2/strided_slice/stack_1:output:0<module_wrapper_2/simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
,module_wrapper_2/simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_2/simple_rnn_2/zeros/packedPack4module_wrapper_2/simple_rnn_2/strided_slice:output:05module_wrapper_2/simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)module_wrapper_2/simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
#module_wrapper_2/simple_rnn_2/zerosFill3module_wrapper_2/simple_rnn_2/zeros/packed:output:02module_wrapper_2/simple_rnn_2/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
,module_wrapper_2/simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
'module_wrapper_2/simple_rnn_2/transpose	Transpose-module_wrapper_1/simple_rnn_1/transpose_1:y:05module_wrapper_2/simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
%module_wrapper_2/simple_rnn_2/Shape_1Shape+module_wrapper_2/simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:}
3module_wrapper_2/simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_2/simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_2/simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_2/simple_rnn_2/strided_slice_1StridedSlice.module_wrapper_2/simple_rnn_2/Shape_1:output:0<module_wrapper_2/simple_rnn_2/strided_slice_1/stack:output:0>module_wrapper_2/simple_rnn_2/strided_slice_1/stack_1:output:0>module_wrapper_2/simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
9module_wrapper_2/simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+module_wrapper_2/simple_rnn_2/TensorArrayV2TensorListReserveBmodule_wrapper_2/simple_rnn_2/TensorArrayV2/element_shape:output:06module_wrapper_2/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Smodule_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Emodule_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+module_wrapper_2/simple_rnn_2/transpose:y:0\module_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???}
3module_wrapper_2/simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_2/simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_2/simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_2/simple_rnn_2/strided_slice_2StridedSlice+module_wrapper_2/simple_rnn_2/transpose:y:0<module_wrapper_2/simple_rnn_2/strided_slice_2/stack:output:0>module_wrapper_2/simple_rnn_2/strided_slice_2/stack_1:output:0>module_wrapper_2/simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Emodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpNmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
6module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMulMatMul6module_wrapper_2/simple_rnn_2/strided_slice_2:output:0Mmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Fmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpOmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAdd@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0Nmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Gmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpPmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMul,module_wrapper_2/simple_rnn_2/zeros:output:0Omodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/addAddV2@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:0Bmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
4module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/ReluRelu7module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
;module_wrapper_2/simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-module_wrapper_2/simple_rnn_2/TensorArrayV2_1TensorListReserveDmodule_wrapper_2/simple_rnn_2/TensorArrayV2_1/element_shape:output:06module_wrapper_2/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???d
"module_wrapper_2/simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
6module_wrapper_2/simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????r
0module_wrapper_2/simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
#module_wrapper_2/simple_rnn_2/whileWhile9module_wrapper_2/simple_rnn_2/while/loop_counter:output:0?module_wrapper_2/simple_rnn_2/while/maximum_iterations:output:0+module_wrapper_2/simple_rnn_2/time:output:06module_wrapper_2/simple_rnn_2/TensorArrayV2_1:handle:0,module_wrapper_2/simple_rnn_2/zeros:output:06module_wrapper_2/simple_rnn_2/strided_slice_1:output:0Umodule_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resourceOmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resourcePmodule_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.module_wrapper_2_simple_rnn_2_while_body_28017*:
cond2R0
.module_wrapper_2_simple_rnn_2_while_cond_28016*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Nmodule_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
@module_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack,module_wrapper_2/simple_rnn_2/while:output:3Wmodule_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
3module_wrapper_2/simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
5module_wrapper_2/simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_2/simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_2/simple_rnn_2/strided_slice_3StridedSliceImodule_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0<module_wrapper_2/simple_rnn_2/strided_slice_3/stack:output:0>module_wrapper_2/simple_rnn_2/strided_slice_3/stack_1:output:0>module_wrapper_2/simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
.module_wrapper_2/simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
)module_wrapper_2/simple_rnn_2/transpose_1	TransposeImodule_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:07module_wrapper_2/simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
#module_wrapper_3/simple_rnn_3/ShapeShape-module_wrapper_2/simple_rnn_2/transpose_1:y:0*
T0*
_output_shapes
:{
1module_wrapper_3/simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3module_wrapper_3/simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3module_wrapper_3/simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+module_wrapper_3/simple_rnn_3/strided_sliceStridedSlice,module_wrapper_3/simple_rnn_3/Shape:output:0:module_wrapper_3/simple_rnn_3/strided_slice/stack:output:0<module_wrapper_3/simple_rnn_3/strided_slice/stack_1:output:0<module_wrapper_3/simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
,module_wrapper_3/simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
*module_wrapper_3/simple_rnn_3/zeros/packedPack4module_wrapper_3/simple_rnn_3/strided_slice:output:05module_wrapper_3/simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)module_wrapper_3/simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
#module_wrapper_3/simple_rnn_3/zerosFill3module_wrapper_3/simple_rnn_3/zeros/packed:output:02module_wrapper_3/simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
,module_wrapper_3/simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
'module_wrapper_3/simple_rnn_3/transpose	Transpose-module_wrapper_2/simple_rnn_2/transpose_1:y:05module_wrapper_3/simple_rnn_3/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
%module_wrapper_3/simple_rnn_3/Shape_1Shape+module_wrapper_3/simple_rnn_3/transpose:y:0*
T0*
_output_shapes
:}
3module_wrapper_3/simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_3/simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_3/simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_3/simple_rnn_3/strided_slice_1StridedSlice.module_wrapper_3/simple_rnn_3/Shape_1:output:0<module_wrapper_3/simple_rnn_3/strided_slice_1/stack:output:0>module_wrapper_3/simple_rnn_3/strided_slice_1/stack_1:output:0>module_wrapper_3/simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
9module_wrapper_3/simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+module_wrapper_3/simple_rnn_3/TensorArrayV2TensorListReserveBmodule_wrapper_3/simple_rnn_3/TensorArrayV2/element_shape:output:06module_wrapper_3/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Smodule_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Emodule_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+module_wrapper_3/simple_rnn_3/transpose:y:0\module_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???}
3module_wrapper_3/simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_3/simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5module_wrapper_3/simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_3/simple_rnn_3/strided_slice_2StridedSlice+module_wrapper_3/simple_rnn_3/transpose:y:0<module_wrapper_3/simple_rnn_3/strided_slice_2/stack:output:0>module_wrapper_3/simple_rnn_3/strided_slice_2/stack_1:output:0>module_wrapper_3/simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Emodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpNmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
6module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMulMatMul6module_wrapper_3/simple_rnn_3/strided_slice_2:output:0Mmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Fmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpOmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0Nmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Gmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpPmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
8module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMul,module_wrapper_3/simple_rnn_3/zeros:output:0Omodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/addAddV2@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:0Bmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
4module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/ReluRelu7module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
;module_wrapper_3/simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-module_wrapper_3/simple_rnn_3/TensorArrayV2_1TensorListReserveDmodule_wrapper_3/simple_rnn_3/TensorArrayV2_1/element_shape:output:06module_wrapper_3/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???d
"module_wrapper_3/simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
6module_wrapper_3/simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????r
0module_wrapper_3/simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
#module_wrapper_3/simple_rnn_3/whileWhile9module_wrapper_3/simple_rnn_3/while/loop_counter:output:0?module_wrapper_3/simple_rnn_3/while/maximum_iterations:output:0+module_wrapper_3/simple_rnn_3/time:output:06module_wrapper_3/simple_rnn_3/TensorArrayV2_1:handle:0,module_wrapper_3/simple_rnn_3/zeros:output:06module_wrapper_3/simple_rnn_3/strided_slice_1:output:0Umodule_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resourceOmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resourcePmodule_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.module_wrapper_3_simple_rnn_3_while_body_28121*:
cond2R0
.module_wrapper_3_simple_rnn_3_while_cond_28120*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Nmodule_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
@module_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStack,module_wrapper_3/simple_rnn_3/while:output:3Wmodule_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
3module_wrapper_3/simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
5module_wrapper_3/simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5module_wrapper_3/simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-module_wrapper_3/simple_rnn_3/strided_slice_3StridedSliceImodule_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0<module_wrapper_3/simple_rnn_3/strided_slice_3/stack:output:0>module_wrapper_3/simple_rnn_3/strided_slice_3/stack_1:output:0>module_wrapper_3/simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
.module_wrapper_3/simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
)module_wrapper_3/simple_rnn_3/transpose_1	TransposeImodule_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:07module_wrapper_3/simple_rnn_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
,module_wrapper_4/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_4_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
module_wrapper_4/dense/MatMulMatMul6module_wrapper_3/simple_rnn_3/strided_slice_3:output:04module_wrapper_4/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-module_wrapper_4/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_4_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
module_wrapper_4/dense/BiasAddBiasAdd'module_wrapper_4/dense/MatMul:product:05module_wrapper_4/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'module_wrapper_4/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????	
NoOpNoOpA^module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp@^module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpB^module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp ^module_wrapper/simple_rnn/whileG^module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpH^module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp$^module_wrapper_1/simple_rnn_1/whileG^module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpF^module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpH^module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp$^module_wrapper_2/simple_rnn_2/whileG^module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpF^module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpH^module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp$^module_wrapper_3/simple_rnn_3/while.^module_wrapper_4/dense/BiasAdd/ReadVariableOp-^module_wrapper_4/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 2?
@module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp@module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2?
?module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2?
Amodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpAmodule_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2B
module_wrapper/simple_rnn/whilemodule_wrapper/simple_rnn/while2?
Fmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpFmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2?
Emodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpEmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2?
Gmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpGmodule_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2J
#module_wrapper_1/simple_rnn_1/while#module_wrapper_1/simple_rnn_1/while2?
Fmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpFmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2?
Emodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpEmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2?
Gmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpGmodule_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2J
#module_wrapper_2/simple_rnn_2/while#module_wrapper_2/simple_rnn_2/while2?
Fmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpFmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2?
Emodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpEmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2?
Gmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpGmodule_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2J
#module_wrapper_3/simple_rnn_3/while#module_wrapper_3/simple_rnn_3/while2^
-module_wrapper_4/dense/BiasAdd/ReadVariableOp-module_wrapper_4/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_4/dense/MatMul/ReadVariableOp,module_wrapper_4/dense/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
while_body_26234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_26256_0:
??,
while_simple_rnn_cell_26258_0:	?1
while_simple_rnn_cell_26260_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_26256:
??*
while_simple_rnn_cell_26258:	?/
while_simple_rnn_cell_26260:
????-while/simple_rnn_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_26256_0while_simple_rnn_cell_26258_0while_simple_rnn_cell_26260_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_26221?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_26256while_simple_rnn_cell_26256_0"<
while_simple_rnn_cell_26258while_simple_rnn_cell_26258_0"<
while_simple_rnn_cell_26260while_simple_rnn_cell_26260_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?=
?
E__inference_simple_rnn_layer_call_and_return_conditional_losses_29379
inputs_0B
.simple_rnn_cell_matmul_readvariableop_resource:
??>
/simple_rnn_cell_biasadd_readvariableop_resource:	?D
0simple_rnn_cell_matmul_1_readvariableop_resource:
??
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????h
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29313*
condR
while_cond_29312*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
? 
?
while_body_26818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
while_simple_rnn_cell_2_26840_0:
??.
while_simple_rnn_cell_2_26842_0:	?3
while_simple_rnn_cell_2_26844_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_2_26840:
??,
while_simple_rnn_cell_2_26842:	?1
while_simple_rnn_cell_2_26844:
????/while/simple_rnn_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
/while/simple_rnn_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_2_26840_0while_simple_rnn_cell_2_26842_0while_simple_rnn_cell_2_26844_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_26805?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity8while/simple_rnn_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_2_26840while_simple_rnn_cell_2_26840_0"@
while_simple_rnn_cell_2_26842while_simple_rnn_cell_2_26842_0"@
while_simple_rnn_cell_2_26844while_simple_rnn_cell_2_26844_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_2/StatefulPartitionedCall/while/simple_rnn_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?G
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_28367

args_0M
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:
??I
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	?O
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
??
identity??1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?simple_rnn/whileF
simple_rnn/ShapeShapeargs_0*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:??????????n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose	Transposeargs_0"simple_rnn/transpose/perm:output:0*
T0*,
_output_shapes
:??????????Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????~
simple_rnn/simple_rnn_cell/ReluRelu"simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:??????????y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *'
bodyR
simple_rnn_while_body_28301*'
condR
simple_rnn_while_cond_28300*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????n
IdentityIdentitysimple_rnn/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?I
?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25312

args_0Q
=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:
??M
>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:	?S
?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp?4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp?6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp?simple_rnn_3/whileH
simple_rnn_3/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_sliceStridedSlicesimple_rnn_3/Shape:output:0)simple_rnn_3/strided_slice/stack:output:0+simple_rnn_3/strided_slice/stack_1:output:0+simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_3/zeros/packedPack#simple_rnn_3/strided_slice:output:0$simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_3/zerosFill"simple_rnn_3/zeros/packed:output:0!simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_3/transpose	Transposeargs_0$simple_rnn_3/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_3/Shape_1Shapesimple_rnn_3/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_1StridedSlicesimple_rnn_3/Shape_1:output:0+simple_rnn_3/strided_slice_1/stack:output:0-simple_rnn_3/strided_slice_1/stack_1:output:0-simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_3/TensorArrayV2TensorListReserve1simple_rnn_3/TensorArrayV2/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_3/transpose:y:0Ksimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_2StridedSlicesimple_rnn_3/transpose:y:0+simple_rnn_3/strided_slice_2/stack:output:0-simple_rnn_3/strided_slice_2/stack_1:output:0-simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_3/simple_rnn_cell_3/MatMulMatMul%simple_rnn_3/strided_slice_2:output:0<simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0=simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMulsimple_rnn_3/zeros:output:0>simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_3/simple_rnn_cell_3/addAddV2/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_3/simple_rnn_cell_3/ReluRelu&simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_3/TensorArrayV2_1TensorListReserve3simple_rnn_3/TensorArrayV2_1/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_3/whileWhile(simple_rnn_3/while/loop_counter:output:0.simple_rnn_3/while/maximum_iterations:output:0simple_rnn_3/time:output:0%simple_rnn_3/TensorArrayV2_1:handle:0simple_rnn_3/zeros:output:0%simple_rnn_3/strided_slice_1:output:0Dsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_3_while_body_25246*)
cond!R
simple_rnn_3_while_cond_25245*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_3/while:output:3Fsimple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_3StridedSlice8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_3/strided_slice_3/stack:output:0-simple_rnn_3/strided_slice_3/stack_1:output:0-simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_3/transpose_1	Transpose8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????u
IdentityIdentity%simple_rnn_3/strided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp^simple_rnn_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2p
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_3/whilesimple_rnn_3/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?!
?
E__inference_sequential_layer_call_and_return_conditional_losses_26094
module_wrapper_input(
module_wrapper_26060:
??#
module_wrapper_26062:	?(
module_wrapper_26064:
??*
module_wrapper_1_26067:
??%
module_wrapper_1_26069:	?*
module_wrapper_1_26071:
??*
module_wrapper_2_26074:
??%
module_wrapper_2_26076:	?*
module_wrapper_2_26078:
??*
module_wrapper_3_26081:
??%
module_wrapper_3_26083:	?*
module_wrapper_3_26085:
??)
module_wrapper_4_26088:	?$
module_wrapper_4_26090:
identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_4/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_26060module_wrapper_26062module_wrapper_26064*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24964?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0module_wrapper_1_26067module_wrapper_1_26069module_wrapper_1_26071*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25080?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_26074module_wrapper_2_26076module_wrapper_2_26078*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25196?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0module_wrapper_3_26081module_wrapper_3_26083module_wrapper_3_26085*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25312?
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0module_wrapper_4_26088module_wrapper_4_26090*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25330?
IdentityIdentity1module_wrapper_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall:b ^
,
_output_shapes
:??????????
.
_user_specified_namemodule_wrapper_input
?
?
while_cond_29896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29896___redundant_placeholder03
/while_while_cond_29896___redundant_placeholder13
/while_while_cond_29896___redundant_placeholder23
/while_while_cond_29896___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
simple_rnn_2_while_cond_287766
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_28
4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1M
Isimple_rnn_2_while_simple_rnn_2_while_cond_28776___redundant_placeholder0M
Isimple_rnn_2_while_simple_rnn_2_while_cond_28776___redundant_placeholder1M
Isimple_rnn_2_while_simple_rnn_2_while_cond_28776___redundant_placeholder2M
Isimple_rnn_2_while_simple_rnn_2_while_cond_28776___redundant_placeholder3
simple_rnn_2_while_identity
?
simple_rnn_2/while/LessLesssimple_rnn_2_while_placeholder4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?4
?
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_26881

inputs+
simple_rnn_cell_2_26806:
??&
simple_rnn_cell_2_26808:	?+
simple_rnn_cell_2_26810:
??
identity??)simple_rnn_cell_2/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
)simple_rnn_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_2_26806simple_rnn_cell_2_26808simple_rnn_cell_2_26810*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_26805n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_2_26806simple_rnn_cell_2_26808simple_rnn_cell_2_26810*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_26818*
condR
while_cond_26817*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????z
NoOpNoOp*^simple_rnn_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2V
)simple_rnn_cell_2/StatefulPartitionedCall)simple_rnn_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?=
?
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_30093
inputs_0D
0simple_rnn_cell_3_matmul_readvariableop_resource:
??@
1simple_rnn_cell_3_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_3/BiasAdd/ReadVariableOp?'simple_rnn_cell_3/MatMul/ReadVariableOp?)simple_rnn_cell_3/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_3/ReluRelusimple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_30027*
condR
while_cond_30026*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?G
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25912

args_0M
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:
??I
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	?O
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
??
identity??1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?simple_rnn/whileF
simple_rnn/ShapeShapeargs_0*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:??????????n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose	Transposeargs_0"simple_rnn/transpose/perm:output:0*
T0*,
_output_shapes
:??????????Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????~
simple_rnn/simple_rnn_cell/ReluRelu"simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:??????????y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *'
bodyR
simple_rnn_while_body_25846*'
condR
simple_rnn_while_cond_25845*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????n
IdentityIdentitysimple_rnn/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_26513

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?6
?
simple_rnn_while_body_258462
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0U
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:
??Q
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	?W
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
??
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorS
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:
??O
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	?U
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
????7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
%simple_rnn/while/simple_rnn_cell/ReluRelu(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder3simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:???X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_4Identity3simple_rnn/while/simple_rnn_cell/Relu:activations:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"?
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"?
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_30263

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?

?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25330

args_07
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0u
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_27097

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?8
?
simple_rnn_3_while_body_254536
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_25
1simple_rnn_3_while_simple_rnn_3_strided_slice_1_0q
msimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
??
simple_rnn_3_while_identity!
simple_rnn_3_while_identity_1!
simple_rnn_3_while_identity_2!
simple_rnn_3_while_identity_3!
simple_rnn_3_while_identity_43
/simple_rnn_3_while_simple_rnn_3_strided_slice_1o
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:
??S
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:	?Y
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:
????;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp?:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp?<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp?
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_3_while_placeholderMsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_3_while_placeholder_2Dsimple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_3/while/simple_rnn_cell_3/addAddV25simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_3/while/simple_rnn_cell_3/ReluRelu,simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_3_while_placeholder_1simple_rnn_3_while_placeholder7simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_3/while/addAddV2simple_rnn_3_while_placeholder!simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_3/while/add_1AddV22simple_rnn_3_while_simple_rnn_3_while_loop_counter#simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/add_1:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_1Identity8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_2Identitysimple_rnn_3/while/add:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_3IdentityGsimple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_4Identity7simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0^simple_rnn_3/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_3/while/NoOpNoOp<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0"G
simple_rnn_3_while_identity_1&simple_rnn_3/while/Identity_1:output:0"G
simple_rnn_3_while_identity_2&simple_rnn_3/while/Identity_2:output:0"G
simple_rnn_3_while_identity_3&simple_rnn_3/while/Identity_3:output:0"G
simple_rnn_3_while_identity_4&simple_rnn_3/while/Identity_4:output:0"d
/simple_rnn_3_while_simple_rnn_3_strided_slice_11simple_rnn_3_while_simple_rnn_3_strided_slice_1_0"?
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"?
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"?
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"?
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensormsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?I
?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_29189

args_0Q
=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:
??M
>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:	?S
?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp?4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp?6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp?simple_rnn_3/whileH
simple_rnn_3/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_sliceStridedSlicesimple_rnn_3/Shape:output:0)simple_rnn_3/strided_slice/stack:output:0+simple_rnn_3/strided_slice/stack_1:output:0+simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_3/zeros/packedPack#simple_rnn_3/strided_slice:output:0$simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_3/zerosFill"simple_rnn_3/zeros/packed:output:0!simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_3/transpose	Transposeargs_0$simple_rnn_3/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_3/Shape_1Shapesimple_rnn_3/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_1StridedSlicesimple_rnn_3/Shape_1:output:0+simple_rnn_3/strided_slice_1/stack:output:0-simple_rnn_3/strided_slice_1/stack_1:output:0-simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_3/TensorArrayV2TensorListReserve1simple_rnn_3/TensorArrayV2/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_3/transpose:y:0Ksimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_2StridedSlicesimple_rnn_3/transpose:y:0+simple_rnn_3/strided_slice_2/stack:output:0-simple_rnn_3/strided_slice_2/stack_1:output:0-simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_3/simple_rnn_cell_3/MatMulMatMul%simple_rnn_3/strided_slice_2:output:0<simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0=simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMulsimple_rnn_3/zeros:output:0>simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_3/simple_rnn_cell_3/addAddV2/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_3/simple_rnn_cell_3/ReluRelu&simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_3/TensorArrayV2_1TensorListReserve3simple_rnn_3/TensorArrayV2_1/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_3/whileWhile(simple_rnn_3/while/loop_counter:output:0.simple_rnn_3/while/maximum_iterations:output:0simple_rnn_3/time:output:0%simple_rnn_3/TensorArrayV2_1:handle:0simple_rnn_3/zeros:output:0%simple_rnn_3/strided_slice_1:output:0Dsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_3_while_body_29123*)
cond!R
simple_rnn_3_while_cond_29122*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_3/while:output:3Fsimple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_3StridedSlice8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_3/strided_slice_3/stack:output:0-simple_rnn_3/strided_slice_3/stack_1:output:0-simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_3/transpose_1	Transpose8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????u
IdentityIdentity%simple_rnn_3/strided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp^simple_rnn_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2p
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_3/whilesimple_rnn_3/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_1_layer_call_fn_28724

args_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25080t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
*__inference_sequential_layer_call_fn_25368
module_wrapper_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
??
	unknown_9:	?

unknown_10:
??

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
,
_output_shapes
:??????????
.
_user_specified_namemodule_wrapper_input
?8
?
simple_rnn_2_while_body_287776
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_25
1simple_rnn_2_while_simple_rnn_2_strided_slice_1_0q
msimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
??
simple_rnn_2_while_identity!
simple_rnn_2_while_identity_1!
simple_rnn_2_while_identity_2!
simple_rnn_2_while_identity_3!
simple_rnn_2_while_identity_43
/simple_rnn_2_while_simple_rnn_2_strided_slice_1o
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource:
??S
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:	?Y
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:
????;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp?:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp?<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp?
Dsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_2_while_placeholderMsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMul=simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAdd5simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0Csimple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul simple_rnn_2_while_placeholder_2Dsimple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_2/while/simple_rnn_cell_2/addAddV25simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:07simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_2/while/simple_rnn_cell_2/ReluRelu,simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_2_while_placeholder_1simple_rnn_2_while_placeholder7simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_2/while/addAddV2simple_rnn_2_while_placeholder!simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_2/while/add_1AddV22simple_rnn_2_while_simple_rnn_2_while_loop_counter#simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/add_1:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_1Identity8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_2Identitysimple_rnn_2/while/add:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_3IdentityGsimple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_4Identity7simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0^simple_rnn_2/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_2/while/NoOpNoOp<^simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;^simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp=^simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0"G
simple_rnn_2_while_identity_1&simple_rnn_2/while/Identity_1:output:0"G
simple_rnn_2_while_identity_2&simple_rnn_2/while/Identity_2:output:0"G
simple_rnn_2_while_identity_3&simple_rnn_2/while/Identity_3:output:0"G
simple_rnn_2_while_identity_4&simple_rnn_2/while/Identity_4:output:0"d
/simple_rnn_2_while_simple_rnn_2_strided_slice_11simple_rnn_2_while_simple_rnn_2_strided_slice_1_0"?
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourceFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"?
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourceGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"?
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"?
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensormsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2x
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2|
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
/__inference_simple_rnn_cell_layer_call_fn_30215

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_26221p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?4
?
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_27173

inputs+
simple_rnn_cell_3_27098:
??&
simple_rnn_cell_3_27100:	?+
simple_rnn_cell_3_27102:
??
identity??)simple_rnn_cell_3/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_3_27098simple_rnn_cell_3_27100simple_rnn_cell_3_27102*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_27097n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_27098simple_rnn_cell_3_27100simple_rnn_cell_3_27102*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_27110*
condR
while_cond_27109*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????z
NoOpNoOp*^simple_rnn_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?G
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24964

args_0M
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:
??I
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	?O
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
??
identity??1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?simple_rnn/whileF
simple_rnn/ShapeShapeargs_0*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:??????????n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose	Transposeargs_0"simple_rnn/transpose/perm:output:0*
T0*,
_output_shapes
:??????????Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????~
simple_rnn/simple_rnn_cell/ReluRelu"simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:??????????y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *'
bodyR
simple_rnn_while_body_24898*'
condR
simple_rnn_while_cond_24897*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????n
IdentityIdentitysimple_rnn/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
/__inference_simple_rnn_cell_layer_call_fn_30229

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_26341p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
while_cond_27268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_27268___redundant_placeholder03
/while_while_cond_27268___redundant_placeholder13
/while_while_cond_27268___redundant_placeholder23
/while_while_cond_27268___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?H
?
.module_wrapper_1_simple_rnn_1_while_body_27487X
Tmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_loop_counter^
Zmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_maximum_iterations3
/module_wrapper_1_simple_rnn_1_while_placeholder5
1module_wrapper_1_simple_rnn_1_while_placeholder_15
1module_wrapper_1_simple_rnn_1_while_placeholder_2W
Smodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_strided_slice_1_0?
?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0j
Vmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
??f
Wmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	?l
Xmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
??0
,module_wrapper_1_simple_rnn_1_while_identity2
.module_wrapper_1_simple_rnn_1_while_identity_12
.module_wrapper_1_simple_rnn_1_while_identity_22
.module_wrapper_1_simple_rnn_1_while_identity_32
.module_wrapper_1_simple_rnn_1_while_identity_4U
Qmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_strided_slice_1?
?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorh
Tmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:
??d
Umodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	?j
Vmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
????Lmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?Kmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?Mmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
Umodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Gmodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0/module_wrapper_1_simple_rnn_1_while_placeholder^module_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Kmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpVmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
<module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMulNmodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Smodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Lmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpWmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
=module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAddFmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Tmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpXmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
>module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul1module_wrapper_1_simple_rnn_1_while_placeholder_2Umodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/addAddV2Fmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:0Hmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
:module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/ReluRelu=module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
Hmodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1module_wrapper_1_simple_rnn_1_while_placeholder_1/module_wrapper_1_simple_rnn_1_while_placeholderHmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:???k
)module_wrapper_1/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
'module_wrapper_1/simple_rnn_1/while/addAddV2/module_wrapper_1_simple_rnn_1_while_placeholder2module_wrapper_1/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: m
+module_wrapper_1/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
)module_wrapper_1/simple_rnn_1/while/add_1AddV2Tmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_loop_counter4module_wrapper_1/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ?
,module_wrapper_1/simple_rnn_1/while/IdentityIdentity-module_wrapper_1/simple_rnn_1/while/add_1:z:0)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_1/simple_rnn_1/while/Identity_1IdentityZmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_maximum_iterations)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_1/simple_rnn_1/while/Identity_2Identity+module_wrapper_1/simple_rnn_1/while/add:z:0)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_1/simple_rnn_1/while/Identity_3IdentityXmodule_wrapper_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_1/simple_rnn_1/while/Identity_4IdentityHmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0)^module_wrapper_1/simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:???????????
(module_wrapper_1/simple_rnn_1/while/NoOpNoOpM^module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpL^module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpN^module_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,module_wrapper_1_simple_rnn_1_while_identity5module_wrapper_1/simple_rnn_1/while/Identity:output:0"i
.module_wrapper_1_simple_rnn_1_while_identity_17module_wrapper_1/simple_rnn_1/while/Identity_1:output:0"i
.module_wrapper_1_simple_rnn_1_while_identity_27module_wrapper_1/simple_rnn_1/while/Identity_2:output:0"i
.module_wrapper_1_simple_rnn_1_while_identity_37module_wrapper_1/simple_rnn_1/while/Identity_3:output:0"i
.module_wrapper_1_simple_rnn_1_while_identity_47module_wrapper_1/simple_rnn_1/while/Identity_4:output:0"?
Qmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_strided_slice_1Smodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_strided_slice_1_0"?
Umodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceWmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
Vmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceXmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
Tmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceVmodule_wrapper_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor?module_wrapper_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Lmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpLmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2?
Kmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpKmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2?
Mmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpMmodule_wrapper_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
simple_rnn_3_while_cond_291226
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_28
4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1M
Isimple_rnn_3_while_simple_rnn_3_while_cond_29122___redundant_placeholder0M
Isimple_rnn_3_while_simple_rnn_3_while_cond_29122___redundant_placeholder1M
Isimple_rnn_3_while_simple_rnn_3_while_cond_29122___redundant_placeholder2M
Isimple_rnn_3_while_simple_rnn_3_while_cond_29122___redundant_placeholder3
simple_rnn_3_while_identity
?
simple_rnn_3/while/LessLesssimple_rnn_3_while_placeholder4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
? 
?
while_body_26685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
while_simple_rnn_cell_1_26707_0:
??.
while_simple_rnn_cell_1_26709_0:	?3
while_simple_rnn_cell_1_26711_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_1_26707:
??,
while_simple_rnn_cell_1_26709:	?1
while_simple_rnn_cell_1_26711:
????/while/simple_rnn_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_1_26707_0while_simple_rnn_cell_1_26709_0while_simple_rnn_cell_1_26711_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_26633?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_1_26707while_simple_rnn_cell_1_26707_0"@
while_simple_rnn_cell_1_26709while_simple_rnn_cell_1_26709_0"@
while_simple_rnn_cell_1_26711while_simple_rnn_cell_1_26711_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?=
?
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_30201
inputs_0D
0simple_rnn_cell_3_matmul_readvariableop_resource:
??@
1simple_rnn_cell_3_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_3/BiasAdd/ReadVariableOp?'simple_rnn_cell_3/MatMul/ReadVariableOp?)simple_rnn_cell_3/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_3/ReluRelusimple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_30135*
condR
while_cond_30134*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
? 
?
while_body_26393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_26415_0:
??,
while_simple_rnn_cell_26417_0:	?1
while_simple_rnn_cell_26419_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_26415:
??*
while_simple_rnn_cell_26417:	?/
while_simple_rnn_cell_26419:
????-while/simple_rnn_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_26415_0while_simple_rnn_cell_26417_0while_simple_rnn_cell_26419_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_26341?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_26415while_simple_rnn_cell_26415_0"<
while_simple_rnn_cell_26417while_simple_rnn_cell_26417_0"<
while_simple_rnn_cell_26419while_simple_rnn_cell_26419_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
.module_wrapper_1_simple_rnn_1_while_cond_27486X
Tmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_loop_counter^
Zmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_maximum_iterations3
/module_wrapper_1_simple_rnn_1_while_placeholder5
1module_wrapper_1_simple_rnn_1_while_placeholder_15
1module_wrapper_1_simple_rnn_1_while_placeholder_2Z
Vmodule_wrapper_1_simple_rnn_1_while_less_module_wrapper_1_simple_rnn_1_strided_slice_1o
kmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_cond_27486___redundant_placeholder0o
kmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_cond_27486___redundant_placeholder1o
kmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_cond_27486___redundant_placeholder2o
kmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_cond_27486___redundant_placeholder30
,module_wrapper_1_simple_rnn_1_while_identity
?
(module_wrapper_1/simple_rnn_1/while/LessLess/module_wrapper_1_simple_rnn_1_while_placeholderVmodule_wrapper_1_simple_rnn_1_while_less_module_wrapper_1_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: ?
,module_wrapper_1/simple_rnn_1/while/IdentityIdentity,module_wrapper_1/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "e
,module_wrapper_1_simple_rnn_1_while_identity5module_wrapper_1/simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?8
?
simple_rnn_3_while_body_290156
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_25
1simple_rnn_3_while_simple_rnn_3_strided_slice_1_0q
msimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
??
simple_rnn_3_while_identity!
simple_rnn_3_while_identity_1!
simple_rnn_3_while_identity_2!
simple_rnn_3_while_identity_3!
simple_rnn_3_while_identity_43
/simple_rnn_3_while_simple_rnn_3_strided_slice_1o
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:
??S
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:	?Y
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:
????;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp?:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp?<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp?
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_3_while_placeholderMsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_3_while_placeholder_2Dsimple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_3/while/simple_rnn_cell_3/addAddV25simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_3/while/simple_rnn_cell_3/ReluRelu,simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_3_while_placeholder_1simple_rnn_3_while_placeholder7simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_3/while/addAddV2simple_rnn_3_while_placeholder!simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_3/while/add_1AddV22simple_rnn_3_while_simple_rnn_3_while_loop_counter#simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/add_1:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_1Identity8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_2Identitysimple_rnn_3/while/add:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_3IdentityGsimple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_3/while/Identity_4Identity7simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0^simple_rnn_3/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_3/while/NoOpNoOp<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0"G
simple_rnn_3_while_identity_1&simple_rnn_3/while/Identity_1:output:0"G
simple_rnn_3_while_identity_2&simple_rnn_3/while/Identity_2:output:0"G
simple_rnn_3_while_identity_3&simple_rnn_3/while/Identity_3:output:0"G
simple_rnn_3_while_identity_4&simple_rnn_3/while/Identity_4:output:0"d
/simple_rnn_3_while_simple_rnn_3_strided_slice_11simple_rnn_3_while_simple_rnn_3_strided_slice_1_0"?
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"?
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"?
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"?
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensormsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?!
?
E__inference_sequential_layer_call_and_return_conditional_losses_26131
module_wrapper_input(
module_wrapper_26097:
??#
module_wrapper_26099:	?(
module_wrapper_26101:
??*
module_wrapper_1_26104:
??%
module_wrapper_1_26106:	?*
module_wrapper_1_26108:
??*
module_wrapper_2_26111:
??%
module_wrapper_2_26113:	?*
module_wrapper_2_26115:
??*
module_wrapper_3_26118:
??%
module_wrapper_3_26120:	?*
module_wrapper_3_26122:
??)
module_wrapper_4_26125:	?$
module_wrapper_4_26127:
identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_4/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_26097module_wrapper_26099module_wrapper_26101*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25912?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0module_wrapper_1_26104module_wrapper_1_26106module_wrapper_1_26108*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25781?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_26111module_wrapper_2_26113module_wrapper_2_26115*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25650?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0module_wrapper_3_26118module_wrapper_3_26120module_wrapper_3_26122*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25519?
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0module_wrapper_4_26125module_wrapper_4_26127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25390?
IdentityIdentity1module_wrapper_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall:b ^
,
_output_shapes
:??????????
.
_user_specified_namemodule_wrapper_input
?

?
1__inference_simple_rnn_cell_2_layer_call_fn_30339

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_26805p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?H
?
.module_wrapper_2_simple_rnn_2_while_body_28017X
Tmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_loop_counter^
Zmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_maximum_iterations3
/module_wrapper_2_simple_rnn_2_while_placeholder5
1module_wrapper_2_simple_rnn_2_while_placeholder_15
1module_wrapper_2_simple_rnn_2_while_placeholder_2W
Smodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_strided_slice_1_0?
?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0j
Vmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0:
??f
Wmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:	?l
Xmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
??0
,module_wrapper_2_simple_rnn_2_while_identity2
.module_wrapper_2_simple_rnn_2_while_identity_12
.module_wrapper_2_simple_rnn_2_while_identity_22
.module_wrapper_2_simple_rnn_2_while_identity_32
.module_wrapper_2_simple_rnn_2_while_identity_4U
Qmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_strided_slice_1?
?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorh
Tmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource:
??d
Umodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:	?j
Vmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:
????Lmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp?Kmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp?Mmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp?
Umodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Gmodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0/module_wrapper_2_simple_rnn_2_while_placeholder^module_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Kmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpVmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
<module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMulNmodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Smodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Lmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpWmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
=module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAddFmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0Tmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpXmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
>module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul1module_wrapper_2_simple_rnn_2_while_placeholder_2Umodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/addAddV2Fmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:0Hmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
:module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/ReluRelu=module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
Hmodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1module_wrapper_2_simple_rnn_2_while_placeholder_1/module_wrapper_2_simple_rnn_2_while_placeholderHmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0*
_output_shapes
: *
element_dtype0:???k
)module_wrapper_2/simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
'module_wrapper_2/simple_rnn_2/while/addAddV2/module_wrapper_2_simple_rnn_2_while_placeholder2module_wrapper_2/simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: m
+module_wrapper_2/simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
)module_wrapper_2/simple_rnn_2/while/add_1AddV2Tmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_loop_counter4module_wrapper_2/simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: ?
,module_wrapper_2/simple_rnn_2/while/IdentityIdentity-module_wrapper_2/simple_rnn_2/while/add_1:z:0)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_2/simple_rnn_2/while/Identity_1IdentityZmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_maximum_iterations)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_2/simple_rnn_2/while/Identity_2Identity+module_wrapper_2/simple_rnn_2/while/add:z:0)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_2/simple_rnn_2/while/Identity_3IdentityXmodule_wrapper_2/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_2/simple_rnn_2/while/Identity_4IdentityHmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0)^module_wrapper_2/simple_rnn_2/while/NoOp*
T0*(
_output_shapes
:???????????
(module_wrapper_2/simple_rnn_2/while/NoOpNoOpM^module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpL^module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpN^module_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,module_wrapper_2_simple_rnn_2_while_identity5module_wrapper_2/simple_rnn_2/while/Identity:output:0"i
.module_wrapper_2_simple_rnn_2_while_identity_17module_wrapper_2/simple_rnn_2/while/Identity_1:output:0"i
.module_wrapper_2_simple_rnn_2_while_identity_27module_wrapper_2/simple_rnn_2/while/Identity_2:output:0"i
.module_wrapper_2_simple_rnn_2_while_identity_37module_wrapper_2/simple_rnn_2/while/Identity_3:output:0"i
.module_wrapper_2_simple_rnn_2_while_identity_47module_wrapper_2/simple_rnn_2/while/Identity_4:output:0"?
Qmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_strided_slice_1Smodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_strided_slice_1_0"?
Umodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourceWmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"?
Vmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourceXmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"?
Tmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceVmodule_wrapper_2_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"?
?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor?module_wrapper_2_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_2_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Lmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpLmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2?
Kmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpKmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2?
Mmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpMmodule_wrapper_2/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
0__inference_module_wrapper_2_layer_call_fn_28973

args_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25650t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_1_layer_call_fn_28735

args_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25781t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
simple_rnn_2_while_cond_288846
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_28
4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1M
Isimple_rnn_2_while_simple_rnn_2_while_cond_28884___redundant_placeholder0M
Isimple_rnn_2_while_simple_rnn_2_while_cond_28884___redundant_placeholder1M
Isimple_rnn_2_while_simple_rnn_2_while_cond_28884___redundant_placeholder2M
Isimple_rnn_2_while_simple_rnn_2_while_cond_28884___redundant_placeholder3
simple_rnn_2_while_identity
?
simple_rnn_2/while/LessLesssimple_rnn_2_while_placeholder4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?
 __inference__wrapped_model_24849
module_wrapper_inputg
Ssequential_module_wrapper_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:
??c
Tsequential_module_wrapper_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	?i
Usequential_module_wrapper_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
??m
Ysequential_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:
??i
Zsequential_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	?o
[sequential_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
??m
Ysequential_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource:
??i
Zsequential_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:	?o
[sequential_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:
??m
Ysequential_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:
??i
Zsequential_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:	?o
[sequential_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:
??S
@sequential_module_wrapper_4_dense_matmul_readvariableop_resource:	?O
Asequential_module_wrapper_4_dense_biasadd_readvariableop_resource:
identity??Ksequential/module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?Jsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?Lsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?*sequential/module_wrapper/simple_rnn/while?Qsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp?Psequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?Rsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp?.sequential/module_wrapper_1/simple_rnn_1/while?Qsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp?Psequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp?Rsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp?.sequential/module_wrapper_2/simple_rnn_2/while?Qsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp?Psequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp?Rsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp?.sequential/module_wrapper_3/simple_rnn_3/while?8sequential/module_wrapper_4/dense/BiasAdd/ReadVariableOp?7sequential/module_wrapper_4/dense/MatMul/ReadVariableOpn
*sequential/module_wrapper/simple_rnn/ShapeShapemodule_wrapper_input*
T0*
_output_shapes
:?
8sequential/module_wrapper/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
:sequential/module_wrapper/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:sequential/module_wrapper/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2sequential/module_wrapper/simple_rnn/strided_sliceStridedSlice3sequential/module_wrapper/simple_rnn/Shape:output:0Asequential/module_wrapper/simple_rnn/strided_slice/stack:output:0Csequential/module_wrapper/simple_rnn/strided_slice/stack_1:output:0Csequential/module_wrapper/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
3sequential/module_wrapper/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
1sequential/module_wrapper/simple_rnn/zeros/packedPack;sequential/module_wrapper/simple_rnn/strided_slice:output:0<sequential/module_wrapper/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:u
0sequential/module_wrapper/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
*sequential/module_wrapper/simple_rnn/zerosFill:sequential/module_wrapper/simple_rnn/zeros/packed:output:09sequential/module_wrapper/simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
3sequential/module_wrapper/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
.sequential/module_wrapper/simple_rnn/transpose	Transposemodule_wrapper_input<sequential/module_wrapper/simple_rnn/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
,sequential/module_wrapper/simple_rnn/Shape_1Shape2sequential/module_wrapper/simple_rnn/transpose:y:0*
T0*
_output_shapes
:?
:sequential/module_wrapper/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<sequential/module_wrapper/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential/module_wrapper/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential/module_wrapper/simple_rnn/strided_slice_1StridedSlice5sequential/module_wrapper/simple_rnn/Shape_1:output:0Csequential/module_wrapper/simple_rnn/strided_slice_1/stack:output:0Esequential/module_wrapper/simple_rnn/strided_slice_1/stack_1:output:0Esequential/module_wrapper/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@sequential/module_wrapper/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2sequential/module_wrapper/simple_rnn/TensorArrayV2TensorListReserveIsequential/module_wrapper/simple_rnn/TensorArrayV2/element_shape:output:0=sequential/module_wrapper/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Zsequential/module_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Lsequential/module_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2sequential/module_wrapper/simple_rnn/transpose:y:0csequential/module_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
:sequential/module_wrapper/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<sequential/module_wrapper/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential/module_wrapper/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential/module_wrapper/simple_rnn/strided_slice_2StridedSlice2sequential/module_wrapper/simple_rnn/transpose:y:0Csequential/module_wrapper/simple_rnn/strided_slice_2/stack:output:0Esequential/module_wrapper/simple_rnn/strided_slice_2/stack_1:output:0Esequential/module_wrapper/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Jsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpSsequential_module_wrapper_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
;sequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMulMatMul=sequential/module_wrapper/simple_rnn/strided_slice_2:output:0Rsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Ksequential/module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpTsequential_module_wrapper_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
<sequential/module_wrapper/simple_rnn/simple_rnn_cell/BiasAddBiasAddEsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul:product:0Ssequential/module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Lsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpUsequential_module_wrapper_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
=sequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1MatMul3sequential/module_wrapper/simple_rnn/zeros:output:0Tsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
8sequential/module_wrapper/simple_rnn/simple_rnn_cell/addAddV2Esequential/module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd:output:0Gsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential/module_wrapper/simple_rnn/simple_rnn_cell/ReluRelu<sequential/module_wrapper/simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
Bsequential/module_wrapper/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4sequential/module_wrapper/simple_rnn/TensorArrayV2_1TensorListReserveKsequential/module_wrapper/simple_rnn/TensorArrayV2_1/element_shape:output:0=sequential/module_wrapper/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???k
)sequential/module_wrapper/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
=sequential/module_wrapper/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????y
7sequential/module_wrapper/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?	
*sequential/module_wrapper/simple_rnn/whileWhile@sequential/module_wrapper/simple_rnn/while/loop_counter:output:0Fsequential/module_wrapper/simple_rnn/while/maximum_iterations:output:02sequential/module_wrapper/simple_rnn/time:output:0=sequential/module_wrapper/simple_rnn/TensorArrayV2_1:handle:03sequential/module_wrapper/simple_rnn/zeros:output:0=sequential/module_wrapper/simple_rnn/strided_slice_1:output:0\sequential/module_wrapper/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ssequential_module_wrapper_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceTsequential_module_wrapper_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceUsequential_module_wrapper_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *A
body9R7
5sequential_module_wrapper_simple_rnn_while_body_24465*A
cond9R7
5sequential_module_wrapper_simple_rnn_while_cond_24464*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Usequential/module_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Gsequential/module_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack3sequential/module_wrapper/simple_rnn/while:output:3^sequential/module_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
:sequential/module_wrapper/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
<sequential/module_wrapper/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
<sequential/module_wrapper/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential/module_wrapper/simple_rnn/strided_slice_3StridedSlicePsequential/module_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0Csequential/module_wrapper/simple_rnn/strided_slice_3/stack:output:0Esequential/module_wrapper/simple_rnn/strided_slice_3/stack_1:output:0Esequential/module_wrapper/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
5sequential/module_wrapper/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
0sequential/module_wrapper/simple_rnn/transpose_1	TransposePsequential/module_wrapper/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0>sequential/module_wrapper/simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
.sequential/module_wrapper_1/simple_rnn_1/ShapeShape4sequential/module_wrapper/simple_rnn/transpose_1:y:0*
T0*
_output_shapes
:?
<sequential/module_wrapper_1/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential/module_wrapper_1/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential/module_wrapper_1/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential/module_wrapper_1/simple_rnn_1/strided_sliceStridedSlice7sequential/module_wrapper_1/simple_rnn_1/Shape:output:0Esequential/module_wrapper_1/simple_rnn_1/strided_slice/stack:output:0Gsequential/module_wrapper_1/simple_rnn_1/strided_slice/stack_1:output:0Gsequential/module_wrapper_1/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
7sequential/module_wrapper_1/simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
5sequential/module_wrapper_1/simple_rnn_1/zeros/packedPack?sequential/module_wrapper_1/simple_rnn_1/strided_slice:output:0@sequential/module_wrapper_1/simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:y
4sequential/module_wrapper_1/simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential/module_wrapper_1/simple_rnn_1/zerosFill>sequential/module_wrapper_1/simple_rnn_1/zeros/packed:output:0=sequential/module_wrapper_1/simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
7sequential/module_wrapper_1/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
2sequential/module_wrapper_1/simple_rnn_1/transpose	Transpose4sequential/module_wrapper/simple_rnn/transpose_1:y:0@sequential/module_wrapper_1/simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
0sequential/module_wrapper_1/simple_rnn_1/Shape_1Shape6sequential/module_wrapper_1/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:?
>sequential/module_wrapper_1/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/module_wrapper_1/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/module_wrapper_1/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/module_wrapper_1/simple_rnn_1/strided_slice_1StridedSlice9sequential/module_wrapper_1/simple_rnn_1/Shape_1:output:0Gsequential/module_wrapper_1/simple_rnn_1/strided_slice_1/stack:output:0Isequential/module_wrapper_1/simple_rnn_1/strided_slice_1/stack_1:output:0Isequential/module_wrapper_1/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Dsequential/module_wrapper_1/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6sequential/module_wrapper_1/simple_rnn_1/TensorArrayV2TensorListReserveMsequential/module_wrapper_1/simple_rnn_1/TensorArrayV2/element_shape:output:0Asequential/module_wrapper_1/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
^sequential/module_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Psequential/module_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor6sequential/module_wrapper_1/simple_rnn_1/transpose:y:0gsequential/module_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>sequential/module_wrapper_1/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/module_wrapper_1/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/module_wrapper_1/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/module_wrapper_1/simple_rnn_1/strided_slice_2StridedSlice6sequential/module_wrapper_1/simple_rnn_1/transpose:y:0Gsequential/module_wrapper_1/simple_rnn_1/strided_slice_2/stack:output:0Isequential/module_wrapper_1/simple_rnn_1/strided_slice_2/stack_1:output:0Isequential/module_wrapper_1/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Psequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpYsequential_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Asequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMulMatMulAsequential/module_wrapper_1/simple_rnn_1/strided_slice_2:output:0Xsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Qsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpZsequential_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Bsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAddKsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0Ysequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Rsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp[sequential_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Csequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMul7sequential/module_wrapper_1/simple_rnn_1/zeros:output:0Zsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
>sequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/addAddV2Ksequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:0Msequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/ReluReluBsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
Fsequential/module_wrapper_1/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
8sequential/module_wrapper_1/simple_rnn_1/TensorArrayV2_1TensorListReserveOsequential/module_wrapper_1/simple_rnn_1/TensorArrayV2_1/element_shape:output:0Asequential/module_wrapper_1/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???o
-sequential/module_wrapper_1/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
Asequential/module_wrapper_1/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????}
;sequential/module_wrapper_1/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?	
.sequential/module_wrapper_1/simple_rnn_1/whileWhileDsequential/module_wrapper_1/simple_rnn_1/while/loop_counter:output:0Jsequential/module_wrapper_1/simple_rnn_1/while/maximum_iterations:output:06sequential/module_wrapper_1/simple_rnn_1/time:output:0Asequential/module_wrapper_1/simple_rnn_1/TensorArrayV2_1:handle:07sequential/module_wrapper_1/simple_rnn_1/zeros:output:0Asequential/module_wrapper_1/simple_rnn_1/strided_slice_1:output:0`sequential/module_wrapper_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ysequential_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceZsequential_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource[sequential_module_wrapper_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *E
body=R;
9sequential_module_wrapper_1_simple_rnn_1_while_body_24569*E
cond=R;
9sequential_module_wrapper_1_simple_rnn_1_while_cond_24568*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Ysequential/module_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Ksequential/module_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack7sequential/module_wrapper_1/simple_rnn_1/while:output:3bsequential/module_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
>sequential/module_wrapper_1/simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
@sequential/module_wrapper_1/simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/module_wrapper_1/simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/module_wrapper_1/simple_rnn_1/strided_slice_3StridedSliceTsequential/module_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Gsequential/module_wrapper_1/simple_rnn_1/strided_slice_3/stack:output:0Isequential/module_wrapper_1/simple_rnn_1/strided_slice_3/stack_1:output:0Isequential/module_wrapper_1/simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
9sequential/module_wrapper_1/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
4sequential/module_wrapper_1/simple_rnn_1/transpose_1	TransposeTsequential/module_wrapper_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Bsequential/module_wrapper_1/simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
.sequential/module_wrapper_2/simple_rnn_2/ShapeShape8sequential/module_wrapper_1/simple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
:?
<sequential/module_wrapper_2/simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential/module_wrapper_2/simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential/module_wrapper_2/simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential/module_wrapper_2/simple_rnn_2/strided_sliceStridedSlice7sequential/module_wrapper_2/simple_rnn_2/Shape:output:0Esequential/module_wrapper_2/simple_rnn_2/strided_slice/stack:output:0Gsequential/module_wrapper_2/simple_rnn_2/strided_slice/stack_1:output:0Gsequential/module_wrapper_2/simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
7sequential/module_wrapper_2/simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
5sequential/module_wrapper_2/simple_rnn_2/zeros/packedPack?sequential/module_wrapper_2/simple_rnn_2/strided_slice:output:0@sequential/module_wrapper_2/simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:y
4sequential/module_wrapper_2/simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential/module_wrapper_2/simple_rnn_2/zerosFill>sequential/module_wrapper_2/simple_rnn_2/zeros/packed:output:0=sequential/module_wrapper_2/simple_rnn_2/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
7sequential/module_wrapper_2/simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
2sequential/module_wrapper_2/simple_rnn_2/transpose	Transpose8sequential/module_wrapper_1/simple_rnn_1/transpose_1:y:0@sequential/module_wrapper_2/simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
0sequential/module_wrapper_2/simple_rnn_2/Shape_1Shape6sequential/module_wrapper_2/simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:?
>sequential/module_wrapper_2/simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/module_wrapper_2/simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/module_wrapper_2/simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/module_wrapper_2/simple_rnn_2/strided_slice_1StridedSlice9sequential/module_wrapper_2/simple_rnn_2/Shape_1:output:0Gsequential/module_wrapper_2/simple_rnn_2/strided_slice_1/stack:output:0Isequential/module_wrapper_2/simple_rnn_2/strided_slice_1/stack_1:output:0Isequential/module_wrapper_2/simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Dsequential/module_wrapper_2/simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6sequential/module_wrapper_2/simple_rnn_2/TensorArrayV2TensorListReserveMsequential/module_wrapper_2/simple_rnn_2/TensorArrayV2/element_shape:output:0Asequential/module_wrapper_2/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
^sequential/module_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Psequential/module_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor6sequential/module_wrapper_2/simple_rnn_2/transpose:y:0gsequential/module_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>sequential/module_wrapper_2/simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/module_wrapper_2/simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/module_wrapper_2/simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/module_wrapper_2/simple_rnn_2/strided_slice_2StridedSlice6sequential/module_wrapper_2/simple_rnn_2/transpose:y:0Gsequential/module_wrapper_2/simple_rnn_2/strided_slice_2/stack:output:0Isequential/module_wrapper_2/simple_rnn_2/strided_slice_2/stack_1:output:0Isequential/module_wrapper_2/simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Psequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpYsequential_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Asequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMulMatMulAsequential/module_wrapper_2/simple_rnn_2/strided_slice_2:output:0Xsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Qsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpZsequential_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Bsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAddKsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0Ysequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Rsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp[sequential_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Csequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMul7sequential/module_wrapper_2/simple_rnn_2/zeros:output:0Zsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
>sequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/addAddV2Ksequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:0Msequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/ReluReluBsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
Fsequential/module_wrapper_2/simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
8sequential/module_wrapper_2/simple_rnn_2/TensorArrayV2_1TensorListReserveOsequential/module_wrapper_2/simple_rnn_2/TensorArrayV2_1/element_shape:output:0Asequential/module_wrapper_2/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???o
-sequential/module_wrapper_2/simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
Asequential/module_wrapper_2/simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????}
;sequential/module_wrapper_2/simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?	
.sequential/module_wrapper_2/simple_rnn_2/whileWhileDsequential/module_wrapper_2/simple_rnn_2/while/loop_counter:output:0Jsequential/module_wrapper_2/simple_rnn_2/while/maximum_iterations:output:06sequential/module_wrapper_2/simple_rnn_2/time:output:0Asequential/module_wrapper_2/simple_rnn_2/TensorArrayV2_1:handle:07sequential/module_wrapper_2/simple_rnn_2/zeros:output:0Asequential/module_wrapper_2/simple_rnn_2/strided_slice_1:output:0`sequential/module_wrapper_2/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ysequential_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resourceZsequential_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource[sequential_module_wrapper_2_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *E
body=R;
9sequential_module_wrapper_2_simple_rnn_2_while_body_24673*E
cond=R;
9sequential_module_wrapper_2_simple_rnn_2_while_cond_24672*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Ysequential/module_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Ksequential/module_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack7sequential/module_wrapper_2/simple_rnn_2/while:output:3bsequential/module_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
>sequential/module_wrapper_2/simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
@sequential/module_wrapper_2/simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/module_wrapper_2/simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/module_wrapper_2/simple_rnn_2/strided_slice_3StridedSliceTsequential/module_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Gsequential/module_wrapper_2/simple_rnn_2/strided_slice_3/stack:output:0Isequential/module_wrapper_2/simple_rnn_2/strided_slice_3/stack_1:output:0Isequential/module_wrapper_2/simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
9sequential/module_wrapper_2/simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
4sequential/module_wrapper_2/simple_rnn_2/transpose_1	TransposeTsequential/module_wrapper_2/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Bsequential/module_wrapper_2/simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
.sequential/module_wrapper_3/simple_rnn_3/ShapeShape8sequential/module_wrapper_2/simple_rnn_2/transpose_1:y:0*
T0*
_output_shapes
:?
<sequential/module_wrapper_3/simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential/module_wrapper_3/simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential/module_wrapper_3/simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential/module_wrapper_3/simple_rnn_3/strided_sliceStridedSlice7sequential/module_wrapper_3/simple_rnn_3/Shape:output:0Esequential/module_wrapper_3/simple_rnn_3/strided_slice/stack:output:0Gsequential/module_wrapper_3/simple_rnn_3/strided_slice/stack_1:output:0Gsequential/module_wrapper_3/simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
7sequential/module_wrapper_3/simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
5sequential/module_wrapper_3/simple_rnn_3/zeros/packedPack?sequential/module_wrapper_3/simple_rnn_3/strided_slice:output:0@sequential/module_wrapper_3/simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:y
4sequential/module_wrapper_3/simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential/module_wrapper_3/simple_rnn_3/zerosFill>sequential/module_wrapper_3/simple_rnn_3/zeros/packed:output:0=sequential/module_wrapper_3/simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:???????????
7sequential/module_wrapper_3/simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
2sequential/module_wrapper_3/simple_rnn_3/transpose	Transpose8sequential/module_wrapper_2/simple_rnn_2/transpose_1:y:0@sequential/module_wrapper_3/simple_rnn_3/transpose/perm:output:0*
T0*,
_output_shapes
:???????????
0sequential/module_wrapper_3/simple_rnn_3/Shape_1Shape6sequential/module_wrapper_3/simple_rnn_3/transpose:y:0*
T0*
_output_shapes
:?
>sequential/module_wrapper_3/simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/module_wrapper_3/simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/module_wrapper_3/simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/module_wrapper_3/simple_rnn_3/strided_slice_1StridedSlice9sequential/module_wrapper_3/simple_rnn_3/Shape_1:output:0Gsequential/module_wrapper_3/simple_rnn_3/strided_slice_1/stack:output:0Isequential/module_wrapper_3/simple_rnn_3/strided_slice_1/stack_1:output:0Isequential/module_wrapper_3/simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Dsequential/module_wrapper_3/simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6sequential/module_wrapper_3/simple_rnn_3/TensorArrayV2TensorListReserveMsequential/module_wrapper_3/simple_rnn_3/TensorArrayV2/element_shape:output:0Asequential/module_wrapper_3/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
^sequential/module_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Psequential/module_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor6sequential/module_wrapper_3/simple_rnn_3/transpose:y:0gsequential/module_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>sequential/module_wrapper_3/simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/module_wrapper_3/simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/module_wrapper_3/simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/module_wrapper_3/simple_rnn_3/strided_slice_2StridedSlice6sequential/module_wrapper_3/simple_rnn_3/transpose:y:0Gsequential/module_wrapper_3/simple_rnn_3/strided_slice_2/stack:output:0Isequential/module_wrapper_3/simple_rnn_3/strided_slice_2/stack_1:output:0Isequential/module_wrapper_3/simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
Psequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpYsequential_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Asequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMulMatMulAsequential/module_wrapper_3/simple_rnn_3/strided_slice_2:output:0Xsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Qsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpZsequential_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Bsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAddKsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0Ysequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Rsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp[sequential_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Csequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMul7sequential/module_wrapper_3/simple_rnn_3/zeros:output:0Zsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
>sequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/addAddV2Ksequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:0Msequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/ReluReluBsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
Fsequential/module_wrapper_3/simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
8sequential/module_wrapper_3/simple_rnn_3/TensorArrayV2_1TensorListReserveOsequential/module_wrapper_3/simple_rnn_3/TensorArrayV2_1/element_shape:output:0Asequential/module_wrapper_3/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???o
-sequential/module_wrapper_3/simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : ?
Asequential/module_wrapper_3/simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????}
;sequential/module_wrapper_3/simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?	
.sequential/module_wrapper_3/simple_rnn_3/whileWhileDsequential/module_wrapper_3/simple_rnn_3/while/loop_counter:output:0Jsequential/module_wrapper_3/simple_rnn_3/while/maximum_iterations:output:06sequential/module_wrapper_3/simple_rnn_3/time:output:0Asequential/module_wrapper_3/simple_rnn_3/TensorArrayV2_1:handle:07sequential/module_wrapper_3/simple_rnn_3/zeros:output:0Asequential/module_wrapper_3/simple_rnn_3/strided_slice_1:output:0`sequential/module_wrapper_3/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ysequential_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resourceZsequential_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource[sequential_module_wrapper_3_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *E
body=R;
9sequential_module_wrapper_3_simple_rnn_3_while_body_24777*E
cond=R;
9sequential_module_wrapper_3_simple_rnn_3_while_cond_24776*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Ysequential/module_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Ksequential/module_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStack7sequential/module_wrapper_3/simple_rnn_3/while:output:3bsequential/module_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0?
>sequential/module_wrapper_3/simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
@sequential/module_wrapper_3/simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/module_wrapper_3/simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/module_wrapper_3/simple_rnn_3/strided_slice_3StridedSliceTsequential/module_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0Gsequential/module_wrapper_3/simple_rnn_3/strided_slice_3/stack:output:0Isequential/module_wrapper_3/simple_rnn_3/strided_slice_3/stack_1:output:0Isequential/module_wrapper_3/simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
9sequential/module_wrapper_3/simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
4sequential/module_wrapper_3/simple_rnn_3/transpose_1	TransposeTsequential/module_wrapper_3/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0Bsequential/module_wrapper_3/simple_rnn_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
7sequential/module_wrapper_4/dense/MatMul/ReadVariableOpReadVariableOp@sequential_module_wrapper_4_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
(sequential/module_wrapper_4/dense/MatMulMatMulAsequential/module_wrapper_3/simple_rnn_3/strided_slice_3:output:0?sequential/module_wrapper_4/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
8sequential/module_wrapper_4/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_module_wrapper_4_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
)sequential/module_wrapper_4/dense/BiasAddBiasAdd2sequential/module_wrapper_4/dense/MatMul:product:0@sequential/module_wrapper_4/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
IdentityIdentity2sequential/module_wrapper_4/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????

NoOpNoOpL^sequential/module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpK^sequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpM^sequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp+^sequential/module_wrapper/simple_rnn/whileR^sequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpQ^sequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpS^sequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp/^sequential/module_wrapper_1/simple_rnn_1/whileR^sequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpQ^sequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpS^sequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp/^sequential/module_wrapper_2/simple_rnn_2/whileR^sequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpQ^sequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpS^sequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp/^sequential/module_wrapper_3/simple_rnn_3/while9^sequential/module_wrapper_4/dense/BiasAdd/ReadVariableOp8^sequential/module_wrapper_4/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 2?
Ksequential/module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpKsequential/module_wrapper/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2?
Jsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpJsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2?
Lsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpLsequential/module_wrapper/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2X
*sequential/module_wrapper/simple_rnn/while*sequential/module_wrapper/simple_rnn/while2?
Qsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpQsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2?
Psequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpPsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2?
Rsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpRsequential/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2`
.sequential/module_wrapper_1/simple_rnn_1/while.sequential/module_wrapper_1/simple_rnn_1/while2?
Qsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpQsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2?
Psequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpPsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2?
Rsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpRsequential/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2`
.sequential/module_wrapper_2/simple_rnn_2/while.sequential/module_wrapper_2/simple_rnn_2/while2?
Qsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpQsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2?
Psequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpPsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2?
Rsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpRsequential/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2`
.sequential/module_wrapper_3/simple_rnn_3/while.sequential/module_wrapper_3/simple_rnn_3/while2t
8sequential/module_wrapper_4/dense/BiasAdd/ReadVariableOp8sequential/module_wrapper_4/dense/BiasAdd/ReadVariableOp2r
7sequential/module_wrapper_4/dense/MatMul/ReadVariableOp7sequential/module_wrapper_4/dense/MatMul/ReadVariableOp:b ^
,
_output_shapes
:??????????
.
_user_specified_namemodule_wrapper_input
?
?
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_26925

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?,
?
while_body_30027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_3_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_3/MatMul/ReadVariableOp?/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_3/ReluReluwhile/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_3/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity*while/simple_rnn_cell_3/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?=
?
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_29725
inputs_0D
0simple_rnn_cell_1_matmul_readvariableop_resource:
??@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_1/BiasAdd/ReadVariableOp?'simple_rnn_cell_1/MatMul/ReadVariableOp?)simple_rnn_cell_1/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_1/ReluRelusimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29659*
condR
while_cond_29658*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_30325

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?H
?
.module_wrapper_3_simple_rnn_3_while_body_28121X
Tmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_loop_counter^
Zmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_maximum_iterations3
/module_wrapper_3_simple_rnn_3_while_placeholder5
1module_wrapper_3_simple_rnn_3_while_placeholder_15
1module_wrapper_3_simple_rnn_3_while_placeholder_2W
Smodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_strided_slice_1_0?
?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0j
Vmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:
??f
Wmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:	?l
Xmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
??0
,module_wrapper_3_simple_rnn_3_while_identity2
.module_wrapper_3_simple_rnn_3_while_identity_12
.module_wrapper_3_simple_rnn_3_while_identity_22
.module_wrapper_3_simple_rnn_3_while_identity_32
.module_wrapper_3_simple_rnn_3_while_identity_4U
Qmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_strided_slice_1?
?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorh
Tmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:
??d
Umodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:	?j
Vmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:
????Lmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp?Kmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp?Mmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp?
Umodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Gmodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0/module_wrapper_3_simple_rnn_3_while_placeholder^module_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Kmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpVmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
<module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMulNmodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Smodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Lmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpWmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
=module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAddFmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Tmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpXmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
>module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul1module_wrapper_3_simple_rnn_3_while_placeholder_2Umodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/addAddV2Fmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:0Hmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
:module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/ReluRelu=module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
Hmodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1module_wrapper_3_simple_rnn_3_while_placeholder_1/module_wrapper_3_simple_rnn_3_while_placeholderHmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0*
_output_shapes
: *
element_dtype0:???k
)module_wrapper_3/simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
'module_wrapper_3/simple_rnn_3/while/addAddV2/module_wrapper_3_simple_rnn_3_while_placeholder2module_wrapper_3/simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: m
+module_wrapper_3/simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
)module_wrapper_3/simple_rnn_3/while/add_1AddV2Tmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_loop_counter4module_wrapper_3/simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: ?
,module_wrapper_3/simple_rnn_3/while/IdentityIdentity-module_wrapper_3/simple_rnn_3/while/add_1:z:0)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_3/simple_rnn_3/while/Identity_1IdentityZmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_maximum_iterations)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_3/simple_rnn_3/while/Identity_2Identity+module_wrapper_3/simple_rnn_3/while/add:z:0)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_3/simple_rnn_3/while/Identity_3IdentityXmodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_3/simple_rnn_3/while/Identity_4IdentityHmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*(
_output_shapes
:???????????
(module_wrapper_3/simple_rnn_3/while/NoOpNoOpM^module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpL^module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpN^module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,module_wrapper_3_simple_rnn_3_while_identity5module_wrapper_3/simple_rnn_3/while/Identity:output:0"i
.module_wrapper_3_simple_rnn_3_while_identity_17module_wrapper_3/simple_rnn_3/while/Identity_1:output:0"i
.module_wrapper_3_simple_rnn_3_while_identity_27module_wrapper_3/simple_rnn_3/while/Identity_2:output:0"i
.module_wrapper_3_simple_rnn_3_while_identity_37module_wrapper_3/simple_rnn_3/while/Identity_3:output:0"i
.module_wrapper_3_simple_rnn_3_while_identity_47module_wrapper_3/simple_rnn_3/while/Identity_4:output:0"?
Qmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_strided_slice_1Smodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_strided_slice_1_0"?
Umodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceWmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"?
Vmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceXmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"?
Tmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceVmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"?
?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Lmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpLmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2?
Kmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpKmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2?
Mmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpMmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
5sequential_module_wrapper_simple_rnn_while_cond_24464f
bsequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_loop_counterl
hsequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_maximum_iterations:
6sequential_module_wrapper_simple_rnn_while_placeholder<
8sequential_module_wrapper_simple_rnn_while_placeholder_1<
8sequential_module_wrapper_simple_rnn_while_placeholder_2h
dsequential_module_wrapper_simple_rnn_while_less_sequential_module_wrapper_simple_rnn_strided_slice_1}
ysequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_cond_24464___redundant_placeholder0}
ysequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_cond_24464___redundant_placeholder1}
ysequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_cond_24464___redundant_placeholder2}
ysequential_module_wrapper_simple_rnn_while_sequential_module_wrapper_simple_rnn_while_cond_24464___redundant_placeholder37
3sequential_module_wrapper_simple_rnn_while_identity
?
/sequential/module_wrapper/simple_rnn/while/LessLess6sequential_module_wrapper_simple_rnn_while_placeholderdsequential_module_wrapper_simple_rnn_while_less_sequential_module_wrapper_simple_rnn_strided_slice_1*
T0*
_output_shapes
: ?
3sequential/module_wrapper/simple_rnn/while/IdentityIdentity3sequential/module_wrapper/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "s
3sequential_module_wrapper_simple_rnn_while_identity<sequential/module_wrapper/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?8
?
simple_rnn_2_while_body_251306
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_25
1simple_rnn_2_while_simple_rnn_2_strided_slice_1_0q
msimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
??
simple_rnn_2_while_identity!
simple_rnn_2_while_identity_1!
simple_rnn_2_while_identity_2!
simple_rnn_2_while_identity_3!
simple_rnn_2_while_identity_43
/simple_rnn_2_while_simple_rnn_2_strided_slice_1o
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource:
??S
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:	?Y
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:
????;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp?:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp?<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp?
Dsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_2_while_placeholderMsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMul=simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAdd5simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0Csimple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul simple_rnn_2_while_placeholder_2Dsimple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_2/while/simple_rnn_cell_2/addAddV25simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:07simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_2/while/simple_rnn_cell_2/ReluRelu,simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_2_while_placeholder_1simple_rnn_2_while_placeholder7simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_2/while/addAddV2simple_rnn_2_while_placeholder!simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_2/while/add_1AddV22simple_rnn_2_while_simple_rnn_2_while_loop_counter#simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/add_1:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_1Identity8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_2Identitysimple_rnn_2/while/add:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_3IdentityGsimple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_4Identity7simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0^simple_rnn_2/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_2/while/NoOpNoOp<^simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;^simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp=^simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0"G
simple_rnn_2_while_identity_1&simple_rnn_2/while/Identity_1:output:0"G
simple_rnn_2_while_identity_2&simple_rnn_2/while/Identity_2:output:0"G
simple_rnn_2_while_identity_3&simple_rnn_2/while/Identity_3:output:0"G
simple_rnn_2_while_identity_4&simple_rnn_2/while/Identity_4:output:0"d
/simple_rnn_2_while_simple_rnn_2_strided_slice_11simple_rnn_2_while_simple_rnn_2_strided_slice_1_0"?
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourceFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"?
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourceGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"?
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"?
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensormsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2x
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2|
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?I
?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25519

args_0Q
=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:
??M
>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:	?S
?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp?4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp?6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp?simple_rnn_3/whileH
simple_rnn_3/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_sliceStridedSlicesimple_rnn_3/Shape:output:0)simple_rnn_3/strided_slice/stack:output:0+simple_rnn_3/strided_slice/stack_1:output:0+simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_3/zeros/packedPack#simple_rnn_3/strided_slice:output:0$simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_3/zerosFill"simple_rnn_3/zeros/packed:output:0!simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_3/transpose	Transposeargs_0$simple_rnn_3/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_3/Shape_1Shapesimple_rnn_3/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_1StridedSlicesimple_rnn_3/Shape_1:output:0+simple_rnn_3/strided_slice_1/stack:output:0-simple_rnn_3/strided_slice_1/stack_1:output:0-simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_3/TensorArrayV2TensorListReserve1simple_rnn_3/TensorArrayV2/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_3/transpose:y:0Ksimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_2StridedSlicesimple_rnn_3/transpose:y:0+simple_rnn_3/strided_slice_2/stack:output:0-simple_rnn_3/strided_slice_2/stack_1:output:0-simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_3/simple_rnn_cell_3/MatMulMatMul%simple_rnn_3/strided_slice_2:output:0<simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0=simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMulsimple_rnn_3/zeros:output:0>simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_3/simple_rnn_cell_3/addAddV2/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_3/simple_rnn_cell_3/ReluRelu&simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_3/TensorArrayV2_1TensorListReserve3simple_rnn_3/TensorArrayV2_1/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_3/whileWhile(simple_rnn_3/while/loop_counter:output:0.simple_rnn_3/while/maximum_iterations:output:0simple_rnn_3/time:output:0%simple_rnn_3/TensorArrayV2_1:handle:0simple_rnn_3/zeros:output:0%simple_rnn_3/strided_slice_1:output:0Dsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_3_while_body_25453*)
cond!R
simple_rnn_3_while_cond_25452*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_3/while:output:3Fsimple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_3/strided_slice_3StridedSlice8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_3/strided_slice_3/stack:output:0-simple_rnn_3/strided_slice_3/stack_1:output:0-simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_3/transpose_1	Transpose8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????u
IdentityIdentity%simple_rnn_3/strided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp^simple_rnn_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2p
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_3/whilesimple_rnn_3/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_30432

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?

?
simple_rnn_1_while_cond_250136
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_25013___redundant_placeholder0M
Isimple_rnn_1_while_simple_rnn_1_while_cond_25013___redundant_placeholder1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_25013___redundant_placeholder2M
Isimple_rnn_1_while_simple_rnn_1_while_cond_25013___redundant_placeholder3
simple_rnn_1_while_identity
?
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?=
?
E__inference_simple_rnn_layer_call_and_return_conditional_losses_29487
inputs_0B
.simple_rnn_cell_matmul_readvariableop_resource:
??>
/simple_rnn_cell_biasadd_readvariableop_resource:	?D
0simple_rnn_cell_matmul_1_readvariableop_resource:
??
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????h
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29421*
condR
while_cond_29420*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?8
?
simple_rnn_2_while_body_288856
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_25
1simple_rnn_2_while_simple_rnn_2_strided_slice_1_0q
msimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
??
simple_rnn_2_while_identity!
simple_rnn_2_while_identity_1!
simple_rnn_2_while_identity_2!
simple_rnn_2_while_identity_3!
simple_rnn_2_while_identity_43
/simple_rnn_2_while_simple_rnn_2_strided_slice_1o
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource:
??S
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:	?Y
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:
????;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp?:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp?<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp?
Dsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_2_while_placeholderMsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMul=simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAdd5simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0Csimple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul simple_rnn_2_while_placeholder_2Dsimple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_2/while/simple_rnn_cell_2/addAddV25simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:07simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_2/while/simple_rnn_cell_2/ReluRelu,simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_2_while_placeholder_1simple_rnn_2_while_placeholder7simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_2/while/addAddV2simple_rnn_2_while_placeholder!simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_2/while/add_1AddV22simple_rnn_2_while_simple_rnn_2_while_loop_counter#simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/add_1:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_1Identity8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_2Identitysimple_rnn_2/while/add:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_3IdentityGsimple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_2/while/Identity_4Identity7simple_rnn_2/while/simple_rnn_cell_2/Relu:activations:0^simple_rnn_2/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_2/while/NoOpNoOp<^simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;^simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp=^simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0"G
simple_rnn_2_while_identity_1&simple_rnn_2/while/Identity_1:output:0"G
simple_rnn_2_while_identity_2&simple_rnn_2/while/Identity_2:output:0"G
simple_rnn_2_while_identity_3&simple_rnn_2/while/Identity_3:output:0"G
simple_rnn_2_while_identity_4&simple_rnn_2/while/Identity_4:output:0"d
/simple_rnn_2_while_simple_rnn_2_strided_slice_11simple_rnn_2_while_simple_rnn_2_strided_slice_1_0"?
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourceFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"?
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourceGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"?
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"?
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensormsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2x
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2|
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?G
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_28475

args_0M
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:
??I
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	?O
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
??
identity??1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?simple_rnn/whileF
simple_rnn/ShapeShapeargs_0*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:??????????n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose	Transposeargs_0"simple_rnn/transpose/perm:output:0*
T0*,
_output_shapes
:??????????Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????~
simple_rnn/simple_rnn_cell/ReluRelu"simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:??????????y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *'
bodyR
simple_rnn_while_body_28409*'
condR
simple_rnn_while_cond_28408*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????n
IdentityIdentitysimple_rnn/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?I
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25196

args_0Q
=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource:
??M
>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:	?S
?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:
??
identity??5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp?4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp?6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp?simple_rnn_2/whileH
simple_rnn_2/ShapeShapeargs_0*
T0*
_output_shapes
:j
 simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_sliceStridedSlicesimple_rnn_2/Shape:output:0)simple_rnn_2/strided_slice/stack:output:0+simple_rnn_2/strided_slice/stack_1:output:0+simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
simple_rnn_2/zeros/packedPack#simple_rnn_2/strided_slice:output:0$simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn_2/zerosFill"simple_rnn_2/zeros/packed:output:0!simple_rnn_2/zeros/Const:output:0*
T0*(
_output_shapes
:??????????p
simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_2/transpose	Transposeargs_0$simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????^
simple_rnn_2/Shape_1Shapesimple_rnn_2/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_1StridedSlicesimple_rnn_2/Shape_1:output:0+simple_rnn_2/strided_slice_1/stack:output:0-simple_rnn_2/strided_slice_1/stack_1:output:0-simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn_2/TensorArrayV2TensorListReserve1simple_rnn_2/TensorArrayV2/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Bsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_2/transpose:y:0Ksimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???l
"simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_2StridedSlicesimple_rnn_2/transpose:y:0+simple_rnn_2/strided_slice_2/stack:output:0-simple_rnn_2/strided_slice_2/stack_1:output:0-simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
%simple_rnn_2/simple_rnn_cell_2/MatMulMatMul%simple_rnn_2/strided_slice_2:output:0<simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAdd/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0=simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMulsimple_rnn_2/zeros:output:0>simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"simple_rnn_2/simple_rnn_cell_2/addAddV2/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:01simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#simple_rnn_2/simple_rnn_cell_2/ReluRelu&simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:??????????{
*simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
simple_rnn_2/TensorArrayV2_1TensorListReserve3simple_rnn_2/TensorArrayV2_1/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???S
simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn_2/whileWhile(simple_rnn_2/while/loop_counter:output:0.simple_rnn_2/while/maximum_iterations:output:0simple_rnn_2/time:output:0%simple_rnn_2/TensorArrayV2_1:handle:0simple_rnn_2/zeros:output:0%simple_rnn_2/strided_slice_1:output:0Dsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_2_while_body_25130*)
cond!R
simple_rnn_2_while_cond_25129*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
=simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_2/while:output:3Fsimple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0u
"simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????n
$simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn_2/strided_slice_3StridedSlice8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_2/strided_slice_3/stack:output:0-simple_rnn_2/strided_slice_3/stack_1:output:0-simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskr
simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn_2/transpose_1	Transpose8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????p
IdentityIdentitysimple_rnn_2/transpose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp6^simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5^simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp7^simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp^simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2n
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2l
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2p
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2(
simple_rnn_2/whilesimple_rnn_2/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
.module_wrapper_2_simple_rnn_2_while_cond_27590X
Tmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_loop_counter^
Zmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_maximum_iterations3
/module_wrapper_2_simple_rnn_2_while_placeholder5
1module_wrapper_2_simple_rnn_2_while_placeholder_15
1module_wrapper_2_simple_rnn_2_while_placeholder_2Z
Vmodule_wrapper_2_simple_rnn_2_while_less_module_wrapper_2_simple_rnn_2_strided_slice_1o
kmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_cond_27590___redundant_placeholder0o
kmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_cond_27590___redundant_placeholder1o
kmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_cond_27590___redundant_placeholder2o
kmodule_wrapper_2_simple_rnn_2_while_module_wrapper_2_simple_rnn_2_while_cond_27590___redundant_placeholder30
,module_wrapper_2_simple_rnn_2_while_identity
?
(module_wrapper_2/simple_rnn_2/while/LessLess/module_wrapper_2_simple_rnn_2_while_placeholderVmodule_wrapper_2_simple_rnn_2_while_less_module_wrapper_2_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: ?
,module_wrapper_2/simple_rnn_2/while/IdentityIdentity,module_wrapper_2/simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "e
,module_wrapper_2_simple_rnn_2_while_identity5module_wrapper_2/simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
simple_rnn_3_while_cond_252456
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_28
4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1M
Isimple_rnn_3_while_simple_rnn_3_while_cond_25245___redundant_placeholder0M
Isimple_rnn_3_while_simple_rnn_3_while_cond_25245___redundant_placeholder1M
Isimple_rnn_3_while_simple_rnn_3_while_cond_25245___redundant_placeholder2M
Isimple_rnn_3_while_simple_rnn_3_while_cond_25245___redundant_placeholder3
simple_rnn_3_while_identity
?
simple_rnn_3/while/LessLesssimple_rnn_3_while_placeholder4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?!
?
E__inference_sequential_layer_call_and_return_conditional_losses_25337

inputs(
module_wrapper_24965:
??#
module_wrapper_24967:	?(
module_wrapper_24969:
??*
module_wrapper_1_25081:
??%
module_wrapper_1_25083:	?*
module_wrapper_1_25085:
??*
module_wrapper_2_25197:
??%
module_wrapper_2_25199:	?*
module_wrapper_2_25201:
??*
module_wrapper_3_25313:
??%
module_wrapper_3_25315:	?*
module_wrapper_3_25317:
??)
module_wrapper_4_25331:	?$
module_wrapper_4_25333:
identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_4/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_24965module_wrapper_24967module_wrapper_24969*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24964?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0module_wrapper_1_25081module_wrapper_1_25083module_wrapper_1_25085*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25080?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_25197module_wrapper_2_25199module_wrapper_2_25201*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25196?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0module_wrapper_3_25313module_wrapper_3_25315module_wrapper_3_25317*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25312?
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0module_wrapper_4_25331module_wrapper_4_25333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25330?
IdentityIdentity1module_wrapper_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_30387

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?	
9sequential_module_wrapper_1_simple_rnn_1_while_cond_24568n
jsequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_loop_countert
psequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_maximum_iterations>
:sequential_module_wrapper_1_simple_rnn_1_while_placeholder@
<sequential_module_wrapper_1_simple_rnn_1_while_placeholder_1@
<sequential_module_wrapper_1_simple_rnn_1_while_placeholder_2p
lsequential_module_wrapper_1_simple_rnn_1_while_less_sequential_module_wrapper_1_simple_rnn_1_strided_slice_1?
?sequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_cond_24568___redundant_placeholder0?
?sequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_cond_24568___redundant_placeholder1?
?sequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_cond_24568___redundant_placeholder2?
?sequential_module_wrapper_1_simple_rnn_1_while_sequential_module_wrapper_1_simple_rnn_1_while_cond_24568___redundant_placeholder3;
7sequential_module_wrapper_1_simple_rnn_1_while_identity
?
3sequential/module_wrapper_1/simple_rnn_1/while/LessLess:sequential_module_wrapper_1_simple_rnn_1_while_placeholderlsequential_module_wrapper_1_simple_rnn_1_while_less_sequential_module_wrapper_1_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: ?
7sequential/module_wrapper_1/simple_rnn_1/while/IdentityIdentity7sequential/module_wrapper_1/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "{
7sequential_module_wrapper_1_simple_rnn_1_while_identity@sequential/module_wrapper_1/simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_26233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_26233___redundant_placeholder03
/while_while_cond_26233___redundant_placeholder13
/while_while_cond_26233___redundant_placeholder23
/while_while_cond_26233___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_26633

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
*module_wrapper_simple_rnn_while_cond_27382P
Lmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_loop_counterV
Rmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_maximum_iterations/
+module_wrapper_simple_rnn_while_placeholder1
-module_wrapper_simple_rnn_while_placeholder_11
-module_wrapper_simple_rnn_while_placeholder_2R
Nmodule_wrapper_simple_rnn_while_less_module_wrapper_simple_rnn_strided_slice_1g
cmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_cond_27382___redundant_placeholder0g
cmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_cond_27382___redundant_placeholder1g
cmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_cond_27382___redundant_placeholder2g
cmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_cond_27382___redundant_placeholder3,
(module_wrapper_simple_rnn_while_identity
?
$module_wrapper/simple_rnn/while/LessLess+module_wrapper_simple_rnn_while_placeholderNmodule_wrapper_simple_rnn_while_less_module_wrapper_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 
(module_wrapper/simple_rnn/while/IdentityIdentity(module_wrapper/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "]
(module_wrapper_simple_rnn_while_identity1module_wrapper/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
.__inference_module_wrapper_layer_call_fn_28497

args_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25912t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_4_layer_call_fn_29249

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
*__inference_simple_rnn_layer_call_fn_29271
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_simple_rnn_layer_call_and_return_conditional_losses_26456}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?H
?
.module_wrapper_3_simple_rnn_3_while_body_27695X
Tmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_loop_counter^
Zmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_maximum_iterations3
/module_wrapper_3_simple_rnn_3_while_placeholder5
1module_wrapper_3_simple_rnn_3_while_placeholder_15
1module_wrapper_3_simple_rnn_3_while_placeholder_2W
Smodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_strided_slice_1_0?
?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0j
Vmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:
??f
Wmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:	?l
Xmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
??0
,module_wrapper_3_simple_rnn_3_while_identity2
.module_wrapper_3_simple_rnn_3_while_identity_12
.module_wrapper_3_simple_rnn_3_while_identity_22
.module_wrapper_3_simple_rnn_3_while_identity_32
.module_wrapper_3_simple_rnn_3_while_identity_4U
Qmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_strided_slice_1?
?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorh
Tmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:
??d
Umodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:	?j
Vmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:
????Lmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp?Kmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp?Mmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp?
Umodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Gmodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0/module_wrapper_3_simple_rnn_3_while_placeholder^module_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Kmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpVmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
<module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMulNmodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Smodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Lmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpWmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
=module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAddFmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Tmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Mmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpXmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
>module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul1module_wrapper_3_simple_rnn_3_while_placeholder_2Umodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/addAddV2Fmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:0Hmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
:module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/ReluRelu=module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
Hmodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1module_wrapper_3_simple_rnn_3_while_placeholder_1/module_wrapper_3_simple_rnn_3_while_placeholderHmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0*
_output_shapes
: *
element_dtype0:???k
)module_wrapper_3/simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
'module_wrapper_3/simple_rnn_3/while/addAddV2/module_wrapper_3_simple_rnn_3_while_placeholder2module_wrapper_3/simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: m
+module_wrapper_3/simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
)module_wrapper_3/simple_rnn_3/while/add_1AddV2Tmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_loop_counter4module_wrapper_3/simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: ?
,module_wrapper_3/simple_rnn_3/while/IdentityIdentity-module_wrapper_3/simple_rnn_3/while/add_1:z:0)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_3/simple_rnn_3/while/Identity_1IdentityZmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_while_maximum_iterations)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_3/simple_rnn_3/while/Identity_2Identity+module_wrapper_3/simple_rnn_3/while/add:z:0)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_3/simple_rnn_3/while/Identity_3IdentityXmodule_wrapper_3/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ?
.module_wrapper_3/simple_rnn_3/while/Identity_4IdentityHmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/Relu:activations:0)^module_wrapper_3/simple_rnn_3/while/NoOp*
T0*(
_output_shapes
:???????????
(module_wrapper_3/simple_rnn_3/while/NoOpNoOpM^module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpL^module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpN^module_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,module_wrapper_3_simple_rnn_3_while_identity5module_wrapper_3/simple_rnn_3/while/Identity:output:0"i
.module_wrapper_3_simple_rnn_3_while_identity_17module_wrapper_3/simple_rnn_3/while/Identity_1:output:0"i
.module_wrapper_3_simple_rnn_3_while_identity_27module_wrapper_3/simple_rnn_3/while/Identity_2:output:0"i
.module_wrapper_3_simple_rnn_3_while_identity_37module_wrapper_3/simple_rnn_3/while/Identity_3:output:0"i
.module_wrapper_3_simple_rnn_3_while_identity_47module_wrapper_3/simple_rnn_3/while/Identity_4:output:0"?
Qmodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_strided_slice_1Smodule_wrapper_3_simple_rnn_3_while_module_wrapper_3_simple_rnn_3_strided_slice_1_0"?
Umodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceWmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"?
Vmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceXmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"?
Tmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceVmodule_wrapper_3_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"?
?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor?module_wrapper_3_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_3_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Lmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpLmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2?
Kmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpKmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2?
Mmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpMmodule_wrapper_3/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?	
9sequential_module_wrapper_2_simple_rnn_2_while_cond_24672n
jsequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_loop_countert
psequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_maximum_iterations>
:sequential_module_wrapper_2_simple_rnn_2_while_placeholder@
<sequential_module_wrapper_2_simple_rnn_2_while_placeholder_1@
<sequential_module_wrapper_2_simple_rnn_2_while_placeholder_2p
lsequential_module_wrapper_2_simple_rnn_2_while_less_sequential_module_wrapper_2_simple_rnn_2_strided_slice_1?
?sequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_cond_24672___redundant_placeholder0?
?sequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_cond_24672___redundant_placeholder1?
?sequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_cond_24672___redundant_placeholder2?
?sequential_module_wrapper_2_simple_rnn_2_while_sequential_module_wrapper_2_simple_rnn_2_while_cond_24672___redundant_placeholder3;
7sequential_module_wrapper_2_simple_rnn_2_while_identity
?
3sequential/module_wrapper_2/simple_rnn_2/while/LessLess:sequential_module_wrapper_2_simple_rnn_2_while_placeholderlsequential_module_wrapper_2_simple_rnn_2_while_less_sequential_module_wrapper_2_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: ?
7sequential/module_wrapper_2/simple_rnn_2/while/IdentityIdentity7sequential/module_wrapper_2/simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "{
7sequential_module_wrapper_2_simple_rnn_2_while_identity@sequential/module_wrapper_2/simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?3
?
E__inference_simple_rnn_layer_call_and_return_conditional_losses_26297

inputs)
simple_rnn_cell_26222:
??$
simple_rnn_cell_26224:	?)
simple_rnn_cell_26226:
??
identity??'simple_rnn_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_26222simple_rnn_cell_26224simple_rnn_cell_26226*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_26221n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_26222simple_rnn_cell_26224simple_rnn_cell_26226*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_26234*
condR
while_cond_26233*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?,
?
while_body_30135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_3_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_3/MatMul/ReadVariableOp?/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_3/ReluReluwhile/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_3/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity*while/simple_rnn_cell_3/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
1__inference_simple_rnn_cell_2_layer_call_fn_30353

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_26925p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
,__inference_simple_rnn_1_layer_call_fn_29498
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_26589}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_sequential_layer_call_fn_26057
module_wrapper_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
??
	unknown_9:	?

unknown_10:
??

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:??????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
,
_output_shapes
:??????????
.
_user_specified_namemodule_wrapper_input
?8
?
simple_rnn_1_while_body_257156
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
??
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:
??S
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	?Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
????;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_1/while/simple_rnn_cell_1/ReluRelu,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder7simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_4Identity7simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0^simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"?
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?8
?
simple_rnn_1_while_body_250146
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
??U
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	?[
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
??
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorW
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:
??S
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	?Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
????;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp?:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp?<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp?
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)simple_rnn_1/while/simple_rnn_cell_1/ReluRelu,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:???????????
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder7simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Z
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ?
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn_1/while/Identity_4Identity7simple_rnn_1/while/simple_rnn_cell_1/Relu:activations:0^simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"?
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"?
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"?
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"?
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
*module_wrapper_simple_rnn_while_cond_27808P
Lmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_loop_counterV
Rmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_maximum_iterations/
+module_wrapper_simple_rnn_while_placeholder1
-module_wrapper_simple_rnn_while_placeholder_11
-module_wrapper_simple_rnn_while_placeholder_2R
Nmodule_wrapper_simple_rnn_while_less_module_wrapper_simple_rnn_strided_slice_1g
cmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_cond_27808___redundant_placeholder0g
cmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_cond_27808___redundant_placeholder1g
cmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_cond_27808___redundant_placeholder2g
cmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_cond_27808___redundant_placeholder3,
(module_wrapper_simple_rnn_while_identity
?
$module_wrapper/simple_rnn/while/LessLess+module_wrapper_simple_rnn_while_placeholderNmodule_wrapper_simple_rnn_while_less_module_wrapper_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 
(module_wrapper/simple_rnn/while/IdentityIdentity(module_wrapper/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "]
(module_wrapper_simple_rnn_while_identity1module_wrapper/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?6
?
simple_rnn_while_body_248982
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0U
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:
??Q
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	?W
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
??
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorS
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:
??O
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	?U
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
????7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
%simple_rnn/while/simple_rnn_cell/ReluRelu(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder3simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:???X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_4Identity3simple_rnn/while/simple_rnn_cell/Relu:activations:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:???????????
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"?
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"?
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
.__inference_module_wrapper_layer_call_fn_28486

args_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24964t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
while_cond_29420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29420___redundant_placeholder03
/while_while_cond_29420___redundant_placeholder13
/while_while_cond_29420___redundant_placeholder23
/while_while_cond_29420___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_27109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_27109___redundant_placeholder03
/while_while_cond_27109___redundant_placeholder13
/while_while_cond_27109___redundant_placeholder23
/while_while_cond_27109___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?D
?
*module_wrapper_simple_rnn_while_body_27383P
Lmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_loop_counterV
Rmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_maximum_iterations/
+module_wrapper_simple_rnn_while_placeholder1
-module_wrapper_simple_rnn_while_placeholder_11
-module_wrapper_simple_rnn_while_placeholder_2O
Kmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_strided_slice_1_0?
?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0d
Pmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:
??`
Qmodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	?f
Rmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
??,
(module_wrapper_simple_rnn_while_identity.
*module_wrapper_simple_rnn_while_identity_1.
*module_wrapper_simple_rnn_while_identity_2.
*module_wrapper_simple_rnn_while_identity_3.
*module_wrapper_simple_rnn_while_identity_4M
Imodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_strided_slice_1?
?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensorb
Nmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:
??^
Omodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	?d
Pmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
????Fmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?Emodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?Gmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Qmodule_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
Cmodule_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0+module_wrapper_simple_rnn_while_placeholderZmodule_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
Emodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpPmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
6module_wrapper/simple_rnn/while/simple_rnn_cell/MatMulMatMulJmodule_wrapper/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Mmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Fmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpQmodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
7module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd@module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul:product:0Nmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Gmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpRmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
8module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul-module_wrapper_simple_rnn_while_placeholder_2Omodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3module_wrapper/simple_rnn/while/simple_rnn_cell/addAddV2@module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0Bmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
4module_wrapper/simple_rnn/while/simple_rnn_cell/ReluRelu7module_wrapper/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:???????????
Dmodule_wrapper/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-module_wrapper_simple_rnn_while_placeholder_1+module_wrapper_simple_rnn_while_placeholderBmodule_wrapper/simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:???g
%module_wrapper/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
#module_wrapper/simple_rnn/while/addAddV2+module_wrapper_simple_rnn_while_placeholder.module_wrapper/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: i
'module_wrapper/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
%module_wrapper/simple_rnn/while/add_1AddV2Lmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_loop_counter0module_wrapper/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: ?
(module_wrapper/simple_rnn/while/IdentityIdentity)module_wrapper/simple_rnn/while/add_1:z:0%^module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
*module_wrapper/simple_rnn/while/Identity_1IdentityRmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_while_maximum_iterations%^module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
*module_wrapper/simple_rnn/while/Identity_2Identity'module_wrapper/simple_rnn/while/add:z:0%^module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
*module_wrapper/simple_rnn/while/Identity_3IdentityTmodule_wrapper/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^module_wrapper/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
*module_wrapper/simple_rnn/while/Identity_4IdentityBmodule_wrapper/simple_rnn/while/simple_rnn_cell/Relu:activations:0%^module_wrapper/simple_rnn/while/NoOp*
T0*(
_output_shapes
:???????????
$module_wrapper/simple_rnn/while/NoOpNoOpG^module_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpF^module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpH^module_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(module_wrapper_simple_rnn_while_identity1module_wrapper/simple_rnn/while/Identity:output:0"a
*module_wrapper_simple_rnn_while_identity_13module_wrapper/simple_rnn/while/Identity_1:output:0"a
*module_wrapper_simple_rnn_while_identity_23module_wrapper/simple_rnn/while/Identity_2:output:0"a
*module_wrapper_simple_rnn_while_identity_33module_wrapper/simple_rnn/while/Identity_3:output:0"a
*module_wrapper_simple_rnn_while_identity_43module_wrapper/simple_rnn/while/Identity_4:output:0"?
Imodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_strided_slice_1Kmodule_wrapper_simple_rnn_while_module_wrapper_simple_rnn_strided_slice_1_0"?
Omodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceQmodule_wrapper_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Pmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceRmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
Nmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourcePmodule_wrapper_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"?
?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor?module_wrapper_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
Fmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpFmodule_wrapper/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2?
Emodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpEmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2?
Gmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpGmodule_wrapper/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?=
?
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_29855
inputs_0D
0simple_rnn_cell_2_matmul_readvariableop_resource:
??@
1simple_rnn_cell_2_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_2_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_2/BiasAdd/ReadVariableOp?'simple_rnn_cell_2/MatMul/ReadVariableOp?)simple_rnn_cell_2/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_2/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_2/BiasAddBiasAdd"simple_rnn_cell_2/MatMul:product:00simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_2/MatMul_1MatMulzeros:output:01simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_2/addAddV2"simple_rnn_cell_2/BiasAdd:output:0$simple_rnn_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_2/ReluRelusimple_rnn_cell_2/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_2_matmul_readvariableop_resource1simple_rnn_cell_2_biasadd_readvariableop_resource2simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29789*
condR
while_cond_29788*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp)^simple_rnn_cell_2/BiasAdd/ReadVariableOp(^simple_rnn_cell_2/MatMul/ReadVariableOp*^simple_rnn_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2T
(simple_rnn_cell_2/BiasAdd/ReadVariableOp(simple_rnn_cell_2/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_2/MatMul/ReadVariableOp'simple_rnn_cell_2/MatMul/ReadVariableOp2V
)simple_rnn_cell_2/MatMul_1/ReadVariableOp)simple_rnn_cell_2/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
,__inference_simple_rnn_3_layer_call_fn_29974
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_27173p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
.module_wrapper_1_simple_rnn_1_while_cond_27912X
Tmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_loop_counter^
Zmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_maximum_iterations3
/module_wrapper_1_simple_rnn_1_while_placeholder5
1module_wrapper_1_simple_rnn_1_while_placeholder_15
1module_wrapper_1_simple_rnn_1_while_placeholder_2Z
Vmodule_wrapper_1_simple_rnn_1_while_less_module_wrapper_1_simple_rnn_1_strided_slice_1o
kmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_cond_27912___redundant_placeholder0o
kmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_cond_27912___redundant_placeholder1o
kmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_cond_27912___redundant_placeholder2o
kmodule_wrapper_1_simple_rnn_1_while_module_wrapper_1_simple_rnn_1_while_cond_27912___redundant_placeholder30
,module_wrapper_1_simple_rnn_1_while_identity
?
(module_wrapper_1/simple_rnn_1/while/LessLess/module_wrapper_1_simple_rnn_1_while_placeholderVmodule_wrapper_1_simple_rnn_1_while_less_module_wrapper_1_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: ?
,module_wrapper_1/simple_rnn_1/while/IdentityIdentity,module_wrapper_1/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "e
,module_wrapper_1_simple_rnn_1_while_identity5module_wrapper_1/simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
,__inference_simple_rnn_3_layer_call_fn_29985
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_27332p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
0__inference_module_wrapper_3_layer_call_fn_29211

args_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25519p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameargs_0
?4
?
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_27332

inputs+
simple_rnn_cell_3_27257:
??&
simple_rnn_cell_3_27259:	?+
simple_rnn_cell_3_27261:
??
identity??)simple_rnn_cell_3/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_3_27257simple_rnn_cell_3_27259simple_rnn_cell_3_27261*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_27217n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_27257simple_rnn_cell_3_27259simple_rnn_cell_3_27261*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_27269*
condR
while_cond_27268*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????z
NoOpNoOp*^simple_rnn_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Z
module_wrapper_inputB
&serving_default_module_wrapper_input:0??????????D
module_wrapper_40
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_sequential
?
_module
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
_module
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
_module
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
_module
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
 _module
!regularization_losses
"trainable_variables
#	variables
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
%iter

&beta_1

'beta_2
	(decay
)learning_rate*m?+m?,m?-m?.m?/m?0m?1m?2m?3m?4m?5m?6m?7m?*v?+v?,v?-v?.v?/v?0v?1v?2v?3v?4v?5v?6v?7v?"
tf_deprecated_optimizer
 "
trackable_list_wrapper
?
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713"
trackable_list_wrapper
?
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713"
trackable_list_wrapper
?
8layer_regularization_losses
9non_trainable_variables

:layers
;layer_metrics
<metrics
regularization_losses
	variables
	trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
=cell
>
state_spec
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
?
Clayer_regularization_losses
Dnon_trainable_variables

Elayers
Flayer_metrics
regularization_losses
trainable_variables
	variables
Gmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Hcell
I
state_spec
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
?
Nlayer_regularization_losses
Onon_trainable_variables

Players
Qlayer_metrics
regularization_losses
trainable_variables
	variables
Rmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Scell
T
state_spec
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
?
Ylayer_regularization_losses
Znon_trainable_variables

[layers
\layer_metrics
regularization_losses
trainable_variables
	variables
]metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
^cell
_
state_spec
`	variables
atrainable_variables
bregularization_losses
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
 "
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
?
dlayer_regularization_losses
enon_trainable_variables

flayers
glayer_metrics
regularization_losses
trainable_variables
	variables
hmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

6kernel
7bias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?
mlayer_regularization_losses
nnon_trainable_variables

olayers
player_metrics
!regularization_losses
"trainable_variables
#	variables
qmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
D:B
??20module_wrapper/simple_rnn/simple_rnn_cell/kernel
N:L
??2:module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel
=:;?2.module_wrapper/simple_rnn/simple_rnn_cell/bias
J:H
??26module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel
T:R
??2@module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
C:A?24module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias
J:H
??26module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel
T:R
??2@module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel
C:A?24module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias
J:H
??26module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel
T:R
??2@module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel
C:A?24module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias
0:.	?2module_wrapper_4/dense/kernel
):'2module_wrapper_4/dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
r0"
trackable_list_wrapper
?

*kernel
+recurrent_kernel
,bias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

wstates
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
?	variables
@trainable_variables
Aregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?

-kernel
.recurrent_kernel
/bias
}	variables
~trainable_variables
regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?states
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?

0kernel
1recurrent_kernel
2bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?states
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?

3kernel
4recurrent_kernel
5bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?states
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
s	variables
ttrainable_variables
uregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
H0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
S0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
^0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
I:G
??27Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/m
S:Q
??2AAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/m
B:@?25Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/m
O:M
??2=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/m
Y:W
??2GAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m
H:F?2;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/m
O:M
??2=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/m
Y:W
??2GAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m
H:F?2;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/m
O:M
??2=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/m
Y:W
??2GAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m
H:F?2;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/m
5:3	?2$Adam/module_wrapper_4/dense/kernel/m
.:,2"Adam/module_wrapper_4/dense/bias/m
I:G
??27Adam/module_wrapper/simple_rnn/simple_rnn_cell/kernel/v
S:Q
??2AAdam/module_wrapper/simple_rnn/simple_rnn_cell/recurrent_kernel/v
B:@?25Adam/module_wrapper/simple_rnn/simple_rnn_cell/bias/v
O:M
??2=Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/kernel/v
Y:W
??2GAdam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v
H:F?2;Adam/module_wrapper_1/simple_rnn_1/simple_rnn_cell_1/bias/v
O:M
??2=Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/kernel/v
Y:W
??2GAdam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v
H:F?2;Adam/module_wrapper_2/simple_rnn_2/simple_rnn_cell_2/bias/v
O:M
??2=Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/kernel/v
Y:W
??2GAdam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v
H:F?2;Adam/module_wrapper_3/simple_rnn_3/simple_rnn_cell_3/bias/v
5:3	?2$Adam/module_wrapper_4/dense/kernel/v
.:,2"Adam/module_wrapper_4/dense/bias/v
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_27767
E__inference_sequential_layer_call_and_return_conditional_losses_28193
E__inference_sequential_layer_call_and_return_conditional_losses_26094
E__inference_sequential_layer_call_and_return_conditional_losses_26131?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_24849?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0
module_wrapper_input??????????
?2?
*__inference_sequential_layer_call_fn_25368
*__inference_sequential_layer_call_fn_28226
*__inference_sequential_layer_call_fn_28259
*__inference_sequential_layer_call_fn_26057?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_28367
I__inference_module_wrapper_layer_call_and_return_conditional_losses_28475?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
.__inference_module_wrapper_layer_call_fn_28486
.__inference_module_wrapper_layer_call_fn_28497?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_28605
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_28713?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_1_layer_call_fn_28724
0__inference_module_wrapper_1_layer_call_fn_28735?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_28843
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_28951?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_2_layer_call_fn_28962
0__inference_module_wrapper_2_layer_call_fn_28973?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_29081
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_29189?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_3_layer_call_fn_29200
0__inference_module_wrapper_3_layer_call_fn_29211?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_29221
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_29231?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_4_layer_call_fn_29240
0__inference_module_wrapper_4_layer_call_fn_29249?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
#__inference_signature_wrapper_26172module_wrapper_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_simple_rnn_layer_call_fn_29260
*__inference_simple_rnn_layer_call_fn_29271?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_simple_rnn_layer_call_and_return_conditional_losses_29379
E__inference_simple_rnn_layer_call_and_return_conditional_losses_29487?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_simple_rnn_1_layer_call_fn_29498
,__inference_simple_rnn_1_layer_call_fn_29509?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_29617
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_29725?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_simple_rnn_2_layer_call_fn_29736
,__inference_simple_rnn_2_layer_call_fn_29747?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_29855
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_29963?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_simple_rnn_3_layer_call_fn_29974
,__inference_simple_rnn_3_layer_call_fn_29985?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_30093
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_30201?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_simple_rnn_cell_layer_call_fn_30215
/__inference_simple_rnn_cell_layer_call_fn_30229?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_30246
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_30263?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_simple_rnn_cell_1_layer_call_fn_30277
1__inference_simple_rnn_cell_1_layer_call_fn_30291?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_30308
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_30325?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_simple_rnn_cell_2_layer_call_fn_30339
1__inference_simple_rnn_cell_2_layer_call_fn_30353?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_30370
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_30387?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_simple_rnn_cell_3_layer_call_fn_30401
1__inference_simple_rnn_cell_3_layer_call_fn_30415?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_30432
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_30449?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
 __inference__wrapped_model_24849?*,+-/.02135467B??
8?5
3?0
module_wrapper_input??????????
? "C?@
>
module_wrapper_4*?'
module_wrapper_4??????????
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_28605w-/.D?A
*?'
%?"
args_0??????????
?

trainingp "*?'
 ?
0??????????
? ?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_28713w-/.D?A
*?'
%?"
args_0??????????
?

trainingp"*?'
 ?
0??????????
? ?
0__inference_module_wrapper_1_layer_call_fn_28724j-/.D?A
*?'
%?"
args_0??????????
?

trainingp "????????????
0__inference_module_wrapper_1_layer_call_fn_28735j-/.D?A
*?'
%?"
args_0??????????
?

trainingp"????????????
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_28843w021D?A
*?'
%?"
args_0??????????
?

trainingp "*?'
 ?
0??????????
? ?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_28951w021D?A
*?'
%?"
args_0??????????
?

trainingp"*?'
 ?
0??????????
? ?
0__inference_module_wrapper_2_layer_call_fn_28962j021D?A
*?'
%?"
args_0??????????
?

trainingp "????????????
0__inference_module_wrapper_2_layer_call_fn_28973j021D?A
*?'
%?"
args_0??????????
?

trainingp"????????????
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_29081s354D?A
*?'
%?"
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_29189s354D?A
*?'
%?"
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
0__inference_module_wrapper_3_layer_call_fn_29200f354D?A
*?'
%?"
args_0??????????
?

trainingp "????????????
0__inference_module_wrapper_3_layer_call_fn_29211f354D?A
*?'
%?"
args_0??????????
?

trainingp"????????????
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_29221m67@?=
&?#
!?
args_0??????????
?

trainingp "%?"
?
0?????????
? ?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_29231m67@?=
&?#
!?
args_0??????????
?

trainingp"%?"
?
0?????????
? ?
0__inference_module_wrapper_4_layer_call_fn_29240`67@?=
&?#
!?
args_0??????????
?

trainingp "???????????
0__inference_module_wrapper_4_layer_call_fn_29249`67@?=
&?#
!?
args_0??????????
?

trainingp"???????????
I__inference_module_wrapper_layer_call_and_return_conditional_losses_28367w*,+D?A
*?'
%?"
args_0??????????
?

trainingp "*?'
 ?
0??????????
? ?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_28475w*,+D?A
*?'
%?"
args_0??????????
?

trainingp"*?'
 ?
0??????????
? ?
.__inference_module_wrapper_layer_call_fn_28486j*,+D?A
*?'
%?"
args_0??????????
?

trainingp "????????????
.__inference_module_wrapper_layer_call_fn_28497j*,+D?A
*?'
%?"
args_0??????????
?

trainingp"????????????
E__inference_sequential_layer_call_and_return_conditional_losses_26094?*,+-/.02135467J?G
@?=
3?0
module_wrapper_input??????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_26131?*,+-/.02135467J?G
@?=
3?0
module_wrapper_input??????????
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_27767u*,+-/.02135467<?9
2?/
%?"
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_28193u*,+-/.02135467<?9
2?/
%?"
inputs??????????
p

 
? "%?"
?
0?????????
? ?
*__inference_sequential_layer_call_fn_25368v*,+-/.02135467J?G
@?=
3?0
module_wrapper_input??????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_26057v*,+-/.02135467J?G
@?=
3?0
module_wrapper_input??????????
p

 
? "???????????
*__inference_sequential_layer_call_fn_28226h*,+-/.02135467<?9
2?/
%?"
inputs??????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_28259h*,+-/.02135467<?9
2?/
%?"
inputs??????????
p

 
? "???????????
#__inference_signature_wrapper_26172?*,+-/.02135467Z?W
? 
P?M
K
module_wrapper_input3?0
module_wrapper_input??????????"C?@
>
module_wrapper_4*?'
module_wrapper_4??????????
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_29617?-/.P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "3?0
)?&
0???????????????????
? ?
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_29725?-/.P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "3?0
)?&
0???????????????????
? ?
,__inference_simple_rnn_1_layer_call_fn_29498-/.P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "&?#????????????????????
,__inference_simple_rnn_1_layer_call_fn_29509-/.P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "&?#????????????????????
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_29855?021P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "3?0
)?&
0???????????????????
? ?
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_29963?021P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "3?0
)?&
0???????????????????
? ?
,__inference_simple_rnn_2_layer_call_fn_29736021P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "&?#????????????????????
,__inference_simple_rnn_2_layer_call_fn_29747021P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "&?#????????????????????
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_30093354P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "&?#
?
0??????????
? ?
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_30201354P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "&?#
?
0??????????
? ?
,__inference_simple_rnn_3_layer_call_fn_29974r354P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "????????????
,__inference_simple_rnn_3_layer_call_fn_29985r354P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "????????????
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_30308?-/.^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
L__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_30325?-/.^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
1__inference_simple_rnn_cell_1_layer_call_fn_30277?-/.^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
1__inference_simple_rnn_cell_1_layer_call_fn_30291?-/.^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0???????????
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_30370?021^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
L__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_30387?021^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
1__inference_simple_rnn_cell_2_layer_call_fn_30339?021^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
1__inference_simple_rnn_cell_2_layer_call_fn_30353?021^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0???????????
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_30432?354^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_30449?354^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
1__inference_simple_rnn_cell_3_layer_call_fn_30401?354^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
1__inference_simple_rnn_cell_3_layer_call_fn_30415?354^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0???????????
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_30246?*,+^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_30263?*,+^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
/__inference_simple_rnn_cell_layer_call_fn_30215?*,+^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
/__inference_simple_rnn_cell_layer_call_fn_30229?*,+^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0???????????
E__inference_simple_rnn_layer_call_and_return_conditional_losses_29379?*,+P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "3?0
)?&
0???????????????????
? ?
E__inference_simple_rnn_layer_call_and_return_conditional_losses_29487?*,+P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "3?0
)?&
0???????????????????
? ?
*__inference_simple_rnn_layer_call_fn_29260*,+P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "&?#????????????????????
*__inference_simple_rnn_layer_call_fn_29271*,+P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "&?#???????????????????