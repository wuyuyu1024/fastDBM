��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58��
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
�
Adam/v/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/v/dense_20/bias
y
(Adam/v/dense_20/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_20/bias*
_output_shapes
:
*
dtype0
�
Adam/m/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/m/dense_20/bias
y
(Adam/m/dense_20/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_20/bias*
_output_shapes
:
*
dtype0
�
Adam/v/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*'
shared_nameAdam/v/dense_20/kernel
�
*Adam/v/dense_20/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_20/kernel*
_output_shapes
:	�
*
dtype0
�
Adam/m/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*'
shared_nameAdam/m/dense_20/kernel
�
*Adam/m/dense_20/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_20/kernel*
_output_shapes
:	�
*
dtype0
�
Adam/v/dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_19/bias
z
(Adam/v/dense_19/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_19/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_19/bias
z
(Adam/m/dense_19/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_19/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/v/dense_19/kernel
�
*Adam/v/dense_19/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_19/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/m/dense_19/kernel
�
*Adam/m/dense_19/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_19/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_18/bias
z
(Adam/v/dense_18/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_18/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_18/bias
z
(Adam/m/dense_18/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_18/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/v/dense_18/kernel
�
*Adam/v/dense_18/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_18/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/m/dense_18/kernel
�
*Adam/m/dense_18/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_18/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_17/bias
z
(Adam/v/dense_17/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_17/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_17/bias
z
(Adam/m/dense_17/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_17/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*'
shared_nameAdam/v/dense_17/kernel
�
*Adam/v/dense_17/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_17/kernel*
_output_shapes
:	@�*
dtype0
�
Adam/m/dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*'
shared_nameAdam/m/dense_17/kernel
�
*Adam/m/dense_17/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_17/kernel*
_output_shapes
:	@�*
dtype0
�
Adam/v/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_16/bias
y
(Adam/v/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_16/bias
y
(Adam/m/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*'
shared_nameAdam/v/dense_16/kernel
�
*Adam/v/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/kernel*
_output_shapes

: @*
dtype0
�
Adam/m/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*'
shared_nameAdam/m/dense_16/kernel
�
*Adam/m/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/kernel*
_output_shapes

: @*
dtype0
�
Adam/v/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/dense_15/bias
y
(Adam/v/dense_15/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_15/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/dense_15/bias
y
(Adam/m/dense_15/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_15/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/v/dense_15/kernel
�
*Adam/v/dense_15/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_15/kernel*
_output_shapes

: *
dtype0
�
Adam/m/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/m/dense_15/kernel
�
*Adam/m/dense_15/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_15/kernel*
_output_shapes

: *
dtype0
�
Adam/v/dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_14/bias
y
(Adam/v/dense_14/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_14/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_14/bias
y
(Adam/m/dense_14/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_14/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/v/dense_14/kernel
�
*Adam/v/dense_14/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_14/kernel*
_output_shapes

: *
dtype0
�
Adam/m/dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/m/dense_14/kernel
�
*Adam/m/dense_14/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_14/kernel*
_output_shapes

: *
dtype0
�
Adam/v/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/dense_13/bias
y
(Adam/v/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/dense_13/bias
y
(Adam/m/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/v/dense_13/kernel
�
*Adam/v/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/kernel*
_output_shapes

:@ *
dtype0
�
Adam/m/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/m/dense_13/kernel
�
*Adam/m/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/kernel*
_output_shapes

:@ *
dtype0
�
Adam/v/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_12/bias
y
(Adam/v/dense_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_12/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_12/bias
y
(Adam/m/dense_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_12/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/v/dense_12/kernel
�
*Adam/v/dense_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_12/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/m/dense_12/kernel
�
*Adam/m/dense_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_12/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/v/dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_11/bias
z
(Adam/v/dense_11/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_11/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_11/bias
z
(Adam/m/dense_11/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_11/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/v/dense_11/kernel
�
*Adam/v/dense_11/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_11/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/m/dense_11/kernel
�
*Adam/m/dense_11/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_11/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_10/bias
z
(Adam/v/dense_10/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_10/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_10/bias
z
(Adam/m/dense_10/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_10/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/v/dense_10/kernel
�
*Adam/v/dense_10/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_10/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/m/dense_10/kernel
�
*Adam/m/dense_10/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_10/kernel* 
_output_shapes
:
��*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:
*
dtype0
{
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
* 
shared_namedense_20/kernel
t
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes
:	�
*
dtype0
s
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_19/bias
l
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes	
:�*
dtype0
|
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_19/kernel
u
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel* 
_output_shapes
:
��*
dtype0
s
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_18/bias
l
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes	
:�*
dtype0
|
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_18/kernel
u
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel* 
_output_shapes
:
��*
dtype0
s
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_17/bias
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes	
:�*
dtype0
{
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�* 
shared_namedense_17/kernel
t
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes
:	@�*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:@*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

: @*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
: *
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

: *
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

: *
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
: *
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:@ *
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:@*
dtype0
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	�@*
dtype0
s
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_11/bias
l
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes	
:�*
dtype0
|
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_11/kernel
u
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel* 
_output_shapes
:
��*
dtype0
s
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_10/bias
l
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes	
:�*
dtype0
|
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_10/kernel
u
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel* 
_output_shapes
:
��*
dtype0
�
serving_default_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_10/kerneldense_10/biasdense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasdense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:���������
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_103355

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ɠ
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
 layer-5
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
�
'layer-0
(layer_with_weights-0
(layer-1
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21*
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21*
* 
�
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_3* 
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
* 
�
R
_variables
S_iterations
T_learning_rate
U_index_dict
V
_momentums
W_velocities
X_update_step_xla*
* 

Yserving_default* 
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses* 
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

/kernel
0bias*
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

1kernel
2bias*
�
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

3kernel
4bias*
�
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

5kernel
6bias*
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

7kernel
8bias*
J
/0
01
12
23
34
45
56
67
78
89*
J
/0
01
12
23
34
45
56
67
78
89*
	
~0* 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

9kernel
:bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

;kernel
<bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

=kernel
>bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

?kernel
@bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Akernel
Bbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
J
90
:1
;2
<3
=4
>5
?6
@7
A8
B9*
J
90
:1
;2
<3
=4
>5
?6
@7
A8
B9*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ckernel
Dbias*

C0
D1*

C0
D1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
OI
VARIABLE_VALUEdense_10/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_10/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_11/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_11/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_12/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_12/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_13/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_13/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_14/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_14/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_15/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_15/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_16/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_16/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_17/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_17/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_18/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_18/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_19/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_19/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_20/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_20/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*
,
�0
�1
�2
�3
�4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
S0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

/0
01*

/0
01*
	
~0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

10
21*

10
21*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

30
41*

30
41*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

50
61*

50
61*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

70
81*

70
81*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

�trace_0* 
* 
.
0
1
2
3
4
5*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

90
:1*

90
:1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

;0
<1*

;0
<1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

=0
>1*

=0
>1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

?0
@1*

?0
@1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

A0
B1*

A0
B1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
.
0
1
2
3
4
 5*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

C0
D1*

C0
D1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

'0
(1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/dense_10/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_10/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_10/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_10/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_11/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_11/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_11/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_11/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_12/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_12/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_12/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_12/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_13/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_13/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_13/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_13/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_14/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_14/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_14/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_14/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_15/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_15/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_15/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_15/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_16/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_16/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_16/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_16/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_17/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_17/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_17/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_17/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_18/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_18/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_18/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_18/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_19/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_19/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_19/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_19/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_20/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_20/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_20/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_20/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
~0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp*Adam/m/dense_10/kernel/Read/ReadVariableOp*Adam/v/dense_10/kernel/Read/ReadVariableOp(Adam/m/dense_10/bias/Read/ReadVariableOp(Adam/v/dense_10/bias/Read/ReadVariableOp*Adam/m/dense_11/kernel/Read/ReadVariableOp*Adam/v/dense_11/kernel/Read/ReadVariableOp(Adam/m/dense_11/bias/Read/ReadVariableOp(Adam/v/dense_11/bias/Read/ReadVariableOp*Adam/m/dense_12/kernel/Read/ReadVariableOp*Adam/v/dense_12/kernel/Read/ReadVariableOp(Adam/m/dense_12/bias/Read/ReadVariableOp(Adam/v/dense_12/bias/Read/ReadVariableOp*Adam/m/dense_13/kernel/Read/ReadVariableOp*Adam/v/dense_13/kernel/Read/ReadVariableOp(Adam/m/dense_13/bias/Read/ReadVariableOp(Adam/v/dense_13/bias/Read/ReadVariableOp*Adam/m/dense_14/kernel/Read/ReadVariableOp*Adam/v/dense_14/kernel/Read/ReadVariableOp(Adam/m/dense_14/bias/Read/ReadVariableOp(Adam/v/dense_14/bias/Read/ReadVariableOp*Adam/m/dense_15/kernel/Read/ReadVariableOp*Adam/v/dense_15/kernel/Read/ReadVariableOp(Adam/m/dense_15/bias/Read/ReadVariableOp(Adam/v/dense_15/bias/Read/ReadVariableOp*Adam/m/dense_16/kernel/Read/ReadVariableOp*Adam/v/dense_16/kernel/Read/ReadVariableOp(Adam/m/dense_16/bias/Read/ReadVariableOp(Adam/v/dense_16/bias/Read/ReadVariableOp*Adam/m/dense_17/kernel/Read/ReadVariableOp*Adam/v/dense_17/kernel/Read/ReadVariableOp(Adam/m/dense_17/bias/Read/ReadVariableOp(Adam/v/dense_17/bias/Read/ReadVariableOp*Adam/m/dense_18/kernel/Read/ReadVariableOp*Adam/v/dense_18/kernel/Read/ReadVariableOp(Adam/m/dense_18/bias/Read/ReadVariableOp(Adam/v/dense_18/bias/Read/ReadVariableOp*Adam/m/dense_19/kernel/Read/ReadVariableOp*Adam/v/dense_19/kernel/Read/ReadVariableOp(Adam/m/dense_19/bias/Read/ReadVariableOp(Adam/v/dense_19/bias/Read/ReadVariableOp*Adam/m/dense_20/kernel/Read/ReadVariableOp*Adam/v/dense_20/kernel/Read/ReadVariableOp(Adam/m/dense_20/bias/Read/ReadVariableOp(Adam/v/dense_20/bias/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*[
TinT
R2P	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_104561
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_10/kerneldense_10/biasdense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasdense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/bias	iterationlearning_rateAdam/m/dense_10/kernelAdam/v/dense_10/kernelAdam/m/dense_10/biasAdam/v/dense_10/biasAdam/m/dense_11/kernelAdam/v/dense_11/kernelAdam/m/dense_11/biasAdam/v/dense_11/biasAdam/m/dense_12/kernelAdam/v/dense_12/kernelAdam/m/dense_12/biasAdam/v/dense_12/biasAdam/m/dense_13/kernelAdam/v/dense_13/kernelAdam/m/dense_13/biasAdam/v/dense_13/biasAdam/m/dense_14/kernelAdam/v/dense_14/kernelAdam/m/dense_14/biasAdam/v/dense_14/biasAdam/m/dense_15/kernelAdam/v/dense_15/kernelAdam/m/dense_15/biasAdam/v/dense_15/biasAdam/m/dense_16/kernelAdam/v/dense_16/kernelAdam/m/dense_16/biasAdam/v/dense_16/biasAdam/m/dense_17/kernelAdam/v/dense_17/kernelAdam/m/dense_17/biasAdam/v/dense_17/biasAdam/m/dense_18/kernelAdam/v/dense_18/kernelAdam/m/dense_18/biasAdam/v/dense_18/biasAdam/m/dense_19/kernelAdam/v/dense_19/kernelAdam/m/dense_19/biasAdam/v/dense_19/biasAdam/m/dense_20/kernelAdam/v/dense_20/kernelAdam/m/dense_20/biasAdam/v/dense_20/biastotal_4count_4total_3count_3total_2count_2total_1count_1totalcount*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_104805��
�
�
F__inference_classifier_layer_call_and_return_conditional_losses_102846
flatten_2_input"
dense_20_102840:	�

dense_20_102842:

identity�� dense_20/StatefulPartitionedCall�
flatten_2/PartitionedCallPartitionedCallflatten_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_102746�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_20_102840dense_20_102842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_102759x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
i
NoOpNoOp!^dense_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_2_input
�

�
D__inference_dense_17_layer_call_and_return_conditional_losses_102417

inputs1
matmul_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_14_layer_call_and_return_conditional_losses_102094

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
D__inference_dense_19_layer_call_and_return_conditional_losses_104245

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:����������[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_18_layer_call_and_return_conditional_losses_104225

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
@__inference_ssnp_layer_call_and_return_conditional_losses_102910

inputs"
encoder_102853:
��
encoder_102855:	�"
encoder_102857:
��
encoder_102859:	�!
encoder_102861:	�@
encoder_102863:@ 
encoder_102865:@ 
encoder_102867:  
encoder_102869: 
encoder_102871: 
decoder_102874: 
decoder_102876:  
decoder_102878: @
decoder_102880:@!
decoder_102882:	@�
decoder_102884:	�"
decoder_102886:
��
decoder_102888:	�"
decoder_102890:
��
decoder_102892:	�$
classifier_102895:	�

classifier_102897:

identity

identity_1��"classifier/StatefulPartitionedCall�decoder/StatefulPartitionedCall�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_102853encoder_102855encoder_102857encoder_102859encoder_102861encoder_102863encoder_102865encoder_102867encoder_102869encoder_102871*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_102105�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_102874decoder_102876decoder_102878decoder_102880decoder_102882decoder_102884decoder_102886decoder_102888decoder_102890decoder_102892*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_102477�
"classifier/StatefulPartitionedCallStatefulPartitionedCall(decoder/StatefulPartitionedCall:output:0classifier_102895classifier_102897*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_classifier_layer_call_and_return_conditional_losses_102766�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpencoder_102853* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdecoder_102874*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������|

Identity_1Identity+classifier/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp#^classifier/StatefulPartitionedCall ^decoder/StatefulPartitionedCall2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2H
"classifier/StatefulPartitionedCall"classifier/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_17_layer_call_and_return_conditional_losses_104205

inputs1
matmul_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_13_layer_call_and_return_conditional_losses_104112

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
(__inference_encoder_layer_call_fn_103700

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_102105o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_16_layer_call_and_return_conditional_losses_104185

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
F__inference_classifier_layer_call_and_return_conditional_losses_104017

inputs:
'dense_20_matmul_readvariableop_resource:	�
6
(dense_20_biasadd_readvariableop_resource:

identity��dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOp`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  q
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*(
_output_shapes
:�����������
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_20/MatMulMatMulflatten_2/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
h
dense_20/SoftmaxSoftmaxdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������
i
IdentityIdentitydense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
C__inference_decoder_layer_call_and_return_conditional_losses_102617

inputs!
dense_15_102586: 
dense_15_102588: !
dense_16_102591: @
dense_16_102593:@"
dense_17_102596:	@�
dense_17_102598:	�#
dense_18_102601:
��
dense_18_102603:	�#
dense_19_102606:
��
dense_19_102608:	�
identity�� dense_15/StatefulPartitionedCall�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15_102586dense_15_102588*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_102383�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_102591dense_16_102593*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_102400�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_102596dense_17_102598*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_102417�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0dense_18_102601dense_18_102603*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_102434�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_102606dense_19_102608*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_102451�
reshape_1/PartitionedCallPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_102470�
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_15_102586*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: u
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^dense_15/StatefulPartitionedCall2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_16_layer_call_and_return_conditional_losses_102400

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
%__inference_ssnp_layer_call_fn_103414

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: @

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�


unknown_20:

identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:���������:���������
*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_ssnp_layer_call_and_return_conditional_losses_102910s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_104283

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_classifier_layer_call_fn_103991

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_classifier_layer_call_and_return_conditional_losses_102810o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_102746

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
F
*__inference_flatten_2_layer_call_fn_104277

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_102746a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
(__inference_decoder_layer_call_fn_103869

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_102617s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�4
�
C__inference_encoder_layer_call_and_return_conditional_losses_103770

inputs;
'dense_10_matmul_readvariableop_resource:
��7
(dense_10_biasadd_readvariableop_resource:	�;
'dense_11_matmul_readvariableop_resource:
��7
(dense_11_biasadd_readvariableop_resource:	�:
'dense_12_matmul_readvariableop_resource:	�@6
(dense_12_biasadd_readvariableop_resource:@9
'dense_13_matmul_readvariableop_resource:@ 6
(dense_13_biasadd_readvariableop_resource: 9
'dense_14_matmul_readvariableop_resource: 6
(dense_14_biasadd_readvariableop_resource:
identity��dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp�dense_11/BiasAdd/ReadVariableOp�dense_11/MatMul/ReadVariableOp�dense_12/BiasAdd/ReadVariableOp�dense_12/MatMul/ReadVariableOp�dense_13/BiasAdd/ReadVariableOp�dense_13/MatMul/ReadVariableOp�dense_14/BiasAdd/ReadVariableOp�dense_14/MatMul/ReadVariableOp`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  q
flatten_1/ReshapeReshapeinputsflatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_10/MatMulMatMulflatten_1/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_12/MatMulMatMuldense_11/Relu:activations:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_14/SigmoidSigmoiddense_14/BiasAdd:output:0*
T0*'
_output_shapes
:����������
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: c
IdentityIdentitydense_14/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�<
�
C__inference_decoder_layer_call_and_return_conditional_losses_103921

inputs9
'dense_15_matmul_readvariableop_resource: 6
(dense_15_biasadd_readvariableop_resource: 9
'dense_16_matmul_readvariableop_resource: @6
(dense_16_biasadd_readvariableop_resource:@:
'dense_17_matmul_readvariableop_resource:	@�7
(dense_17_biasadd_readvariableop_resource:	�;
'dense_18_matmul_readvariableop_resource:
��7
(dense_18_biasadd_readvariableop_resource:	�;
'dense_19_matmul_readvariableop_resource:
��7
(dense_19_biasadd_readvariableop_resource:	�
identity��dense_15/BiasAdd/ReadVariableOp�dense_15/MatMul/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp�dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�dense_18/BiasAdd/ReadVariableOp�dense_18/MatMul/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

: *
dtype0{
dense_15/MatMulMatMulinputs&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0�
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_18/MatMulMatMuldense_17/Relu:activations:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_19/MatMulMatMuldense_18/Relu:activations:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
dense_19/SigmoidSigmoiddense_19/BiasAdd:output:0*
T0*(
_output_shapes
:����������S
reshape_1/ShapeShapedense_19/Sigmoid:y:0*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_1/ReshapeReshapedense_19/Sigmoid:y:0 reshape_1/Reshape/shape:output:0*
T0*+
_output_shapes
:����������
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityreshape_1/Reshape:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_20_layer_call_fn_104292

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_102759o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_17_layer_call_fn_104194

inputs
unknown:	@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_102417p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_12_layer_call_and_return_conditional_losses_104092

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_104028

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_classifier_layer_call_fn_102826
flatten_2_input
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_classifier_layer_call_and_return_conditional_losses_102810o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_2_input
�

�
D__inference_dense_19_layer_call_and_return_conditional_losses_102451

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:����������[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_11_layer_call_fn_104061

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_102043p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_18_layer_call_and_return_conditional_losses_102434

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_10_layer_call_fn_104037

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_102026p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
@__inference_ssnp_layer_call_and_return_conditional_losses_103072

inputs"
encoder_103015:
��
encoder_103017:	�"
encoder_103019:
��
encoder_103021:	�!
encoder_103023:	�@
encoder_103025:@ 
encoder_103027:@ 
encoder_103029:  
encoder_103031: 
encoder_103033: 
decoder_103036: 
decoder_103038:  
decoder_103040: @
decoder_103042:@!
decoder_103044:	@�
decoder_103046:	�"
decoder_103048:
��
decoder_103050:	�"
decoder_103052:
��
decoder_103054:	�$
classifier_103057:	�

classifier_103059:

identity

identity_1��"classifier/StatefulPartitionedCall�decoder/StatefulPartitionedCall�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_103015encoder_103017encoder_103019encoder_103021encoder_103023encoder_103025encoder_103027encoder_103029encoder_103031encoder_103033*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_102245�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_103036decoder_103038decoder_103040decoder_103042decoder_103044decoder_103046decoder_103048decoder_103050decoder_103052decoder_103054*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_102617�
"classifier/StatefulPartitionedCallStatefulPartitionedCall(decoder/StatefulPartitionedCall:output:0classifier_103057classifier_103059*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_classifier_layer_call_and_return_conditional_losses_102810�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpencoder_103015* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdecoder_103036*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������|

Identity_1Identity+classifier/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp#^classifier/StatefulPartitionedCall ^decoder/StatefulPartitionedCall2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2H
"classifier/StatefulPartitionedCall"classifier/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_classifier_layer_call_and_return_conditional_losses_102766

inputs"
dense_20_102760:	�

dense_20_102762:

identity�� dense_20/StatefulPartitionedCall�
flatten_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_102746�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_20_102760dense_20_102762*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_102759x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
i
NoOpNoOp!^dense_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
F
*__inference_reshape_1_layer_call_fn_104250

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_102470d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�$
�
C__inference_decoder_layer_call_and_return_conditional_losses_102477

inputs!
dense_15_102384: 
dense_15_102386: !
dense_16_102401: @
dense_16_102403:@"
dense_17_102418:	@�
dense_17_102420:	�#
dense_18_102435:
��
dense_18_102437:	�#
dense_19_102452:
��
dense_19_102454:	�
identity�� dense_15/StatefulPartitionedCall�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15_102384dense_15_102386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_102383�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_102401dense_16_102403*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_102400�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_102418dense_17_102420*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_102417�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0dense_18_102435dense_18_102437*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_102434�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_102452dense_19_102454*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_102451�
reshape_1/PartitionedCallPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_102470�
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_15_102384*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: u
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^dense_15/StatefulPartitionedCall2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

a
E__inference_reshape_1_layer_call_and_return_conditional_losses_102470

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
(__inference_encoder_layer_call_fn_102293
flatten_1_input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_102245o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_1_input
�$
�
C__inference_decoder_layer_call_and_return_conditional_losses_102733
dense_15_input!
dense_15_102702: 
dense_15_102704: !
dense_16_102707: @
dense_16_102709:@"
dense_17_102712:	@�
dense_17_102714:	�#
dense_18_102717:
��
dense_18_102719:	�#
dense_19_102722:
��
dense_19_102724:	�
identity�� dense_15/StatefulPartitionedCall�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCalldense_15_inputdense_15_102702dense_15_102704*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_102383�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_102707dense_16_102709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_102400�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_102712dense_17_102714*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_102417�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0dense_18_102717dense_18_102719*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_102434�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_102722dense_19_102724*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_102451�
reshape_1/PartitionedCallPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_102470�
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_15_102702*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: u
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^dense_15/StatefulPartitionedCall2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namedense_15_input
�
�
+__inference_classifier_layer_call_fn_102773
flatten_2_input
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_classifier_layer_call_and_return_conditional_losses_102766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_2_input
�$
�
C__inference_encoder_layer_call_and_return_conditional_losses_102327
flatten_1_input#
dense_10_102297:
��
dense_10_102299:	�#
dense_11_102302:
��
dense_11_102304:	�"
dense_12_102307:	�@
dense_12_102309:@!
dense_13_102312:@ 
dense_13_102314: !
dense_14_102317: 
dense_14_102319:
identity�� dense_10/StatefulPartitionedCall�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp� dense_11/StatefulPartitionedCall� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall� dense_14/StatefulPartitionedCall�
flatten_1/PartitionedCallPartitionedCallflatten_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_102009�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_10_102297dense_10_102299*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_102026�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_102302dense_11_102304*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_102043�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0dense_12_102307dense_12_102309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_102060�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_102312dense_13_102314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_102077�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_102317dense_14_102319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_102094�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_10_102297* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_1_input
�

�
D__inference_dense_20_layer_call_and_return_conditional_losses_104303

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_dense_15_layer_call_and_return_conditional_losses_104165

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� �
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_13_layer_call_and_return_conditional_losses_102077

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
F__inference_classifier_layer_call_and_return_conditional_losses_102810

inputs"
dense_20_102804:	�

dense_20_102806:

identity�� dense_20/StatefulPartitionedCall�
flatten_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_102746�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_20_102804dense_20_102806*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_102759x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
i
NoOpNoOp!^dense_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
(__inference_encoder_layer_call_fn_102128
flatten_1_input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_102105o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_1_input
�
�
F__inference_classifier_layer_call_and_return_conditional_losses_102836
flatten_2_input"
dense_20_102830:	�

dense_20_102832:

identity�� dense_20/StatefulPartitionedCall�
flatten_2/PartitionedCallPartitionedCallflatten_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_102746�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_20_102830dense_20_102832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_102759x
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
i
NoOpNoOp!^dense_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_2_input
�
�
%__inference_ssnp_layer_call_fn_103465

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: @

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�


unknown_20:

identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:���������:���������
*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_ssnp_layer_call_and_return_conditional_losses_103072s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_classifier_layer_call_fn_103982

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_classifier_layer_call_and_return_conditional_losses_102766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_dense_10_layer_call_and_return_conditional_losses_104052

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:�����������
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_1_104272L
:dense_15_kernel_regularizer_l2loss_readvariableop_resource: 
identity��1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp�
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:dense_15_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_15/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp
�

a
E__inference_reshape_1_layer_call_and_return_conditional_losses_104263

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_16_layer_call_fn_104174

inputs
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_102400o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�%
�
@__inference_ssnp_layer_call_and_return_conditional_losses_103232	
input"
encoder_103175:
��
encoder_103177:	�"
encoder_103179:
��
encoder_103181:	�!
encoder_103183:	�@
encoder_103185:@ 
encoder_103187:@ 
encoder_103189:  
encoder_103191: 
encoder_103193: 
decoder_103196: 
decoder_103198:  
decoder_103200: @
decoder_103202:@!
decoder_103204:	@�
decoder_103206:	�"
decoder_103208:
��
decoder_103210:	�"
decoder_103212:
��
decoder_103214:	�$
classifier_103217:	�

classifier_103219:

identity

identity_1��"classifier/StatefulPartitionedCall�decoder/StatefulPartitionedCall�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputencoder_103175encoder_103177encoder_103179encoder_103181encoder_103183encoder_103185encoder_103187encoder_103189encoder_103191encoder_103193*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_102105�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_103196decoder_103198decoder_103200decoder_103202decoder_103204decoder_103206decoder_103208decoder_103210decoder_103212decoder_103214*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_102477�
"classifier/StatefulPartitionedCallStatefulPartitionedCall(decoder/StatefulPartitionedCall:output:0classifier_103217classifier_103219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_classifier_layer_call_and_return_conditional_losses_102766�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpencoder_103175* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdecoder_103196*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������|

Identity_1Identity+classifier/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp#^classifier/StatefulPartitionedCall ^decoder/StatefulPartitionedCall2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2H
"classifier/StatefulPartitionedCall"classifier/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameinput
�

�
(__inference_decoder_layer_call_fn_102500
dense_15_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_102477s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namedense_15_input
�

�
D__inference_dense_11_layer_call_and_return_conditional_losses_104072

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
@__inference_ssnp_layer_call_and_return_conditional_losses_103568

inputsC
/encoder_dense_10_matmul_readvariableop_resource:
��?
0encoder_dense_10_biasadd_readvariableop_resource:	�C
/encoder_dense_11_matmul_readvariableop_resource:
��?
0encoder_dense_11_biasadd_readvariableop_resource:	�B
/encoder_dense_12_matmul_readvariableop_resource:	�@>
0encoder_dense_12_biasadd_readvariableop_resource:@A
/encoder_dense_13_matmul_readvariableop_resource:@ >
0encoder_dense_13_biasadd_readvariableop_resource: A
/encoder_dense_14_matmul_readvariableop_resource: >
0encoder_dense_14_biasadd_readvariableop_resource:A
/decoder_dense_15_matmul_readvariableop_resource: >
0decoder_dense_15_biasadd_readvariableop_resource: A
/decoder_dense_16_matmul_readvariableop_resource: @>
0decoder_dense_16_biasadd_readvariableop_resource:@B
/decoder_dense_17_matmul_readvariableop_resource:	@�?
0decoder_dense_17_biasadd_readvariableop_resource:	�C
/decoder_dense_18_matmul_readvariableop_resource:
��?
0decoder_dense_18_biasadd_readvariableop_resource:	�C
/decoder_dense_19_matmul_readvariableop_resource:
��?
0decoder_dense_19_biasadd_readvariableop_resource:	�E
2classifier_dense_20_matmul_readvariableop_resource:	�
A
3classifier_dense_20_biasadd_readvariableop_resource:

identity

identity_1��*classifier/dense_20/BiasAdd/ReadVariableOp�)classifier/dense_20/MatMul/ReadVariableOp�'decoder/dense_15/BiasAdd/ReadVariableOp�&decoder/dense_15/MatMul/ReadVariableOp�'decoder/dense_16/BiasAdd/ReadVariableOp�&decoder/dense_16/MatMul/ReadVariableOp�'decoder/dense_17/BiasAdd/ReadVariableOp�&decoder/dense_17/MatMul/ReadVariableOp�'decoder/dense_18/BiasAdd/ReadVariableOp�&decoder/dense_18/MatMul/ReadVariableOp�'decoder/dense_19/BiasAdd/ReadVariableOp�&decoder/dense_19/MatMul/ReadVariableOp�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp�'encoder/dense_10/BiasAdd/ReadVariableOp�&encoder/dense_10/MatMul/ReadVariableOp�'encoder/dense_11/BiasAdd/ReadVariableOp�&encoder/dense_11/MatMul/ReadVariableOp�'encoder/dense_12/BiasAdd/ReadVariableOp�&encoder/dense_12/MatMul/ReadVariableOp�'encoder/dense_13/BiasAdd/ReadVariableOp�&encoder/dense_13/MatMul/ReadVariableOp�'encoder/dense_14/BiasAdd/ReadVariableOp�&encoder/dense_14/MatMul/ReadVariableOph
encoder/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
encoder/flatten_1/ReshapeReshapeinputs encoder/flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
&encoder/dense_10/MatMul/ReadVariableOpReadVariableOp/encoder_dense_10_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
encoder/dense_10/MatMulMatMul"encoder/flatten_1/Reshape:output:0.encoder/dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'encoder/dense_10/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense_10/BiasAddBiasAdd!encoder/dense_10/MatMul:product:0/encoder/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
encoder/dense_10/ReluRelu!encoder/dense_10/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&encoder/dense_11/MatMul/ReadVariableOpReadVariableOp/encoder_dense_11_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
encoder/dense_11/MatMulMatMul#encoder/dense_10/Relu:activations:0.encoder/dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'encoder/dense_11/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense_11/BiasAddBiasAdd!encoder/dense_11/MatMul:product:0/encoder/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
encoder/dense_11/ReluRelu!encoder/dense_11/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&encoder/dense_12/MatMul/ReadVariableOpReadVariableOp/encoder_dense_12_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
encoder/dense_12/MatMulMatMul#encoder/dense_11/Relu:activations:0.encoder/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'encoder/dense_12/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
encoder/dense_12/BiasAddBiasAdd!encoder/dense_12/MatMul:product:0/encoder/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
encoder/dense_12/ReluRelu!encoder/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&encoder/dense_13/MatMul/ReadVariableOpReadVariableOp/encoder_dense_13_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
encoder/dense_13/MatMulMatMul#encoder/dense_12/Relu:activations:0.encoder/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'encoder/dense_13/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
encoder/dense_13/BiasAddBiasAdd!encoder/dense_13/MatMul:product:0/encoder/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
encoder/dense_13/ReluRelu!encoder/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&encoder/dense_14/MatMul/ReadVariableOpReadVariableOp/encoder_dense_14_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
encoder/dense_14/MatMulMatMul#encoder/dense_13/Relu:activations:0.encoder/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'encoder/dense_14/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder/dense_14/BiasAddBiasAdd!encoder/dense_14/MatMul:product:0/encoder/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
encoder/dense_14/SigmoidSigmoid!encoder/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:����������
&decoder/dense_15/MatMul/ReadVariableOpReadVariableOp/decoder_dense_15_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
decoder/dense_15/MatMulMatMulencoder/dense_14/Sigmoid:y:0.decoder/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'decoder/dense_15/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
decoder/dense_15/BiasAddBiasAdd!decoder/dense_15/MatMul:product:0/decoder/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
decoder/dense_15/ReluRelu!decoder/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&decoder/dense_16/MatMul/ReadVariableOpReadVariableOp/decoder_dense_16_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0�
decoder/dense_16/MatMulMatMul#decoder/dense_15/Relu:activations:0.decoder/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'decoder/dense_16/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
decoder/dense_16/BiasAddBiasAdd!decoder/dense_16/MatMul:product:0/decoder/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
decoder/dense_16/ReluRelu!decoder/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&decoder/dense_17/MatMul/ReadVariableOpReadVariableOp/decoder_dense_17_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
decoder/dense_17/MatMulMatMul#decoder/dense_16/Relu:activations:0.decoder/dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'decoder/dense_17/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/dense_17/BiasAddBiasAdd!decoder/dense_17/MatMul:product:0/decoder/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
decoder/dense_17/ReluRelu!decoder/dense_17/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&decoder/dense_18/MatMul/ReadVariableOpReadVariableOp/decoder_dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
decoder/dense_18/MatMulMatMul#decoder/dense_17/Relu:activations:0.decoder/dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'decoder/dense_18/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/dense_18/BiasAddBiasAdd!decoder/dense_18/MatMul:product:0/decoder/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
decoder/dense_18/ReluRelu!decoder/dense_18/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&decoder/dense_19/MatMul/ReadVariableOpReadVariableOp/decoder_dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
decoder/dense_19/MatMulMatMul#decoder/dense_18/Relu:activations:0.decoder/dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'decoder/dense_19/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/dense_19/BiasAddBiasAdd!decoder/dense_19/MatMul:product:0/decoder/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
decoder/dense_19/SigmoidSigmoid!decoder/dense_19/BiasAdd:output:0*
T0*(
_output_shapes
:����������c
decoder/reshape_1/ShapeShapedecoder/dense_19/Sigmoid:y:0*
T0*
_output_shapes
:o
%decoder/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'decoder/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'decoder/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
decoder/reshape_1/strided_sliceStridedSlice decoder/reshape_1/Shape:output:0.decoder/reshape_1/strided_slice/stack:output:00decoder/reshape_1/strided_slice/stack_1:output:00decoder/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!decoder/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :c
!decoder/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
decoder/reshape_1/Reshape/shapePack(decoder/reshape_1/strided_slice:output:0*decoder/reshape_1/Reshape/shape/1:output:0*decoder/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
decoder/reshape_1/ReshapeReshapedecoder/dense_19/Sigmoid:y:0(decoder/reshape_1/Reshape/shape:output:0*
T0*+
_output_shapes
:���������k
classifier/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
classifier/flatten_2/ReshapeReshape"decoder/reshape_1/Reshape:output:0#classifier/flatten_2/Const:output:0*
T0*(
_output_shapes
:�����������
)classifier/dense_20/MatMul/ReadVariableOpReadVariableOp2classifier_dense_20_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
classifier/dense_20/MatMulMatMul%classifier/flatten_2/Reshape:output:01classifier/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
*classifier/dense_20/BiasAdd/ReadVariableOpReadVariableOp3classifier_dense_20_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
classifier/dense_20/BiasAddBiasAdd$classifier/dense_20/MatMul:product:02classifier/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
~
classifier/dense_20/SoftmaxSoftmax$classifier/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp/encoder_dense_10_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp/decoder_dense_15_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: u
IdentityIdentity"decoder/reshape_1/Reshape:output:0^NoOp*
T0*+
_output_shapes
:���������v

Identity_1Identity%classifier/dense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp+^classifier/dense_20/BiasAdd/ReadVariableOp*^classifier/dense_20/MatMul/ReadVariableOp(^decoder/dense_15/BiasAdd/ReadVariableOp'^decoder/dense_15/MatMul/ReadVariableOp(^decoder/dense_16/BiasAdd/ReadVariableOp'^decoder/dense_16/MatMul/ReadVariableOp(^decoder/dense_17/BiasAdd/ReadVariableOp'^decoder/dense_17/MatMul/ReadVariableOp(^decoder/dense_18/BiasAdd/ReadVariableOp'^decoder/dense_18/MatMul/ReadVariableOp(^decoder/dense_19/BiasAdd/ReadVariableOp'^decoder/dense_19/MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp(^encoder/dense_10/BiasAdd/ReadVariableOp'^encoder/dense_10/MatMul/ReadVariableOp(^encoder/dense_11/BiasAdd/ReadVariableOp'^encoder/dense_11/MatMul/ReadVariableOp(^encoder/dense_12/BiasAdd/ReadVariableOp'^encoder/dense_12/MatMul/ReadVariableOp(^encoder/dense_13/BiasAdd/ReadVariableOp'^encoder/dense_13/MatMul/ReadVariableOp(^encoder/dense_14/BiasAdd/ReadVariableOp'^encoder/dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2X
*classifier/dense_20/BiasAdd/ReadVariableOp*classifier/dense_20/BiasAdd/ReadVariableOp2V
)classifier/dense_20/MatMul/ReadVariableOp)classifier/dense_20/MatMul/ReadVariableOp2R
'decoder/dense_15/BiasAdd/ReadVariableOp'decoder/dense_15/BiasAdd/ReadVariableOp2P
&decoder/dense_15/MatMul/ReadVariableOp&decoder/dense_15/MatMul/ReadVariableOp2R
'decoder/dense_16/BiasAdd/ReadVariableOp'decoder/dense_16/BiasAdd/ReadVariableOp2P
&decoder/dense_16/MatMul/ReadVariableOp&decoder/dense_16/MatMul/ReadVariableOp2R
'decoder/dense_17/BiasAdd/ReadVariableOp'decoder/dense_17/BiasAdd/ReadVariableOp2P
&decoder/dense_17/MatMul/ReadVariableOp&decoder/dense_17/MatMul/ReadVariableOp2R
'decoder/dense_18/BiasAdd/ReadVariableOp'decoder/dense_18/BiasAdd/ReadVariableOp2P
&decoder/dense_18/MatMul/ReadVariableOp&decoder/dense_18/MatMul/ReadVariableOp2R
'decoder/dense_19/BiasAdd/ReadVariableOp'decoder/dense_19/BiasAdd/ReadVariableOp2P
&decoder/dense_19/MatMul/ReadVariableOp&decoder/dense_19/MatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2R
'encoder/dense_10/BiasAdd/ReadVariableOp'encoder/dense_10/BiasAdd/ReadVariableOp2P
&encoder/dense_10/MatMul/ReadVariableOp&encoder/dense_10/MatMul/ReadVariableOp2R
'encoder/dense_11/BiasAdd/ReadVariableOp'encoder/dense_11/BiasAdd/ReadVariableOp2P
&encoder/dense_11/MatMul/ReadVariableOp&encoder/dense_11/MatMul/ReadVariableOp2R
'encoder/dense_12/BiasAdd/ReadVariableOp'encoder/dense_12/BiasAdd/ReadVariableOp2P
&encoder/dense_12/MatMul/ReadVariableOp&encoder/dense_12/MatMul/ReadVariableOp2R
'encoder/dense_13/BiasAdd/ReadVariableOp'encoder/dense_13/BiasAdd/ReadVariableOp2P
&encoder/dense_13/MatMul/ReadVariableOp&encoder/dense_13/MatMul/ReadVariableOp2R
'encoder/dense_14/BiasAdd/ReadVariableOp'encoder/dense_14/BiasAdd/ReadVariableOp2P
&encoder/dense_14/MatMul/ReadVariableOp&encoder/dense_14/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
@__inference_ssnp_layer_call_and_return_conditional_losses_103292	
input"
encoder_103235:
��
encoder_103237:	�"
encoder_103239:
��
encoder_103241:	�!
encoder_103243:	�@
encoder_103245:@ 
encoder_103247:@ 
encoder_103249:  
encoder_103251: 
encoder_103253: 
decoder_103256: 
decoder_103258:  
decoder_103260: @
decoder_103262:@!
decoder_103264:	@�
decoder_103266:	�"
decoder_103268:
��
decoder_103270:	�"
decoder_103272:
��
decoder_103274:	�$
classifier_103277:	�

classifier_103279:

identity

identity_1��"classifier/StatefulPartitionedCall�decoder/StatefulPartitionedCall�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputencoder_103235encoder_103237encoder_103239encoder_103241encoder_103243encoder_103245encoder_103247encoder_103249encoder_103251encoder_103253*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_102245�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_103256decoder_103258decoder_103260decoder_103262decoder_103264decoder_103266decoder_103268decoder_103270decoder_103272decoder_103274*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_102617�
"classifier/StatefulPartitionedCallStatefulPartitionedCall(decoder/StatefulPartitionedCall:output:0classifier_103277classifier_103279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_classifier_layer_call_and_return_conditional_losses_102810�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpencoder_103235* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdecoder_103256*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������|

Identity_1Identity+classifier/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp#^classifier/StatefulPartitionedCall ^decoder/StatefulPartitionedCall2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2H
"classifier/StatefulPartitionedCall"classifier/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameinput
��
�
__inference__traced_save_104561
file_prefix.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop5
1savev2_adam_m_dense_10_kernel_read_readvariableop5
1savev2_adam_v_dense_10_kernel_read_readvariableop3
/savev2_adam_m_dense_10_bias_read_readvariableop3
/savev2_adam_v_dense_10_bias_read_readvariableop5
1savev2_adam_m_dense_11_kernel_read_readvariableop5
1savev2_adam_v_dense_11_kernel_read_readvariableop3
/savev2_adam_m_dense_11_bias_read_readvariableop3
/savev2_adam_v_dense_11_bias_read_readvariableop5
1savev2_adam_m_dense_12_kernel_read_readvariableop5
1savev2_adam_v_dense_12_kernel_read_readvariableop3
/savev2_adam_m_dense_12_bias_read_readvariableop3
/savev2_adam_v_dense_12_bias_read_readvariableop5
1savev2_adam_m_dense_13_kernel_read_readvariableop5
1savev2_adam_v_dense_13_kernel_read_readvariableop3
/savev2_adam_m_dense_13_bias_read_readvariableop3
/savev2_adam_v_dense_13_bias_read_readvariableop5
1savev2_adam_m_dense_14_kernel_read_readvariableop5
1savev2_adam_v_dense_14_kernel_read_readvariableop3
/savev2_adam_m_dense_14_bias_read_readvariableop3
/savev2_adam_v_dense_14_bias_read_readvariableop5
1savev2_adam_m_dense_15_kernel_read_readvariableop5
1savev2_adam_v_dense_15_kernel_read_readvariableop3
/savev2_adam_m_dense_15_bias_read_readvariableop3
/savev2_adam_v_dense_15_bias_read_readvariableop5
1savev2_adam_m_dense_16_kernel_read_readvariableop5
1savev2_adam_v_dense_16_kernel_read_readvariableop3
/savev2_adam_m_dense_16_bias_read_readvariableop3
/savev2_adam_v_dense_16_bias_read_readvariableop5
1savev2_adam_m_dense_17_kernel_read_readvariableop5
1savev2_adam_v_dense_17_kernel_read_readvariableop3
/savev2_adam_m_dense_17_bias_read_readvariableop3
/savev2_adam_v_dense_17_bias_read_readvariableop5
1savev2_adam_m_dense_18_kernel_read_readvariableop5
1savev2_adam_v_dense_18_kernel_read_readvariableop3
/savev2_adam_m_dense_18_bias_read_readvariableop3
/savev2_adam_v_dense_18_bias_read_readvariableop5
1savev2_adam_m_dense_19_kernel_read_readvariableop5
1savev2_adam_v_dense_19_kernel_read_readvariableop3
/savev2_adam_m_dense_19_bias_read_readvariableop3
/savev2_adam_v_dense_19_bias_read_readvariableop5
1savev2_adam_m_dense_20_kernel_read_readvariableop5
1savev2_adam_v_dense_20_kernel_read_readvariableop3
/savev2_adam_m_dense_20_bias_read_readvariableop3
/savev2_adam_v_dense_20_bias_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*�
value�B�OB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*�
value�B�OB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop1savev2_adam_m_dense_10_kernel_read_readvariableop1savev2_adam_v_dense_10_kernel_read_readvariableop/savev2_adam_m_dense_10_bias_read_readvariableop/savev2_adam_v_dense_10_bias_read_readvariableop1savev2_adam_m_dense_11_kernel_read_readvariableop1savev2_adam_v_dense_11_kernel_read_readvariableop/savev2_adam_m_dense_11_bias_read_readvariableop/savev2_adam_v_dense_11_bias_read_readvariableop1savev2_adam_m_dense_12_kernel_read_readvariableop1savev2_adam_v_dense_12_kernel_read_readvariableop/savev2_adam_m_dense_12_bias_read_readvariableop/savev2_adam_v_dense_12_bias_read_readvariableop1savev2_adam_m_dense_13_kernel_read_readvariableop1savev2_adam_v_dense_13_kernel_read_readvariableop/savev2_adam_m_dense_13_bias_read_readvariableop/savev2_adam_v_dense_13_bias_read_readvariableop1savev2_adam_m_dense_14_kernel_read_readvariableop1savev2_adam_v_dense_14_kernel_read_readvariableop/savev2_adam_m_dense_14_bias_read_readvariableop/savev2_adam_v_dense_14_bias_read_readvariableop1savev2_adam_m_dense_15_kernel_read_readvariableop1savev2_adam_v_dense_15_kernel_read_readvariableop/savev2_adam_m_dense_15_bias_read_readvariableop/savev2_adam_v_dense_15_bias_read_readvariableop1savev2_adam_m_dense_16_kernel_read_readvariableop1savev2_adam_v_dense_16_kernel_read_readvariableop/savev2_adam_m_dense_16_bias_read_readvariableop/savev2_adam_v_dense_16_bias_read_readvariableop1savev2_adam_m_dense_17_kernel_read_readvariableop1savev2_adam_v_dense_17_kernel_read_readvariableop/savev2_adam_m_dense_17_bias_read_readvariableop/savev2_adam_v_dense_17_bias_read_readvariableop1savev2_adam_m_dense_18_kernel_read_readvariableop1savev2_adam_v_dense_18_kernel_read_readvariableop/savev2_adam_m_dense_18_bias_read_readvariableop/savev2_adam_v_dense_18_bias_read_readvariableop1savev2_adam_m_dense_19_kernel_read_readvariableop1savev2_adam_v_dense_19_kernel_read_readvariableop/savev2_adam_m_dense_19_bias_read_readvariableop/savev2_adam_v_dense_19_bias_read_readvariableop1savev2_adam_m_dense_20_kernel_read_readvariableop1savev2_adam_v_dense_20_kernel_read_readvariableop/savev2_adam_m_dense_20_bias_read_readvariableop/savev2_adam_v_dense_20_bias_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *]
dtypesS
Q2O	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :
��:�:
��:�:	�@:@:@ : : :: : : @:@:	@�:�:
��:�:
��:�:	�
:
: : :
��:
��:�:�:
��:
��:�:�:	�@:	�@:@:@:@ :@ : : : : ::: : : : : @: @:@:@:	@�:	@�:�:�:
��:
��:�:�:
��:
��:�:�:	�
:	�
:
:
: : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$	 

_output_shapes

: : 


_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:%!

_output_shapes
:	@�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
��:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:! 

_output_shapes	
:�:%!!

_output_shapes
:	�@:%"!

_output_shapes
:	�@: #

_output_shapes
:@: $

_output_shapes
:@:$% 

_output_shapes

:@ :$& 

_output_shapes

:@ : '

_output_shapes
: : (

_output_shapes
: :$) 

_output_shapes

: :$* 

_output_shapes

: : +

_output_shapes
:: ,

_output_shapes
::$- 

_output_shapes

: :$. 

_output_shapes

: : /

_output_shapes
: : 0

_output_shapes
: :$1 

_output_shapes

: @:$2 

_output_shapes

: @: 3

_output_shapes
:@: 4

_output_shapes
:@:%5!

_output_shapes
:	@�:%6!

_output_shapes
:	@�:!7

_output_shapes	
:�:!8

_output_shapes	
:�:&9"
 
_output_shapes
:
��:&:"
 
_output_shapes
:
��:!;

_output_shapes	
:�:!<

_output_shapes	
:�:&="
 
_output_shapes
:
��:&>"
 
_output_shapes
:
��:!?

_output_shapes	
:�:!@

_output_shapes	
:�:%A!

_output_shapes
:	�
:%B!

_output_shapes
:	�
: C

_output_shapes
:
: D

_output_shapes
:
:E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: 
�

�
(__inference_encoder_layer_call_fn_103725

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_102245o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_12_layer_call_fn_104081

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_102060o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_0_104141N
:dense_10_kernel_regularizer_l2loss_readvariableop_resource:
��
identity��1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:dense_10_kernel_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_10/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp
�
�
%__inference_ssnp_layer_call_fn_103172	
input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: @

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�


unknown_20:

identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:���������:���������
*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_ssnp_layer_call_and_return_conditional_losses_103072s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameinput
�$
�
C__inference_decoder_layer_call_and_return_conditional_losses_102699
dense_15_input!
dense_15_102668: 
dense_15_102670: !
dense_16_102673: @
dense_16_102675:@"
dense_17_102678:	@�
dense_17_102680:	�#
dense_18_102683:
��
dense_18_102685:	�#
dense_19_102688:
��
dense_19_102690:	�
identity�� dense_15/StatefulPartitionedCall�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCalldense_15_inputdense_15_102668dense_15_102670*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_102383�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_102673dense_16_102675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_102400�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_102678dense_17_102680*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_102417�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0dense_18_102683dense_18_102685*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_102434�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_102688dense_19_102690*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_102451�
reshape_1/PartitionedCallPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_102470�
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_15_102668*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: u
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^dense_15/StatefulPartitionedCall2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namedense_15_input
�$
�
C__inference_encoder_layer_call_and_return_conditional_losses_102361
flatten_1_input#
dense_10_102331:
��
dense_10_102333:	�#
dense_11_102336:
��
dense_11_102338:	�"
dense_12_102341:	�@
dense_12_102343:@!
dense_13_102346:@ 
dense_13_102348: !
dense_14_102351: 
dense_14_102353:
identity�� dense_10/StatefulPartitionedCall�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp� dense_11/StatefulPartitionedCall� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall� dense_14/StatefulPartitionedCall�
flatten_1/PartitionedCallPartitionedCallflatten_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_102009�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_10_102331dense_10_102333*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_102026�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_102336dense_11_102338*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_102043�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0dense_12_102341dense_12_102343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_102060�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_102346dense_13_102348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_102077�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_102351dense_14_102353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_102094�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_10_102331* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_1_input
��
�/
"__inference__traced_restore_104805
file_prefix4
 assignvariableop_dense_10_kernel:
��/
 assignvariableop_1_dense_10_bias:	�6
"assignvariableop_2_dense_11_kernel:
��/
 assignvariableop_3_dense_11_bias:	�5
"assignvariableop_4_dense_12_kernel:	�@.
 assignvariableop_5_dense_12_bias:@4
"assignvariableop_6_dense_13_kernel:@ .
 assignvariableop_7_dense_13_bias: 4
"assignvariableop_8_dense_14_kernel: .
 assignvariableop_9_dense_14_bias:5
#assignvariableop_10_dense_15_kernel: /
!assignvariableop_11_dense_15_bias: 5
#assignvariableop_12_dense_16_kernel: @/
!assignvariableop_13_dense_16_bias:@6
#assignvariableop_14_dense_17_kernel:	@�0
!assignvariableop_15_dense_17_bias:	�7
#assignvariableop_16_dense_18_kernel:
��0
!assignvariableop_17_dense_18_bias:	�7
#assignvariableop_18_dense_19_kernel:
��0
!assignvariableop_19_dense_19_bias:	�6
#assignvariableop_20_dense_20_kernel:	�
/
!assignvariableop_21_dense_20_bias:
'
assignvariableop_22_iteration:	 +
!assignvariableop_23_learning_rate: >
*assignvariableop_24_adam_m_dense_10_kernel:
��>
*assignvariableop_25_adam_v_dense_10_kernel:
��7
(assignvariableop_26_adam_m_dense_10_bias:	�7
(assignvariableop_27_adam_v_dense_10_bias:	�>
*assignvariableop_28_adam_m_dense_11_kernel:
��>
*assignvariableop_29_adam_v_dense_11_kernel:
��7
(assignvariableop_30_adam_m_dense_11_bias:	�7
(assignvariableop_31_adam_v_dense_11_bias:	�=
*assignvariableop_32_adam_m_dense_12_kernel:	�@=
*assignvariableop_33_adam_v_dense_12_kernel:	�@6
(assignvariableop_34_adam_m_dense_12_bias:@6
(assignvariableop_35_adam_v_dense_12_bias:@<
*assignvariableop_36_adam_m_dense_13_kernel:@ <
*assignvariableop_37_adam_v_dense_13_kernel:@ 6
(assignvariableop_38_adam_m_dense_13_bias: 6
(assignvariableop_39_adam_v_dense_13_bias: <
*assignvariableop_40_adam_m_dense_14_kernel: <
*assignvariableop_41_adam_v_dense_14_kernel: 6
(assignvariableop_42_adam_m_dense_14_bias:6
(assignvariableop_43_adam_v_dense_14_bias:<
*assignvariableop_44_adam_m_dense_15_kernel: <
*assignvariableop_45_adam_v_dense_15_kernel: 6
(assignvariableop_46_adam_m_dense_15_bias: 6
(assignvariableop_47_adam_v_dense_15_bias: <
*assignvariableop_48_adam_m_dense_16_kernel: @<
*assignvariableop_49_adam_v_dense_16_kernel: @6
(assignvariableop_50_adam_m_dense_16_bias:@6
(assignvariableop_51_adam_v_dense_16_bias:@=
*assignvariableop_52_adam_m_dense_17_kernel:	@�=
*assignvariableop_53_adam_v_dense_17_kernel:	@�7
(assignvariableop_54_adam_m_dense_17_bias:	�7
(assignvariableop_55_adam_v_dense_17_bias:	�>
*assignvariableop_56_adam_m_dense_18_kernel:
��>
*assignvariableop_57_adam_v_dense_18_kernel:
��7
(assignvariableop_58_adam_m_dense_18_bias:	�7
(assignvariableop_59_adam_v_dense_18_bias:	�>
*assignvariableop_60_adam_m_dense_19_kernel:
��>
*assignvariableop_61_adam_v_dense_19_kernel:
��7
(assignvariableop_62_adam_m_dense_19_bias:	�7
(assignvariableop_63_adam_v_dense_19_bias:	�=
*assignvariableop_64_adam_m_dense_20_kernel:	�
=
*assignvariableop_65_adam_v_dense_20_kernel:	�
6
(assignvariableop_66_adam_m_dense_20_bias:
6
(assignvariableop_67_adam_v_dense_20_bias:
%
assignvariableop_68_total_4: %
assignvariableop_69_count_4: %
assignvariableop_70_total_3: %
assignvariableop_71_count_3: %
assignvariableop_72_total_2: %
assignvariableop_73_count_2: %
assignvariableop_74_total_1: %
assignvariableop_75_count_1: #
assignvariableop_76_total: #
assignvariableop_77_count: 
identity_79��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*�
value�B�OB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*�
value�B�OB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*]
dtypesS
Q2O	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_10_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_10_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_11_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_11_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_12_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_12_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_13_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_13_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_14_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_14_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_15_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_15_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_16_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_16_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_17_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_17_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_18_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_18_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_19_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_19_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_20_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp!assignvariableop_21_dense_20_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_iterationIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp!assignvariableop_23_learning_rateIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_dense_10_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_dense_10_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_m_dense_10_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_v_dense_10_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_dense_11_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_dense_11_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_dense_11_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_dense_11_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_m_dense_12_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_v_dense_12_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_m_dense_12_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_v_dense_12_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_m_dense_13_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_v_dense_13_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_m_dense_13_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_v_dense_13_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_m_dense_14_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_v_dense_14_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_m_dense_14_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_v_dense_14_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_m_dense_15_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_v_dense_15_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_m_dense_15_biasIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_v_dense_15_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_m_dense_16_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_v_dense_16_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_m_dense_16_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_v_dense_16_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_m_dense_17_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_v_dense_17_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_m_dense_17_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_v_dense_17_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_m_dense_18_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_v_dense_18_kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_m_dense_18_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_v_dense_18_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_m_dense_19_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_v_dense_19_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_m_dense_19_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp(assignvariableop_63_adam_v_dense_19_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_m_dense_20_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_v_dense_20_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_m_dense_20_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp(assignvariableop_67_adam_v_dense_20_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpassignvariableop_68_total_4Identity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOpassignvariableop_69_count_4Identity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpassignvariableop_70_total_3Identity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpassignvariableop_71_count_3Identity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOpassignvariableop_72_total_2Identity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOpassignvariableop_73_count_2Identity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOpassignvariableop_74_total_1Identity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOpassignvariableop_75_count_1Identity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOpassignvariableop_76_totalIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpassignvariableop_77_countIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_78Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_79IdentityIdentity_78:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_79Identity_79:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_102009

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_20_layer_call_and_return_conditional_losses_102759

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
ƈ
�
!__inference__wrapped_model_101996	
inputH
4ssnp_encoder_dense_10_matmul_readvariableop_resource:
��D
5ssnp_encoder_dense_10_biasadd_readvariableop_resource:	�H
4ssnp_encoder_dense_11_matmul_readvariableop_resource:
��D
5ssnp_encoder_dense_11_biasadd_readvariableop_resource:	�G
4ssnp_encoder_dense_12_matmul_readvariableop_resource:	�@C
5ssnp_encoder_dense_12_biasadd_readvariableop_resource:@F
4ssnp_encoder_dense_13_matmul_readvariableop_resource:@ C
5ssnp_encoder_dense_13_biasadd_readvariableop_resource: F
4ssnp_encoder_dense_14_matmul_readvariableop_resource: C
5ssnp_encoder_dense_14_biasadd_readvariableop_resource:F
4ssnp_decoder_dense_15_matmul_readvariableop_resource: C
5ssnp_decoder_dense_15_biasadd_readvariableop_resource: F
4ssnp_decoder_dense_16_matmul_readvariableop_resource: @C
5ssnp_decoder_dense_16_biasadd_readvariableop_resource:@G
4ssnp_decoder_dense_17_matmul_readvariableop_resource:	@�D
5ssnp_decoder_dense_17_biasadd_readvariableop_resource:	�H
4ssnp_decoder_dense_18_matmul_readvariableop_resource:
��D
5ssnp_decoder_dense_18_biasadd_readvariableop_resource:	�H
4ssnp_decoder_dense_19_matmul_readvariableop_resource:
��D
5ssnp_decoder_dense_19_biasadd_readvariableop_resource:	�J
7ssnp_classifier_dense_20_matmul_readvariableop_resource:	�
F
8ssnp_classifier_dense_20_biasadd_readvariableop_resource:

identity

identity_1��/ssnp/classifier/dense_20/BiasAdd/ReadVariableOp�.ssnp/classifier/dense_20/MatMul/ReadVariableOp�,ssnp/decoder/dense_15/BiasAdd/ReadVariableOp�+ssnp/decoder/dense_15/MatMul/ReadVariableOp�,ssnp/decoder/dense_16/BiasAdd/ReadVariableOp�+ssnp/decoder/dense_16/MatMul/ReadVariableOp�,ssnp/decoder/dense_17/BiasAdd/ReadVariableOp�+ssnp/decoder/dense_17/MatMul/ReadVariableOp�,ssnp/decoder/dense_18/BiasAdd/ReadVariableOp�+ssnp/decoder/dense_18/MatMul/ReadVariableOp�,ssnp/decoder/dense_19/BiasAdd/ReadVariableOp�+ssnp/decoder/dense_19/MatMul/ReadVariableOp�,ssnp/encoder/dense_10/BiasAdd/ReadVariableOp�+ssnp/encoder/dense_10/MatMul/ReadVariableOp�,ssnp/encoder/dense_11/BiasAdd/ReadVariableOp�+ssnp/encoder/dense_11/MatMul/ReadVariableOp�,ssnp/encoder/dense_12/BiasAdd/ReadVariableOp�+ssnp/encoder/dense_12/MatMul/ReadVariableOp�,ssnp/encoder/dense_13/BiasAdd/ReadVariableOp�+ssnp/encoder/dense_13/MatMul/ReadVariableOp�,ssnp/encoder/dense_14/BiasAdd/ReadVariableOp�+ssnp/encoder/dense_14/MatMul/ReadVariableOpm
ssnp/encoder/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
ssnp/encoder/flatten_1/ReshapeReshapeinput%ssnp/encoder/flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
+ssnp/encoder/dense_10/MatMul/ReadVariableOpReadVariableOp4ssnp_encoder_dense_10_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
ssnp/encoder/dense_10/MatMulMatMul'ssnp/encoder/flatten_1/Reshape:output:03ssnp/encoder/dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,ssnp/encoder/dense_10/BiasAdd/ReadVariableOpReadVariableOp5ssnp_encoder_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ssnp/encoder/dense_10/BiasAddBiasAdd&ssnp/encoder/dense_10/MatMul:product:04ssnp/encoder/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
ssnp/encoder/dense_10/ReluRelu&ssnp/encoder/dense_10/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
+ssnp/encoder/dense_11/MatMul/ReadVariableOpReadVariableOp4ssnp_encoder_dense_11_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
ssnp/encoder/dense_11/MatMulMatMul(ssnp/encoder/dense_10/Relu:activations:03ssnp/encoder/dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,ssnp/encoder/dense_11/BiasAdd/ReadVariableOpReadVariableOp5ssnp_encoder_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ssnp/encoder/dense_11/BiasAddBiasAdd&ssnp/encoder/dense_11/MatMul:product:04ssnp/encoder/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
ssnp/encoder/dense_11/ReluRelu&ssnp/encoder/dense_11/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
+ssnp/encoder/dense_12/MatMul/ReadVariableOpReadVariableOp4ssnp_encoder_dense_12_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
ssnp/encoder/dense_12/MatMulMatMul(ssnp/encoder/dense_11/Relu:activations:03ssnp/encoder/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
,ssnp/encoder/dense_12/BiasAdd/ReadVariableOpReadVariableOp5ssnp_encoder_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
ssnp/encoder/dense_12/BiasAddBiasAdd&ssnp/encoder/dense_12/MatMul:product:04ssnp/encoder/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@|
ssnp/encoder/dense_12/ReluRelu&ssnp/encoder/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
+ssnp/encoder/dense_13/MatMul/ReadVariableOpReadVariableOp4ssnp_encoder_dense_13_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
ssnp/encoder/dense_13/MatMulMatMul(ssnp/encoder/dense_12/Relu:activations:03ssnp/encoder/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
,ssnp/encoder/dense_13/BiasAdd/ReadVariableOpReadVariableOp5ssnp_encoder_dense_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
ssnp/encoder/dense_13/BiasAddBiasAdd&ssnp/encoder/dense_13/MatMul:product:04ssnp/encoder/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� |
ssnp/encoder/dense_13/ReluRelu&ssnp/encoder/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
+ssnp/encoder/dense_14/MatMul/ReadVariableOpReadVariableOp4ssnp_encoder_dense_14_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
ssnp/encoder/dense_14/MatMulMatMul(ssnp/encoder/dense_13/Relu:activations:03ssnp/encoder/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,ssnp/encoder/dense_14/BiasAdd/ReadVariableOpReadVariableOp5ssnp_encoder_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
ssnp/encoder/dense_14/BiasAddBiasAdd&ssnp/encoder/dense_14/MatMul:product:04ssnp/encoder/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
ssnp/encoder/dense_14/SigmoidSigmoid&ssnp/encoder/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:����������
+ssnp/decoder/dense_15/MatMul/ReadVariableOpReadVariableOp4ssnp_decoder_dense_15_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
ssnp/decoder/dense_15/MatMulMatMul!ssnp/encoder/dense_14/Sigmoid:y:03ssnp/decoder/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
,ssnp/decoder/dense_15/BiasAdd/ReadVariableOpReadVariableOp5ssnp_decoder_dense_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
ssnp/decoder/dense_15/BiasAddBiasAdd&ssnp/decoder/dense_15/MatMul:product:04ssnp/decoder/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� |
ssnp/decoder/dense_15/ReluRelu&ssnp/decoder/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
+ssnp/decoder/dense_16/MatMul/ReadVariableOpReadVariableOp4ssnp_decoder_dense_16_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0�
ssnp/decoder/dense_16/MatMulMatMul(ssnp/decoder/dense_15/Relu:activations:03ssnp/decoder/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
,ssnp/decoder/dense_16/BiasAdd/ReadVariableOpReadVariableOp5ssnp_decoder_dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
ssnp/decoder/dense_16/BiasAddBiasAdd&ssnp/decoder/dense_16/MatMul:product:04ssnp/decoder/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@|
ssnp/decoder/dense_16/ReluRelu&ssnp/decoder/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
+ssnp/decoder/dense_17/MatMul/ReadVariableOpReadVariableOp4ssnp_decoder_dense_17_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
ssnp/decoder/dense_17/MatMulMatMul(ssnp/decoder/dense_16/Relu:activations:03ssnp/decoder/dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,ssnp/decoder/dense_17/BiasAdd/ReadVariableOpReadVariableOp5ssnp_decoder_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ssnp/decoder/dense_17/BiasAddBiasAdd&ssnp/decoder/dense_17/MatMul:product:04ssnp/decoder/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
ssnp/decoder/dense_17/ReluRelu&ssnp/decoder/dense_17/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
+ssnp/decoder/dense_18/MatMul/ReadVariableOpReadVariableOp4ssnp_decoder_dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
ssnp/decoder/dense_18/MatMulMatMul(ssnp/decoder/dense_17/Relu:activations:03ssnp/decoder/dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,ssnp/decoder/dense_18/BiasAdd/ReadVariableOpReadVariableOp5ssnp_decoder_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ssnp/decoder/dense_18/BiasAddBiasAdd&ssnp/decoder/dense_18/MatMul:product:04ssnp/decoder/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
ssnp/decoder/dense_18/ReluRelu&ssnp/decoder/dense_18/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
+ssnp/decoder/dense_19/MatMul/ReadVariableOpReadVariableOp4ssnp_decoder_dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
ssnp/decoder/dense_19/MatMulMatMul(ssnp/decoder/dense_18/Relu:activations:03ssnp/decoder/dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,ssnp/decoder/dense_19/BiasAdd/ReadVariableOpReadVariableOp5ssnp_decoder_dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
ssnp/decoder/dense_19/BiasAddBiasAdd&ssnp/decoder/dense_19/MatMul:product:04ssnp/decoder/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
ssnp/decoder/dense_19/SigmoidSigmoid&ssnp/decoder/dense_19/BiasAdd:output:0*
T0*(
_output_shapes
:����������m
ssnp/decoder/reshape_1/ShapeShape!ssnp/decoder/dense_19/Sigmoid:y:0*
T0*
_output_shapes
:t
*ssnp/decoder/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,ssnp/decoder/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,ssnp/decoder/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$ssnp/decoder/reshape_1/strided_sliceStridedSlice%ssnp/decoder/reshape_1/Shape:output:03ssnp/decoder/reshape_1/strided_slice/stack:output:05ssnp/decoder/reshape_1/strided_slice/stack_1:output:05ssnp/decoder/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&ssnp/decoder/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&ssnp/decoder/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
$ssnp/decoder/reshape_1/Reshape/shapePack-ssnp/decoder/reshape_1/strided_slice:output:0/ssnp/decoder/reshape_1/Reshape/shape/1:output:0/ssnp/decoder/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
ssnp/decoder/reshape_1/ReshapeReshape!ssnp/decoder/dense_19/Sigmoid:y:0-ssnp/decoder/reshape_1/Reshape/shape:output:0*
T0*+
_output_shapes
:���������p
ssnp/classifier/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
!ssnp/classifier/flatten_2/ReshapeReshape'ssnp/decoder/reshape_1/Reshape:output:0(ssnp/classifier/flatten_2/Const:output:0*
T0*(
_output_shapes
:�����������
.ssnp/classifier/dense_20/MatMul/ReadVariableOpReadVariableOp7ssnp_classifier_dense_20_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
ssnp/classifier/dense_20/MatMulMatMul*ssnp/classifier/flatten_2/Reshape:output:06ssnp/classifier/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
/ssnp/classifier/dense_20/BiasAdd/ReadVariableOpReadVariableOp8ssnp_classifier_dense_20_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
 ssnp/classifier/dense_20/BiasAddBiasAdd)ssnp/classifier/dense_20/MatMul:product:07ssnp/classifier/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
 ssnp/classifier/dense_20/SoftmaxSoftmax)ssnp/classifier/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������
y
IdentityIdentity*ssnp/classifier/dense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
|

Identity_1Identity'ssnp/decoder/reshape_1/Reshape:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp0^ssnp/classifier/dense_20/BiasAdd/ReadVariableOp/^ssnp/classifier/dense_20/MatMul/ReadVariableOp-^ssnp/decoder/dense_15/BiasAdd/ReadVariableOp,^ssnp/decoder/dense_15/MatMul/ReadVariableOp-^ssnp/decoder/dense_16/BiasAdd/ReadVariableOp,^ssnp/decoder/dense_16/MatMul/ReadVariableOp-^ssnp/decoder/dense_17/BiasAdd/ReadVariableOp,^ssnp/decoder/dense_17/MatMul/ReadVariableOp-^ssnp/decoder/dense_18/BiasAdd/ReadVariableOp,^ssnp/decoder/dense_18/MatMul/ReadVariableOp-^ssnp/decoder/dense_19/BiasAdd/ReadVariableOp,^ssnp/decoder/dense_19/MatMul/ReadVariableOp-^ssnp/encoder/dense_10/BiasAdd/ReadVariableOp,^ssnp/encoder/dense_10/MatMul/ReadVariableOp-^ssnp/encoder/dense_11/BiasAdd/ReadVariableOp,^ssnp/encoder/dense_11/MatMul/ReadVariableOp-^ssnp/encoder/dense_12/BiasAdd/ReadVariableOp,^ssnp/encoder/dense_12/MatMul/ReadVariableOp-^ssnp/encoder/dense_13/BiasAdd/ReadVariableOp,^ssnp/encoder/dense_13/MatMul/ReadVariableOp-^ssnp/encoder/dense_14/BiasAdd/ReadVariableOp,^ssnp/encoder/dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2b
/ssnp/classifier/dense_20/BiasAdd/ReadVariableOp/ssnp/classifier/dense_20/BiasAdd/ReadVariableOp2`
.ssnp/classifier/dense_20/MatMul/ReadVariableOp.ssnp/classifier/dense_20/MatMul/ReadVariableOp2\
,ssnp/decoder/dense_15/BiasAdd/ReadVariableOp,ssnp/decoder/dense_15/BiasAdd/ReadVariableOp2Z
+ssnp/decoder/dense_15/MatMul/ReadVariableOp+ssnp/decoder/dense_15/MatMul/ReadVariableOp2\
,ssnp/decoder/dense_16/BiasAdd/ReadVariableOp,ssnp/decoder/dense_16/BiasAdd/ReadVariableOp2Z
+ssnp/decoder/dense_16/MatMul/ReadVariableOp+ssnp/decoder/dense_16/MatMul/ReadVariableOp2\
,ssnp/decoder/dense_17/BiasAdd/ReadVariableOp,ssnp/decoder/dense_17/BiasAdd/ReadVariableOp2Z
+ssnp/decoder/dense_17/MatMul/ReadVariableOp+ssnp/decoder/dense_17/MatMul/ReadVariableOp2\
,ssnp/decoder/dense_18/BiasAdd/ReadVariableOp,ssnp/decoder/dense_18/BiasAdd/ReadVariableOp2Z
+ssnp/decoder/dense_18/MatMul/ReadVariableOp+ssnp/decoder/dense_18/MatMul/ReadVariableOp2\
,ssnp/decoder/dense_19/BiasAdd/ReadVariableOp,ssnp/decoder/dense_19/BiasAdd/ReadVariableOp2Z
+ssnp/decoder/dense_19/MatMul/ReadVariableOp+ssnp/decoder/dense_19/MatMul/ReadVariableOp2\
,ssnp/encoder/dense_10/BiasAdd/ReadVariableOp,ssnp/encoder/dense_10/BiasAdd/ReadVariableOp2Z
+ssnp/encoder/dense_10/MatMul/ReadVariableOp+ssnp/encoder/dense_10/MatMul/ReadVariableOp2\
,ssnp/encoder/dense_11/BiasAdd/ReadVariableOp,ssnp/encoder/dense_11/BiasAdd/ReadVariableOp2Z
+ssnp/encoder/dense_11/MatMul/ReadVariableOp+ssnp/encoder/dense_11/MatMul/ReadVariableOp2\
,ssnp/encoder/dense_12/BiasAdd/ReadVariableOp,ssnp/encoder/dense_12/BiasAdd/ReadVariableOp2Z
+ssnp/encoder/dense_12/MatMul/ReadVariableOp+ssnp/encoder/dense_12/MatMul/ReadVariableOp2\
,ssnp/encoder/dense_13/BiasAdd/ReadVariableOp,ssnp/encoder/dense_13/BiasAdd/ReadVariableOp2Z
+ssnp/encoder/dense_13/MatMul/ReadVariableOp+ssnp/encoder/dense_13/MatMul/ReadVariableOp2\
,ssnp/encoder/dense_14/BiasAdd/ReadVariableOp,ssnp/encoder/dense_14/BiasAdd/ReadVariableOp2Z
+ssnp/encoder/dense_14/MatMul/ReadVariableOp+ssnp/encoder/dense_14/MatMul/ReadVariableOp:R N
+
_output_shapes
:���������

_user_specified_nameinput
�
�
$__inference_signature_wrapper_103355	
input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: @

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�


unknown_20:

identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:���������
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_101996o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
u

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameinput
�$
�
C__inference_encoder_layer_call_and_return_conditional_losses_102105

inputs#
dense_10_102027:
��
dense_10_102029:	�#
dense_11_102044:
��
dense_11_102046:	�"
dense_12_102061:	�@
dense_12_102063:@!
dense_13_102078:@ 
dense_13_102080: !
dense_14_102095: 
dense_14_102097:
identity�� dense_10/StatefulPartitionedCall�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp� dense_11/StatefulPartitionedCall� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall� dense_14/StatefulPartitionedCall�
flatten_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_102009�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_10_102027dense_10_102029*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_102026�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_102044dense_11_102046*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_102043�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0dense_12_102061dense_12_102063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_102060�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_102078dense_13_102080*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_102077�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_102095dense_14_102097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_102094�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_10_102027* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
%__inference_ssnp_layer_call_fn_102959	
input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: @

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�


unknown_20:

identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:���������:���������
*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_ssnp_layer_call_and_return_conditional_losses_102910s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameinput
�
�
F__inference_classifier_layer_call_and_return_conditional_losses_104004

inputs:
'dense_20_matmul_readvariableop_resource:	�
6
(dense_20_biasadd_readvariableop_resource:

identity��dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOp`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  q
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*(
_output_shapes
:�����������
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_20/MatMulMatMulflatten_2/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
h
dense_20/SoftmaxSoftmaxdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������
i
IdentityIdentitydense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�<
�
C__inference_decoder_layer_call_and_return_conditional_losses_103973

inputs9
'dense_15_matmul_readvariableop_resource: 6
(dense_15_biasadd_readvariableop_resource: 9
'dense_16_matmul_readvariableop_resource: @6
(dense_16_biasadd_readvariableop_resource:@:
'dense_17_matmul_readvariableop_resource:	@�7
(dense_17_biasadd_readvariableop_resource:	�;
'dense_18_matmul_readvariableop_resource:
��7
(dense_18_biasadd_readvariableop_resource:	�;
'dense_19_matmul_readvariableop_resource:
��7
(dense_19_biasadd_readvariableop_resource:	�
identity��dense_15/BiasAdd/ReadVariableOp�dense_15/MatMul/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp�dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�dense_18/BiasAdd/ReadVariableOp�dense_18/MatMul/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

: *
dtype0{
dense_15/MatMulMatMulinputs&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0�
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_18/MatMulMatMuldense_17/Relu:activations:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_19/MatMulMatMuldense_18/Relu:activations:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
dense_19/SigmoidSigmoiddense_19/BiasAdd:output:0*
T0*(
_output_shapes
:����������S
reshape_1/ShapeShapedense_19/Sigmoid:y:0*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_1/ReshapeReshapedense_19/Sigmoid:y:0 reshape_1/Reshape/shape:output:0*
T0*+
_output_shapes
:����������
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityreshape_1/Reshape:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
(__inference_decoder_layer_call_fn_103844

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_102477s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
C__inference_encoder_layer_call_and_return_conditional_losses_102245

inputs#
dense_10_102215:
��
dense_10_102217:	�#
dense_11_102220:
��
dense_11_102222:	�"
dense_12_102225:	�@
dense_12_102227:@!
dense_13_102230:@ 
dense_13_102232: !
dense_14_102235: 
dense_14_102237:
identity�� dense_10/StatefulPartitionedCall�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp� dense_11/StatefulPartitionedCall� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall� dense_14/StatefulPartitionedCall�
flatten_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_102009�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_10_102215dense_10_102217*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_102026�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_102220dense_11_102222*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_102043�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0dense_12_102225dense_12_102227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_102060�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_102230dense_13_102232*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_102077�
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_102235dense_14_102237*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_102094�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_10_102215* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_14_layer_call_fn_104121

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_102094o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
)__inference_dense_19_layer_call_fn_104234

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_102451p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_11_layer_call_and_return_conditional_losses_102043

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�4
�
C__inference_encoder_layer_call_and_return_conditional_losses_103815

inputs;
'dense_10_matmul_readvariableop_resource:
��7
(dense_10_biasadd_readvariableop_resource:	�;
'dense_11_matmul_readvariableop_resource:
��7
(dense_11_biasadd_readvariableop_resource:	�:
'dense_12_matmul_readvariableop_resource:	�@6
(dense_12_biasadd_readvariableop_resource:@9
'dense_13_matmul_readvariableop_resource:@ 6
(dense_13_biasadd_readvariableop_resource: 9
'dense_14_matmul_readvariableop_resource: 6
(dense_14_biasadd_readvariableop_resource:
identity��dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp�dense_11/BiasAdd/ReadVariableOp�dense_11/MatMul/ReadVariableOp�dense_12/BiasAdd/ReadVariableOp�dense_12/MatMul/ReadVariableOp�dense_13/BiasAdd/ReadVariableOp�dense_13/MatMul/ReadVariableOp�dense_14/BiasAdd/ReadVariableOp�dense_14/MatMul/ReadVariableOp`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  q
flatten_1/ReshapeReshapeinputsflatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_10/MatMulMatMulflatten_1/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_12/MatMulMatMuldense_11/Relu:activations:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_14/SigmoidSigmoiddense_14/BiasAdd:output:0*
T0*'
_output_shapes
:����������
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: c
IdentityIdentitydense_14/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_14_layer_call_and_return_conditional_losses_104132

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
)__inference_dense_18_layer_call_fn_104214

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_102434p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_13_layer_call_fn_104101

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_102077o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
(__inference_decoder_layer_call_fn_102665
dense_15_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_102617s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namedense_15_input
�
�
D__inference_dense_10_layer_call_and_return_conditional_losses_102026

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:�����������
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_dense_15_layer_call_and_return_conditional_losses_102383

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� �
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_15_layer_call_fn_104150

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_102383o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_12_layer_call_and_return_conditional_losses_102060

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_flatten_1_layer_call_fn_104022

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_102009a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
@__inference_ssnp_layer_call_and_return_conditional_losses_103671

inputsC
/encoder_dense_10_matmul_readvariableop_resource:
��?
0encoder_dense_10_biasadd_readvariableop_resource:	�C
/encoder_dense_11_matmul_readvariableop_resource:
��?
0encoder_dense_11_biasadd_readvariableop_resource:	�B
/encoder_dense_12_matmul_readvariableop_resource:	�@>
0encoder_dense_12_biasadd_readvariableop_resource:@A
/encoder_dense_13_matmul_readvariableop_resource:@ >
0encoder_dense_13_biasadd_readvariableop_resource: A
/encoder_dense_14_matmul_readvariableop_resource: >
0encoder_dense_14_biasadd_readvariableop_resource:A
/decoder_dense_15_matmul_readvariableop_resource: >
0decoder_dense_15_biasadd_readvariableop_resource: A
/decoder_dense_16_matmul_readvariableop_resource: @>
0decoder_dense_16_biasadd_readvariableop_resource:@B
/decoder_dense_17_matmul_readvariableop_resource:	@�?
0decoder_dense_17_biasadd_readvariableop_resource:	�C
/decoder_dense_18_matmul_readvariableop_resource:
��?
0decoder_dense_18_biasadd_readvariableop_resource:	�C
/decoder_dense_19_matmul_readvariableop_resource:
��?
0decoder_dense_19_biasadd_readvariableop_resource:	�E
2classifier_dense_20_matmul_readvariableop_resource:	�
A
3classifier_dense_20_biasadd_readvariableop_resource:

identity

identity_1��*classifier/dense_20/BiasAdd/ReadVariableOp�)classifier/dense_20/MatMul/ReadVariableOp�'decoder/dense_15/BiasAdd/ReadVariableOp�&decoder/dense_15/MatMul/ReadVariableOp�'decoder/dense_16/BiasAdd/ReadVariableOp�&decoder/dense_16/MatMul/ReadVariableOp�'decoder/dense_17/BiasAdd/ReadVariableOp�&decoder/dense_17/MatMul/ReadVariableOp�'decoder/dense_18/BiasAdd/ReadVariableOp�&decoder/dense_18/MatMul/ReadVariableOp�'decoder/dense_19/BiasAdd/ReadVariableOp�&decoder/dense_19/MatMul/ReadVariableOp�1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp�1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp�'encoder/dense_10/BiasAdd/ReadVariableOp�&encoder/dense_10/MatMul/ReadVariableOp�'encoder/dense_11/BiasAdd/ReadVariableOp�&encoder/dense_11/MatMul/ReadVariableOp�'encoder/dense_12/BiasAdd/ReadVariableOp�&encoder/dense_12/MatMul/ReadVariableOp�'encoder/dense_13/BiasAdd/ReadVariableOp�&encoder/dense_13/MatMul/ReadVariableOp�'encoder/dense_14/BiasAdd/ReadVariableOp�&encoder/dense_14/MatMul/ReadVariableOph
encoder/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
encoder/flatten_1/ReshapeReshapeinputs encoder/flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
&encoder/dense_10/MatMul/ReadVariableOpReadVariableOp/encoder_dense_10_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
encoder/dense_10/MatMulMatMul"encoder/flatten_1/Reshape:output:0.encoder/dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'encoder/dense_10/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense_10/BiasAddBiasAdd!encoder/dense_10/MatMul:product:0/encoder/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
encoder/dense_10/ReluRelu!encoder/dense_10/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&encoder/dense_11/MatMul/ReadVariableOpReadVariableOp/encoder_dense_11_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
encoder/dense_11/MatMulMatMul#encoder/dense_10/Relu:activations:0.encoder/dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'encoder/dense_11/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense_11/BiasAddBiasAdd!encoder/dense_11/MatMul:product:0/encoder/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
encoder/dense_11/ReluRelu!encoder/dense_11/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&encoder/dense_12/MatMul/ReadVariableOpReadVariableOp/encoder_dense_12_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
encoder/dense_12/MatMulMatMul#encoder/dense_11/Relu:activations:0.encoder/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'encoder/dense_12/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
encoder/dense_12/BiasAddBiasAdd!encoder/dense_12/MatMul:product:0/encoder/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
encoder/dense_12/ReluRelu!encoder/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&encoder/dense_13/MatMul/ReadVariableOpReadVariableOp/encoder_dense_13_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
encoder/dense_13/MatMulMatMul#encoder/dense_12/Relu:activations:0.encoder/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'encoder/dense_13/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
encoder/dense_13/BiasAddBiasAdd!encoder/dense_13/MatMul:product:0/encoder/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
encoder/dense_13/ReluRelu!encoder/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&encoder/dense_14/MatMul/ReadVariableOpReadVariableOp/encoder_dense_14_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
encoder/dense_14/MatMulMatMul#encoder/dense_13/Relu:activations:0.encoder/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'encoder/dense_14/BiasAdd/ReadVariableOpReadVariableOp0encoder_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder/dense_14/BiasAddBiasAdd!encoder/dense_14/MatMul:product:0/encoder/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
encoder/dense_14/SigmoidSigmoid!encoder/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:����������
&decoder/dense_15/MatMul/ReadVariableOpReadVariableOp/decoder_dense_15_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
decoder/dense_15/MatMulMatMulencoder/dense_14/Sigmoid:y:0.decoder/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'decoder/dense_15/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
decoder/dense_15/BiasAddBiasAdd!decoder/dense_15/MatMul:product:0/decoder/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
decoder/dense_15/ReluRelu!decoder/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&decoder/dense_16/MatMul/ReadVariableOpReadVariableOp/decoder_dense_16_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0�
decoder/dense_16/MatMulMatMul#decoder/dense_15/Relu:activations:0.decoder/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'decoder/dense_16/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
decoder/dense_16/BiasAddBiasAdd!decoder/dense_16/MatMul:product:0/decoder/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
decoder/dense_16/ReluRelu!decoder/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&decoder/dense_17/MatMul/ReadVariableOpReadVariableOp/decoder_dense_17_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
decoder/dense_17/MatMulMatMul#decoder/dense_16/Relu:activations:0.decoder/dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'decoder/dense_17/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/dense_17/BiasAddBiasAdd!decoder/dense_17/MatMul:product:0/decoder/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
decoder/dense_17/ReluRelu!decoder/dense_17/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&decoder/dense_18/MatMul/ReadVariableOpReadVariableOp/decoder_dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
decoder/dense_18/MatMulMatMul#decoder/dense_17/Relu:activations:0.decoder/dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'decoder/dense_18/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/dense_18/BiasAddBiasAdd!decoder/dense_18/MatMul:product:0/decoder/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
decoder/dense_18/ReluRelu!decoder/dense_18/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&decoder/dense_19/MatMul/ReadVariableOpReadVariableOp/decoder_dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
decoder/dense_19/MatMulMatMul#decoder/dense_18/Relu:activations:0.decoder/dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'decoder/dense_19/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder/dense_19/BiasAddBiasAdd!decoder/dense_19/MatMul:product:0/decoder/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
decoder/dense_19/SigmoidSigmoid!decoder/dense_19/BiasAdd:output:0*
T0*(
_output_shapes
:����������c
decoder/reshape_1/ShapeShapedecoder/dense_19/Sigmoid:y:0*
T0*
_output_shapes
:o
%decoder/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'decoder/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'decoder/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
decoder/reshape_1/strided_sliceStridedSlice decoder/reshape_1/Shape:output:0.decoder/reshape_1/strided_slice/stack:output:00decoder/reshape_1/strided_slice/stack_1:output:00decoder/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!decoder/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :c
!decoder/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
decoder/reshape_1/Reshape/shapePack(decoder/reshape_1/strided_slice:output:0*decoder/reshape_1/Reshape/shape/1:output:0*decoder/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
decoder/reshape_1/ReshapeReshapedecoder/dense_19/Sigmoid:y:0(decoder/reshape_1/Reshape/shape:output:0*
T0*+
_output_shapes
:���������k
classifier/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
classifier/flatten_2/ReshapeReshape"decoder/reshape_1/Reshape:output:0#classifier/flatten_2/Const:output:0*
T0*(
_output_shapes
:�����������
)classifier/dense_20/MatMul/ReadVariableOpReadVariableOp2classifier_dense_20_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
classifier/dense_20/MatMulMatMul%classifier/flatten_2/Reshape:output:01classifier/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
*classifier/dense_20/BiasAdd/ReadVariableOpReadVariableOp3classifier_dense_20_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
classifier/dense_20/BiasAddBiasAdd$classifier/dense_20/MatMul:product:02classifier/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
~
classifier/dense_20/SoftmaxSoftmax$classifier/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp/encoder_dense_10_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"dense_10/kernel/Regularizer/L2LossL2Loss9dense_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0+dense_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp/decoder_dense_15_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
"dense_15/kernel/Regularizer/L2LossL2Loss9dense_15/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_15/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��9�
dense_15/kernel/Regularizer/mulMul*dense_15/kernel/Regularizer/mul/x:output:0+dense_15/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: u
IdentityIdentity"decoder/reshape_1/Reshape:output:0^NoOp*
T0*+
_output_shapes
:���������v

Identity_1Identity%classifier/dense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp+^classifier/dense_20/BiasAdd/ReadVariableOp*^classifier/dense_20/MatMul/ReadVariableOp(^decoder/dense_15/BiasAdd/ReadVariableOp'^decoder/dense_15/MatMul/ReadVariableOp(^decoder/dense_16/BiasAdd/ReadVariableOp'^decoder/dense_16/MatMul/ReadVariableOp(^decoder/dense_17/BiasAdd/ReadVariableOp'^decoder/dense_17/MatMul/ReadVariableOp(^decoder/dense_18/BiasAdd/ReadVariableOp'^decoder/dense_18/MatMul/ReadVariableOp(^decoder/dense_19/BiasAdd/ReadVariableOp'^decoder/dense_19/MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2^dense_15/kernel/Regularizer/L2Loss/ReadVariableOp(^encoder/dense_10/BiasAdd/ReadVariableOp'^encoder/dense_10/MatMul/ReadVariableOp(^encoder/dense_11/BiasAdd/ReadVariableOp'^encoder/dense_11/MatMul/ReadVariableOp(^encoder/dense_12/BiasAdd/ReadVariableOp'^encoder/dense_12/MatMul/ReadVariableOp(^encoder/dense_13/BiasAdd/ReadVariableOp'^encoder/dense_13/MatMul/ReadVariableOp(^encoder/dense_14/BiasAdd/ReadVariableOp'^encoder/dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2X
*classifier/dense_20/BiasAdd/ReadVariableOp*classifier/dense_20/BiasAdd/ReadVariableOp2V
)classifier/dense_20/MatMul/ReadVariableOp)classifier/dense_20/MatMul/ReadVariableOp2R
'decoder/dense_15/BiasAdd/ReadVariableOp'decoder/dense_15/BiasAdd/ReadVariableOp2P
&decoder/dense_15/MatMul/ReadVariableOp&decoder/dense_15/MatMul/ReadVariableOp2R
'decoder/dense_16/BiasAdd/ReadVariableOp'decoder/dense_16/BiasAdd/ReadVariableOp2P
&decoder/dense_16/MatMul/ReadVariableOp&decoder/dense_16/MatMul/ReadVariableOp2R
'decoder/dense_17/BiasAdd/ReadVariableOp'decoder/dense_17/BiasAdd/ReadVariableOp2P
&decoder/dense_17/MatMul/ReadVariableOp&decoder/dense_17/MatMul/ReadVariableOp2R
'decoder/dense_18/BiasAdd/ReadVariableOp'decoder/dense_18/BiasAdd/ReadVariableOp2P
&decoder/dense_18/MatMul/ReadVariableOp&decoder/dense_18/MatMul/ReadVariableOp2R
'decoder/dense_19/BiasAdd/ReadVariableOp'decoder/dense_19/BiasAdd/ReadVariableOp2P
&decoder/dense_19/MatMul/ReadVariableOp&decoder/dense_19/MatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp1dense_10/kernel/Regularizer/L2Loss/ReadVariableOp2f
1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp1dense_15/kernel/Regularizer/L2Loss/ReadVariableOp2R
'encoder/dense_10/BiasAdd/ReadVariableOp'encoder/dense_10/BiasAdd/ReadVariableOp2P
&encoder/dense_10/MatMul/ReadVariableOp&encoder/dense_10/MatMul/ReadVariableOp2R
'encoder/dense_11/BiasAdd/ReadVariableOp'encoder/dense_11/BiasAdd/ReadVariableOp2P
&encoder/dense_11/MatMul/ReadVariableOp&encoder/dense_11/MatMul/ReadVariableOp2R
'encoder/dense_12/BiasAdd/ReadVariableOp'encoder/dense_12/BiasAdd/ReadVariableOp2P
&encoder/dense_12/MatMul/ReadVariableOp&encoder/dense_12/MatMul/ReadVariableOp2R
'encoder/dense_13/BiasAdd/ReadVariableOp'encoder/dense_13/BiasAdd/ReadVariableOp2P
&encoder/dense_13/MatMul/ReadVariableOp&encoder/dense_13/MatMul/ReadVariableOp2R
'encoder/dense_14/BiasAdd/ReadVariableOp'encoder/dense_14/BiasAdd/ReadVariableOp2P
&encoder/dense_14/MatMul/ReadVariableOp&encoder/dense_14/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input2
serving_default_input:0���������>

classifier0
StatefulPartitionedCall:0���������
?
decoder4
StatefulPartitionedCall:1���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
 layer-5
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
'layer-0
(layer_with_weights-0
(layer-1
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21"
trackable_list_wrapper
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_32�
%__inference_ssnp_layer_call_fn_102959
%__inference_ssnp_layer_call_fn_103414
%__inference_ssnp_layer_call_fn_103465
%__inference_ssnp_layer_call_fn_103172�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zJtrace_0zKtrace_1zLtrace_2zMtrace_3
�
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32�
@__inference_ssnp_layer_call_and_return_conditional_losses_103568
@__inference_ssnp_layer_call_and_return_conditional_losses_103671
@__inference_ssnp_layer_call_and_return_conditional_losses_103232
@__inference_ssnp_layer_call_and_return_conditional_losses_103292�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
�B�
!__inference__wrapped_model_101996input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
R
_variables
S_iterations
T_learning_rate
U_index_dict
V
_momentums
W_velocities
X_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
,
Yserving_default"
signature_map
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

/kernel
0bias"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

1kernel
2bias"
_tf_keras_layer
�
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

3kernel
4bias"
_tf_keras_layer
�
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

7kernel
8bias"
_tf_keras_layer
f
/0
01
12
23
34
45
56
67
78
89"
trackable_list_wrapper
f
/0
01
12
23
34
45
56
67
78
89"
trackable_list_wrapper
'
~0"
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
(__inference_encoder_layer_call_fn_102128
(__inference_encoder_layer_call_fn_103700
(__inference_encoder_layer_call_fn_103725
(__inference_encoder_layer_call_fn_102293�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
C__inference_encoder_layer_call_and_return_conditional_losses_103770
C__inference_encoder_layer_call_and_return_conditional_losses_103815
C__inference_encoder_layer_call_and_return_conditional_losses_102327
C__inference_encoder_layer_call_and_return_conditional_losses_102361�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

9kernel
:bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

;kernel
<bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

=kernel
>bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

?kernel
@bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
f
90
:1
;2
<3
=4
>5
?6
@7
A8
B9"
trackable_list_wrapper
f
90
:1
;2
<3
=4
>5
?6
@7
A8
B9"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
(__inference_decoder_layer_call_fn_102500
(__inference_decoder_layer_call_fn_103844
(__inference_decoder_layer_call_fn_103869
(__inference_decoder_layer_call_fn_102665�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
C__inference_decoder_layer_call_and_return_conditional_losses_103921
C__inference_decoder_layer_call_and_return_conditional_losses_103973
C__inference_decoder_layer_call_and_return_conditional_losses_102699
C__inference_decoder_layer_call_and_return_conditional_losses_102733�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ckernel
Dbias"
_tf_keras_layer
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
+__inference_classifier_layer_call_fn_102773
+__inference_classifier_layer_call_fn_103982
+__inference_classifier_layer_call_fn_103991
+__inference_classifier_layer_call_fn_102826�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
F__inference_classifier_layer_call_and_return_conditional_losses_104004
F__inference_classifier_layer_call_and_return_conditional_losses_104017
F__inference_classifier_layer_call_and_return_conditional_losses_102836
F__inference_classifier_layer_call_and_return_conditional_losses_102846�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
#:!
��2dense_10/kernel
:�2dense_10/bias
#:!
��2dense_11/kernel
:�2dense_11/bias
": 	�@2dense_12/kernel
:@2dense_12/bias
!:@ 2dense_13/kernel
: 2dense_13/bias
!: 2dense_14/kernel
:2dense_14/bias
!: 2dense_15/kernel
: 2dense_15/bias
!: @2dense_16/kernel
:@2dense_16/bias
": 	@�2dense_17/kernel
:�2dense_17/bias
#:!
��2dense_18/kernel
:�2dense_18/bias
#:!
��2dense_19/kernel
:�2dense_19/bias
": 	�
2dense_20/kernel
:
2dense_20/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_ssnp_layer_call_fn_102959input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_ssnp_layer_call_fn_103414inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_ssnp_layer_call_fn_103465inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_ssnp_layer_call_fn_103172input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_ssnp_layer_call_and_return_conditional_losses_103568inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_ssnp_layer_call_and_return_conditional_losses_103671inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_ssnp_layer_call_and_return_conditional_losses_103232input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_ssnp_layer_call_and_return_conditional_losses_103292input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
S0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_103355input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_1_layer_call_fn_104022�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_1_layer_call_and_return_conditional_losses_104028�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
'
~0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_10_layer_call_fn_104037�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_10_layer_call_and_return_conditional_losses_104052�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_11_layer_call_fn_104061�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_11_layer_call_and_return_conditional_losses_104072�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_12_layer_call_fn_104081�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_12_layer_call_and_return_conditional_losses_104092�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_13_layer_call_fn_104101�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_13_layer_call_and_return_conditional_losses_104112�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_14_layer_call_fn_104121�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_14_layer_call_and_return_conditional_losses_104132�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
__inference_loss_fn_0_104141�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_encoder_layer_call_fn_102128flatten_1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_encoder_layer_call_fn_103700inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_encoder_layer_call_fn_103725inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_encoder_layer_call_fn_102293flatten_1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_encoder_layer_call_and_return_conditional_losses_103770inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_encoder_layer_call_and_return_conditional_losses_103815inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_encoder_layer_call_and_return_conditional_losses_102327flatten_1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_encoder_layer_call_and_return_conditional_losses_102361flatten_1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_15_layer_call_fn_104150�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_15_layer_call_and_return_conditional_losses_104165�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_16_layer_call_fn_104174�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_16_layer_call_and_return_conditional_losses_104185�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_17_layer_call_fn_104194�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_17_layer_call_and_return_conditional_losses_104205�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_18_layer_call_fn_104214�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_18_layer_call_and_return_conditional_losses_104225�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_19_layer_call_fn_104234�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_19_layer_call_and_return_conditional_losses_104245�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_reshape_1_layer_call_fn_104250�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_reshape_1_layer_call_and_return_conditional_losses_104263�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
__inference_loss_fn_1_104272�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
J
0
1
2
3
4
 5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_decoder_layer_call_fn_102500dense_15_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_decoder_layer_call_fn_103844inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_decoder_layer_call_fn_103869inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_decoder_layer_call_fn_102665dense_15_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_decoder_layer_call_and_return_conditional_losses_103921inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_decoder_layer_call_and_return_conditional_losses_103973inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_decoder_layer_call_and_return_conditional_losses_102699dense_15_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_decoder_layer_call_and_return_conditional_losses_102733dense_15_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_2_layer_call_fn_104277�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_2_layer_call_and_return_conditional_losses_104283�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_20_layer_call_fn_104292�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_20_layer_call_and_return_conditional_losses_104303�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_classifier_layer_call_fn_102773flatten_2_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_classifier_layer_call_fn_103982inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_classifier_layer_call_fn_103991inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_classifier_layer_call_fn_102826flatten_2_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_classifier_layer_call_and_return_conditional_losses_104004inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_classifier_layer_call_and_return_conditional_losses_104017inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_classifier_layer_call_and_return_conditional_losses_102836flatten_2_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_classifier_layer_call_and_return_conditional_losses_102846flatten_2_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
(:&
��2Adam/m/dense_10/kernel
(:&
��2Adam/v/dense_10/kernel
!:�2Adam/m/dense_10/bias
!:�2Adam/v/dense_10/bias
(:&
��2Adam/m/dense_11/kernel
(:&
��2Adam/v/dense_11/kernel
!:�2Adam/m/dense_11/bias
!:�2Adam/v/dense_11/bias
':%	�@2Adam/m/dense_12/kernel
':%	�@2Adam/v/dense_12/kernel
 :@2Adam/m/dense_12/bias
 :@2Adam/v/dense_12/bias
&:$@ 2Adam/m/dense_13/kernel
&:$@ 2Adam/v/dense_13/kernel
 : 2Adam/m/dense_13/bias
 : 2Adam/v/dense_13/bias
&:$ 2Adam/m/dense_14/kernel
&:$ 2Adam/v/dense_14/kernel
 :2Adam/m/dense_14/bias
 :2Adam/v/dense_14/bias
&:$ 2Adam/m/dense_15/kernel
&:$ 2Adam/v/dense_15/kernel
 : 2Adam/m/dense_15/bias
 : 2Adam/v/dense_15/bias
&:$ @2Adam/m/dense_16/kernel
&:$ @2Adam/v/dense_16/kernel
 :@2Adam/m/dense_16/bias
 :@2Adam/v/dense_16/bias
':%	@�2Adam/m/dense_17/kernel
':%	@�2Adam/v/dense_17/kernel
!:�2Adam/m/dense_17/bias
!:�2Adam/v/dense_17/bias
(:&
��2Adam/m/dense_18/kernel
(:&
��2Adam/v/dense_18/kernel
!:�2Adam/m/dense_18/bias
!:�2Adam/v/dense_18/bias
(:&
��2Adam/m/dense_19/kernel
(:&
��2Adam/v/dense_19/kernel
!:�2Adam/m/dense_19/bias
!:�2Adam/v/dense_19/bias
':%	�
2Adam/m/dense_20/kernel
':%	�
2Adam/v/dense_20/kernel
 :
2Adam/m/dense_20/bias
 :
2Adam/v/dense_20/bias
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
�B�
*__inference_flatten_1_layer_call_fn_104022inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_flatten_1_layer_call_and_return_conditional_losses_104028inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
~0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_10_layer_call_fn_104037inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_10_layer_call_and_return_conditional_losses_104052inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_11_layer_call_fn_104061inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_11_layer_call_and_return_conditional_losses_104072inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_12_layer_call_fn_104081inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_12_layer_call_and_return_conditional_losses_104092inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_13_layer_call_fn_104101inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_13_layer_call_and_return_conditional_losses_104112inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_14_layer_call_fn_104121inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_14_layer_call_and_return_conditional_losses_104132inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_104141"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_15_layer_call_fn_104150inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_15_layer_call_and_return_conditional_losses_104165inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_16_layer_call_fn_104174inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_16_layer_call_and_return_conditional_losses_104185inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_17_layer_call_fn_104194inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_17_layer_call_and_return_conditional_losses_104205inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_18_layer_call_fn_104214inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_18_layer_call_and_return_conditional_losses_104225inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_19_layer_call_fn_104234inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_19_layer_call_and_return_conditional_losses_104245inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_reshape_1_layer_call_fn_104250inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_reshape_1_layer_call_and_return_conditional_losses_104263inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_1_104272"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
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
�B�
*__inference_flatten_2_layer_call_fn_104277inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_flatten_2_layer_call_and_return_conditional_losses_104283inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_20_layer_call_fn_104292inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_20_layer_call_and_return_conditional_losses_104303inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
!__inference__wrapped_model_101996�/0123456789:;<=>?@ABCD2�/
(�%
#� 
input���������
� "i�f
2

classifier$�!

classifier���������

0
decoder%�"
decoder����������
F__inference_classifier_layer_call_and_return_conditional_losses_102836xCDD�A
:�7
-�*
flatten_2_input���������
p 

 
� ",�)
"�
tensor_0���������

� �
F__inference_classifier_layer_call_and_return_conditional_losses_102846xCDD�A
:�7
-�*
flatten_2_input���������
p

 
� ",�)
"�
tensor_0���������

� �
F__inference_classifier_layer_call_and_return_conditional_losses_104004oCD;�8
1�.
$�!
inputs���������
p 

 
� ",�)
"�
tensor_0���������

� �
F__inference_classifier_layer_call_and_return_conditional_losses_104017oCD;�8
1�.
$�!
inputs���������
p

 
� ",�)
"�
tensor_0���������

� �
+__inference_classifier_layer_call_fn_102773mCDD�A
:�7
-�*
flatten_2_input���������
p 

 
� "!�
unknown���������
�
+__inference_classifier_layer_call_fn_102826mCDD�A
:�7
-�*
flatten_2_input���������
p

 
� "!�
unknown���������
�
+__inference_classifier_layer_call_fn_103982dCD;�8
1�.
$�!
inputs���������
p 

 
� "!�
unknown���������
�
+__inference_classifier_layer_call_fn_103991dCD;�8
1�.
$�!
inputs���������
p

 
� "!�
unknown���������
�
C__inference_decoder_layer_call_and_return_conditional_losses_102699
9:;<=>?@AB?�<
5�2
(�%
dense_15_input���������
p 

 
� "0�-
&�#
tensor_0���������
� �
C__inference_decoder_layer_call_and_return_conditional_losses_102733
9:;<=>?@AB?�<
5�2
(�%
dense_15_input���������
p

 
� "0�-
&�#
tensor_0���������
� �
C__inference_decoder_layer_call_and_return_conditional_losses_103921w
9:;<=>?@AB7�4
-�*
 �
inputs���������
p 

 
� "0�-
&�#
tensor_0���������
� �
C__inference_decoder_layer_call_and_return_conditional_losses_103973w
9:;<=>?@AB7�4
-�*
 �
inputs���������
p

 
� "0�-
&�#
tensor_0���������
� �
(__inference_decoder_layer_call_fn_102500t
9:;<=>?@AB?�<
5�2
(�%
dense_15_input���������
p 

 
� "%�"
unknown����������
(__inference_decoder_layer_call_fn_102665t
9:;<=>?@AB?�<
5�2
(�%
dense_15_input���������
p

 
� "%�"
unknown����������
(__inference_decoder_layer_call_fn_103844l
9:;<=>?@AB7�4
-�*
 �
inputs���������
p 

 
� "%�"
unknown����������
(__inference_decoder_layer_call_fn_103869l
9:;<=>?@AB7�4
-�*
 �
inputs���������
p

 
� "%�"
unknown����������
D__inference_dense_10_layer_call_and_return_conditional_losses_104052e/00�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_10_layer_call_fn_104037Z/00�-
&�#
!�
inputs����������
� ""�
unknown�����������
D__inference_dense_11_layer_call_and_return_conditional_losses_104072e120�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_11_layer_call_fn_104061Z120�-
&�#
!�
inputs����������
� ""�
unknown�����������
D__inference_dense_12_layer_call_and_return_conditional_losses_104092d340�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������@
� �
)__inference_dense_12_layer_call_fn_104081Y340�-
&�#
!�
inputs����������
� "!�
unknown���������@�
D__inference_dense_13_layer_call_and_return_conditional_losses_104112c56/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0��������� 
� �
)__inference_dense_13_layer_call_fn_104101X56/�,
%�"
 �
inputs���������@
� "!�
unknown��������� �
D__inference_dense_14_layer_call_and_return_conditional_losses_104132c78/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������
� �
)__inference_dense_14_layer_call_fn_104121X78/�,
%�"
 �
inputs��������� 
� "!�
unknown����������
D__inference_dense_15_layer_call_and_return_conditional_losses_104165c9:/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0��������� 
� �
)__inference_dense_15_layer_call_fn_104150X9:/�,
%�"
 �
inputs���������
� "!�
unknown��������� �
D__inference_dense_16_layer_call_and_return_conditional_losses_104185c;</�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������@
� �
)__inference_dense_16_layer_call_fn_104174X;</�,
%�"
 �
inputs��������� 
� "!�
unknown���������@�
D__inference_dense_17_layer_call_and_return_conditional_losses_104205d=>/�,
%�"
 �
inputs���������@
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_17_layer_call_fn_104194Y=>/�,
%�"
 �
inputs���������@
� ""�
unknown�����������
D__inference_dense_18_layer_call_and_return_conditional_losses_104225e?@0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_18_layer_call_fn_104214Z?@0�-
&�#
!�
inputs����������
� ""�
unknown�����������
D__inference_dense_19_layer_call_and_return_conditional_losses_104245eAB0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_19_layer_call_fn_104234ZAB0�-
&�#
!�
inputs����������
� ""�
unknown�����������
D__inference_dense_20_layer_call_and_return_conditional_losses_104303dCD0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������

� �
)__inference_dense_20_layer_call_fn_104292YCD0�-
&�#
!�
inputs����������
� "!�
unknown���������
�
C__inference_encoder_layer_call_and_return_conditional_losses_102327�
/012345678D�A
:�7
-�*
flatten_1_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
C__inference_encoder_layer_call_and_return_conditional_losses_102361�
/012345678D�A
:�7
-�*
flatten_1_input���������
p

 
� ",�)
"�
tensor_0���������
� �
C__inference_encoder_layer_call_and_return_conditional_losses_103770w
/012345678;�8
1�.
$�!
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
C__inference_encoder_layer_call_and_return_conditional_losses_103815w
/012345678;�8
1�.
$�!
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
(__inference_encoder_layer_call_fn_102128u
/012345678D�A
:�7
-�*
flatten_1_input���������
p 

 
� "!�
unknown����������
(__inference_encoder_layer_call_fn_102293u
/012345678D�A
:�7
-�*
flatten_1_input���������
p

 
� "!�
unknown����������
(__inference_encoder_layer_call_fn_103700l
/012345678;�8
1�.
$�!
inputs���������
p 

 
� "!�
unknown����������
(__inference_encoder_layer_call_fn_103725l
/012345678;�8
1�.
$�!
inputs���������
p

 
� "!�
unknown����������
E__inference_flatten_1_layer_call_and_return_conditional_losses_104028d3�0
)�&
$�!
inputs���������
� "-�*
#� 
tensor_0����������
� �
*__inference_flatten_1_layer_call_fn_104022Y3�0
)�&
$�!
inputs���������
� ""�
unknown�����������
E__inference_flatten_2_layer_call_and_return_conditional_losses_104283d3�0
)�&
$�!
inputs���������
� "-�*
#� 
tensor_0����������
� �
*__inference_flatten_2_layer_call_fn_104277Y3�0
)�&
$�!
inputs���������
� ""�
unknown����������D
__inference_loss_fn_0_104141$/�

� 
� "�
unknown D
__inference_loss_fn_1_104272$9�

� 
� "�
unknown �
E__inference_reshape_1_layer_call_and_return_conditional_losses_104263d0�-
&�#
!�
inputs����������
� "0�-
&�#
tensor_0���������
� �
*__inference_reshape_1_layer_call_fn_104250Y0�-
&�#
!�
inputs����������
� "%�"
unknown����������
$__inference_signature_wrapper_103355�/0123456789:;<=>?@ABCD;�8
� 
1�.
,
input#� 
input���������"i�f
2

classifier$�!

classifier���������

0
decoder%�"
decoder����������
@__inference_ssnp_layer_call_and_return_conditional_losses_103232�/0123456789:;<=>?@ABCD:�7
0�-
#� 
input���������
p 

 
� "]�Z
S�P
(�%

tensor_0_0���������
$�!

tensor_0_1���������

� �
@__inference_ssnp_layer_call_and_return_conditional_losses_103292�/0123456789:;<=>?@ABCD:�7
0�-
#� 
input���������
p

 
� "]�Z
S�P
(�%

tensor_0_0���������
$�!

tensor_0_1���������

� �
@__inference_ssnp_layer_call_and_return_conditional_losses_103568�/0123456789:;<=>?@ABCD;�8
1�.
$�!
inputs���������
p 

 
� "]�Z
S�P
(�%

tensor_0_0���������
$�!

tensor_0_1���������

� �
@__inference_ssnp_layer_call_and_return_conditional_losses_103671�/0123456789:;<=>?@ABCD;�8
1�.
$�!
inputs���������
p

 
� "]�Z
S�P
(�%

tensor_0_0���������
$�!

tensor_0_1���������

� �
%__inference_ssnp_layer_call_fn_102959�/0123456789:;<=>?@ABCD:�7
0�-
#� 
input���������
p 

 
� "O�L
&�#
tensor_0���������
"�
tensor_1���������
�
%__inference_ssnp_layer_call_fn_103172�/0123456789:;<=>?@ABCD:�7
0�-
#� 
input���������
p

 
� "O�L
&�#
tensor_0���������
"�
tensor_1���������
�
%__inference_ssnp_layer_call_fn_103414�/0123456789:;<=>?@ABCD;�8
1�.
$�!
inputs���������
p 

 
� "O�L
&�#
tensor_0���������
"�
tensor_1���������
�
%__inference_ssnp_layer_call_fn_103465�/0123456789:;<=>?@ABCD;�8
1�.
$�!
inputs���������
p

 
� "O�L
&�#
tensor_0���������
"�
tensor_1���������
