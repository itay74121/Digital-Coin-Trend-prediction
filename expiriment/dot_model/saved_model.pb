°
Ó
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
*
Erf
x"T
y"T"
Ttype:
2
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Į
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
executor_typestring Ø
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint’’’’’’’’’
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ł
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	d*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:d*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:dd*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:d*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:d
*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
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

lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	*
dtype0

lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!lstm/lstm_cell/recurrent_kernel

3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:*
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

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	d*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:dd*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:d
*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0

Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*-
shared_nameAdam/lstm/lstm_cell/kernel/m

0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	*
dtype0
Ŗ
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
£
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
*
dtype0

Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/m

.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	d*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:dd*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:d
*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0

Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*-
shared_nameAdam/lstm/lstm_cell/kernel/v

0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	*
dtype0
Ŗ
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
£
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
*
dtype0

Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/v

.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
ō<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Æ<
value„<B¢< B<
č
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Į
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
¦

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
ę
/iter

0beta_1

1beta_2
	2decay
3learning_ratemdmemf mg'mh(mi4mj5mk6mlvmvnvo vp'vq(vr4vs5vt6vu*
C
40
51
62
3
4
5
 6
'7
(8*
C
40
51
62
3
4
5
 6
'7
(8*
* 
°
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

<serving_default* 
ć
=
state_size

4kernel
5recurrent_kernel
6bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses*
* 

40
51
62*

40
51
62*
* 


Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 

Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 

Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

Z0*
* 
* 
* 
* 

40
51
62*

40
51
62*
* 

[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
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
8
	`total
	acount
b	variables
c	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

b	variables*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_inputPlaceholder*+
_output_shapes
:’’’’’’’’’0*
dtype0* 
shape:’’’’’’’’’0
ė
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference_signature_wrapper_6921
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
 
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*/
Tin(
&2$	*
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
GPU2*0J 8 *&
f!R
__inference__traced_save_7981
ó
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*.
Tin'
%2#*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_restore_8093Ćś
±
ņ
A__inference_dense_2_layer_call_and_return_conditional_losses_7730

inputs0
matmul_readvariableop_resource:d
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?q
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’
S
Gelu/ErfErfGelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’
O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?f
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’
_

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’
]
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
ó
±
#__inference_lstm_layer_call_fn_6965

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6262p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs


Ž
)__inference_sequential_layer_call_fn_6366

lstm_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d

	unknown_7:

identity¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_6322o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:’’’’’’’’’0
$
_user_specified_name
lstm_input
ė[
µ
sequential_lstm_while_body_5251<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0S
@sequential_lstm_while_lstm_cell_matmul_readvariableop_resource_0:	V
Bsequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:
P
Asequential_lstm_while_lstm_cell_biasadd_readvariableop_resource_0:	"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorQ
>sequential_lstm_while_lstm_cell_matmul_readvariableop_resource:	T
@sequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource:
N
?sequential_lstm_while_lstm_cell_biasadd_readvariableop_resource:	¢6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp¢5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp¢7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0·
5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@sequential_lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ä
&sequential/lstm/while/lstm_cell/MatMulMatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0=sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBsequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ė
(sequential/lstm/while/lstm_cell/MatMul_1MatMul#sequential_lstm_while_placeholder_2?sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Å
#sequential/lstm/while/lstm_cell/addAddV20sequential/lstm/while/lstm_cell/MatMul:product:02sequential/lstm/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’µ
6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAsequential_lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ī
'sequential/lstm/while/lstm_cell/BiasAddBiasAdd'sequential/lstm/while/lstm_cell/add:z:0>sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’q
/sequential/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%sequential/lstm/while/lstm_cell/splitSplit8sequential/lstm/while/lstm_cell/split/split_dim:output:00sequential/lstm/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
'sequential/lstm/while/lstm_cell/SigmoidSigmoid.sequential/lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
)sequential/lstm/while/lstm_cell/Sigmoid_1Sigmoid.sequential/lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’±
#sequential/lstm/while/lstm_cell/mulMul-sequential/lstm/while/lstm_cell/Sigmoid_1:y:0#sequential_lstm_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’o
*sequential/lstm/while/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ē
(sequential/lstm/while/lstm_cell/Gelu/mulMul3sequential/lstm/while/lstm_cell/Gelu/mul/x:output:0.sequential/lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’p
+sequential/lstm/while/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?Š
,sequential/lstm/while/lstm_cell/Gelu/truedivRealDiv.sequential/lstm/while/lstm_cell/split:output:24sequential/lstm/while/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(sequential/lstm/while/lstm_cell/Gelu/ErfErf0sequential/lstm/while/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’o
*sequential/lstm/while/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ē
(sequential/lstm/while/lstm_cell/Gelu/addAddV23sequential/lstm/while/lstm_cell/Gelu/add/x:output:0,sequential/lstm/while/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’Ą
*sequential/lstm/while/lstm_cell/Gelu/mul_1Mul,sequential/lstm/while/lstm_cell/Gelu/mul:z:0,sequential/lstm/while/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’¼
%sequential/lstm/while/lstm_cell/mul_1Mul+sequential/lstm/while/lstm_cell/Sigmoid:y:0.sequential/lstm/while/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’µ
%sequential/lstm/while/lstm_cell/add_1AddV2'sequential/lstm/while/lstm_cell/mul:z:0)sequential/lstm/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
)sequential/lstm/while/lstm_cell/Sigmoid_2Sigmoid.sequential/lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’q
,sequential/lstm/while/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ę
*sequential/lstm/while/lstm_cell/Gelu_1/mulMul5sequential/lstm/while/lstm_cell/Gelu_1/mul/x:output:0)sequential/lstm/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’r
-sequential/lstm/while/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?Ļ
.sequential/lstm/while/lstm_cell/Gelu_1/truedivRealDiv)sequential/lstm/while/lstm_cell/add_1:z:06sequential/lstm/while/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’
*sequential/lstm/while/lstm_cell/Gelu_1/ErfErf2sequential/lstm/while/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
,sequential/lstm/while/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ķ
*sequential/lstm/while/lstm_cell/Gelu_1/addAddV25sequential/lstm/while/lstm_cell/Gelu_1/add/x:output:0.sequential/lstm/while/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’Ę
,sequential/lstm/while/lstm_cell/Gelu_1/mul_1Mul.sequential/lstm/while/lstm_cell/Gelu_1/mul:z:0.sequential/lstm/while/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ą
%sequential/lstm/while/lstm_cell/mul_2Mul-sequential/lstm/while/lstm_cell/Sigmoid_2:y:00sequential/lstm/while/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder)sequential/lstm/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: _
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: Ŗ
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations^sequential/lstm/while/NoOp*
T0*
_output_shapes
: 
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: É
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: :éčŅ§
 sequential/lstm/while/Identity_4Identity)sequential/lstm/while/lstm_cell/mul_2:z:0^sequential/lstm/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’§
 sequential/lstm/while/Identity_5Identity)sequential/lstm/while/lstm_cell/add_1:z:0^sequential/lstm/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
sequential/lstm/while/NoOpNoOp7^sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp6^sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp8^sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"
?sequential_lstm_while_lstm_cell_biasadd_readvariableop_resourceAsequential_lstm_while_lstm_cell_biasadd_readvariableop_resource_0"
@sequential_lstm_while_lstm_cell_matmul_1_readvariableop_resourceBsequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"
>sequential_lstm_while_lstm_cell_matmul_readvariableop_resource@sequential_lstm_while_lstm_cell_matmul_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"č
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2p
6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp2n
5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp2r
7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
³$

C__inference_lstm_cell_layer_call_and_return_conditional_losses_5472

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?g
Gelu/mulMulGelu/mul/x:output:0split:output:2*
T0*(
_output_shapes
:’’’’’’’’’P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?p
Gelu/truedivRealDivsplit:output:2Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’T
Gelu/ErfErfGelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’`

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
mul_1MulSigmoid:y:0Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’Q
Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?f

Gelu_1/mulMulGelu_1/mul/x:output:0	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’R
Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?o
Gelu_1/truedivRealDiv	add_1:z:0Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’X

Gelu_1/ErfErfGelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Q
Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?m

Gelu_1/addAddV2Gelu_1/add/x:output:0Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’f
Gelu_1/mul_1MulGelu_1/mul:z:0Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’`
mul_2MulSigmoid_2:y:0Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates
ļ
ņ
(__inference_lstm_cell_layer_call_fn_7747

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5472p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
Æ
ņ
D__inference_sequential_layer_call_and_return_conditional_losses_6418

lstm_input
	lstm_6395:	
	lstm_6397:

	lstm_6399:	

dense_6402:	d

dense_6404:d
dense_1_6407:dd
dense_1_6409:d
dense_2_6412:d

dense_2_6414:

identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢lstm/StatefulPartitionedCallļ
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input	lstm_6395	lstm_6397	lstm_6399*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6262
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0
dense_6402
dense_6404*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5972
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6407dense_1_6409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_5996
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6412dense_2_6414*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6020w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
É
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:W S
+
_output_shapes
:’’’’’’’’’0
$
_user_specified_name
lstm_input
»	

lstm_while_cond_6755&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1<
8lstm_while_lstm_while_cond_6755___redundant_placeholder0<
8lstm_while_lstm_while_cond_6755___redundant_placeholder1<
8lstm_while_lstm_while_cond_6755___redundant_placeholder2<
8lstm_while_lstm_while_cond_6755___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
"
Ā
while_body_5486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_5510_0:	*
while_lstm_cell_5512_0:
%
while_lstm_cell_5514_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_5510:	(
while_lstm_cell_5512:
#
while_lstm_cell_5514:	¢'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0¢
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5510_0while_lstm_cell_5512_0while_lstm_cell_5514_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5472Ł
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éčŅ
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0".
while_lstm_cell_5510while_lstm_cell_5510_0".
while_lstm_cell_5512while_lstm_cell_5512_0".
while_lstm_cell_5514while_lstm_cell_5514_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
æ

&__inference_dense_2_layer_call_fn_7712

inputs
unknown:d

	unknown_0:

identity¢StatefulPartitionedCallŁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6020o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
æ

&__inference_dense_1_layer_call_fn_7685

inputs
unknown:dd
	unknown_0:d
identity¢StatefulPartitionedCallŁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_5996o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
Æ
ņ
D__inference_sequential_layer_call_and_return_conditional_losses_6392

lstm_input
	lstm_6369:	
	lstm_6371:

	lstm_6373:	

dense_6376:	d

dense_6378:d
dense_1_6381:dd
dense_1_6383:d
dense_2_6386:d

dense_2_6388:

identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢lstm/StatefulPartitionedCallļ
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input	lstm_6369	lstm_6371	lstm_6373*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_5946
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0
dense_6376
dense_6378*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5972
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6381dense_1_6383*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_5996
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6386dense_2_6388*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6020w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
É
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:W S
+
_output_shapes
:’’’’’’’’’0
$
_user_specified_name
lstm_input

³
#__inference_lstm_layer_call_fn_6943
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallę
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_5760p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
¼V

>__inference_lstm_layer_call_and_return_conditional_losses_7307
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while=
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ų
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu/mulMullstm_cell/Gelu/mul/x:output:0lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu/truedivRealDivlstm_cell/split:output:2lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell/Gelu/ErfErflstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu/addAddV2lstm_cell/Gelu/add/x:output:0lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/Gelu/mul_1Mullstm_cell/Gelu/mul:z:0lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu_1/mulMullstm_cell/Gelu_1/mul/x:output:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu_1/truedivRealDivlstm_cell/add_1:z:0 lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
lstm_cell/Gelu_1/ErfErflstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu_1/addAddV2lstm_cell/Gelu_1/add/x:output:0lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/Gelu_1/mul_1Mullstm_cell/Gelu_1/mul:z:0lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_7209*
condR
while_cond_7208*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ģ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Ś	
×
"__inference_signature_wrapper_6921

lstm_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d

	unknown_7:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__wrapped_model_5391o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:’’’’’’’’’0
$
_user_specified_name
lstm_input
½
½
D__inference_sequential_layer_call_and_return_conditional_losses_6896

inputs@
-lstm_lstm_cell_matmul_readvariableop_resource:	C
/lstm_lstm_cell_matmul_1_readvariableop_resource:
=
.lstm_lstm_cell_biasadd_readvariableop_resource:	7
$dense_matmul_readvariableop_resource:	d3
%dense_biasadd_readvariableop_resource:d8
&dense_1_matmul_readvariableop_resource:dd5
'dense_1_biasadd_readvariableop_resource:d8
&dense_2_matmul_readvariableop_resource:d
5
'dense_2_biasadd_readvariableop_resource:

identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢%lstm/lstm_cell/BiasAdd/ReadVariableOp¢$lstm/lstm_cell/MatMul/ReadVariableOp¢&lstm/lstm_cell/MatMul_1/ReadVariableOp¢
lstm/while@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ź
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:0’’’’’’’’’N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ō
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ć
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ļ
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ē
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splits
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’u
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Gelu/mulMul"lstm/lstm_cell/Gelu/mul/x:output:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’_
lstm/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm/lstm_cell/Gelu/truedivRealDivlstm/lstm_cell/split:output:2#lstm/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
lstm/lstm_cell/Gelu/ErfErflstm/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm/lstm_cell/Gelu/addAddV2"lstm/lstm_cell/Gelu/add/x:output:0lstm/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/Gelu/mul_1Mullstm/lstm_cell/Gelu/mul:z:0lstm/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’u
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’`
lstm/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Gelu_1/mulMul$lstm/lstm_cell/Gelu_1/mul/x:output:0lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’a
lstm/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm/lstm_cell/Gelu_1/truedivRealDivlstm/lstm_cell/add_1:z:0%lstm/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’v
lstm/lstm_cell/Gelu_1/ErfErf!lstm/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’`
lstm/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm/lstm_cell/Gelu_1/addAddV2$lstm/lstm_cell/Gelu_1/add/x:output:0lstm/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/Gelu_1/mul_1Mullstm/lstm_cell/Gelu_1/mul:z:0lstm/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ē
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : æ

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
lstm_while_body_6756* 
condR
lstm_while_cond_6755*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ņ
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0’’’’’’’’’*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¦
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’0`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’d~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dU
dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?z
dense/Gelu/mulMuldense/Gelu/mul/x:output:0dense/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’dV
dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
dense/Gelu/truedivRealDivdense/BiasAdd:output:0dense/Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’d_
dense/Gelu/ErfErfdense/Gelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’dU
dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
dense/Gelu/addAddV2dense/Gelu/add/x:output:0dense/Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’dq
dense/Gelu/mul_1Muldense/Gelu/mul:z:0dense/Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0
dense_1/MatMulMatMuldense/Gelu/mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’d
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dW
dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dense_1/Gelu/mulMuldense_1/Gelu/mul/x:output:0dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’dX
dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
dense_1/Gelu/truedivRealDivdense_1/BiasAdd:output:0dense_1/Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’dc
dense_1/Gelu/ErfErfdense_1/Gelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’dW
dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
dense_1/Gelu/addAddV2dense_1/Gelu/add/x:output:0dense_1/Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’dw
dense_1/Gelu/mul_1Muldense_1/Gelu/mul:z:0dense_1/Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype0
dense_2/MatMulMatMuldense_1/Gelu/mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’

dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
W
dense_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dense_2/Gelu/mulMuldense_2/Gelu/mul/x:output:0dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
X
dense_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
dense_2/Gelu/truedivRealDivdense_2/BiasAdd:output:0dense_2/Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’
c
dense_2/Gelu/ErfErfdense_2/Gelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’
W
dense_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
dense_2/Gelu/addAddV2dense_2/Gelu/add/x:output:0dense_2/Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’
w
dense_2/Gelu/mul_1Muldense_2/Gelu/mul:z:0dense_2/Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’
e
IdentityIdentitydense_2/Gelu/mul_1:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’

NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2

lstm/while
lstm/while:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
×7
ļ
>__inference_lstm_layer_call_and_return_conditional_losses_5760

inputs!
lstm_cell_5678:	"
lstm_cell_5680:

lstm_cell_5682:	
identity¢!lstm_cell/StatefulPartitionedCall¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskä
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5678lstm_cell_5680lstm_cell_5682*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5632n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5678lstm_cell_5680lstm_cell_5682*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5691*
condR
while_cond_5690*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ģ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ś 
ķ
__inference__wrapped_model_5391

lstm_inputK
8sequential_lstm_lstm_cell_matmul_readvariableop_resource:	N
:sequential_lstm_lstm_cell_matmul_1_readvariableop_resource:
H
9sequential_lstm_lstm_cell_biasadd_readvariableop_resource:	B
/sequential_dense_matmul_readvariableop_resource:	d>
0sequential_dense_biasadd_readvariableop_resource:dC
1sequential_dense_1_matmul_readvariableop_resource:dd@
2sequential_dense_1_biasadd_readvariableop_resource:dC
1sequential_dense_2_matmul_readvariableop_resource:d
@
2sequential_dense_2_biasadd_readvariableop_resource:

identity¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp¢)sequential/dense_2/BiasAdd/ReadVariableOp¢(sequential/dense_2/MatMul/ReadVariableOp¢0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp¢/sequential/lstm/lstm_cell/MatMul/ReadVariableOp¢1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp¢sequential/lstm/whileO
sequential/lstm/ShapeShape
lstm_input*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential/lstm/transpose	Transpose
lstm_input'sequential/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:0’’’’’’’’’d
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:o
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask©
/sequential/lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp8sequential_lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ą
 sequential/lstm/lstm_cell/MatMulMatMul(sequential/lstm/strided_slice_2:output:07sequential/lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’®
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:sequential_lstm_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ŗ
"sequential/lstm/lstm_cell/MatMul_1MatMulsequential/lstm/zeros:output:09sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’³
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/MatMul:product:0,sequential/lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’§
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9sequential_lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
!sequential/lstm/lstm_cell/BiasAddBiasAdd!sequential/lstm/lstm_cell/add:z:08sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’k
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:0*sequential/lstm/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
!sequential/lstm/lstm_cell/SigmoidSigmoid(sequential/lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
#sequential/lstm/lstm_cell/Sigmoid_1Sigmoid(sequential/lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¢
sequential/lstm/lstm_cell/mulMul'sequential/lstm/lstm_cell/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
$sequential/lstm/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?µ
"sequential/lstm/lstm_cell/Gelu/mulMul-sequential/lstm/lstm_cell/Gelu/mul/x:output:0(sequential/lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’j
%sequential/lstm/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?¾
&sequential/lstm/lstm_cell/Gelu/truedivRealDiv(sequential/lstm/lstm_cell/split:output:2.sequential/lstm/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"sequential/lstm/lstm_cell/Gelu/ErfErf*sequential/lstm/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’i
$sequential/lstm/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?µ
"sequential/lstm/lstm_cell/Gelu/addAddV2-sequential/lstm/lstm_cell/Gelu/add/x:output:0&sequential/lstm/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’®
$sequential/lstm/lstm_cell/Gelu/mul_1Mul&sequential/lstm/lstm_cell/Gelu/mul:z:0&sequential/lstm/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
sequential/lstm/lstm_cell/mul_1Mul%sequential/lstm/lstm_cell/Sigmoid:y:0(sequential/lstm/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’£
sequential/lstm/lstm_cell/add_1AddV2!sequential/lstm/lstm_cell/mul:z:0#sequential/lstm/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
#sequential/lstm/lstm_cell/Sigmoid_2Sigmoid(sequential/lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’k
&sequential/lstm/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?“
$sequential/lstm/lstm_cell/Gelu_1/mulMul/sequential/lstm/lstm_cell/Gelu_1/mul/x:output:0#sequential/lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’l
'sequential/lstm/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?½
(sequential/lstm/lstm_cell/Gelu_1/truedivRealDiv#sequential/lstm/lstm_cell/add_1:z:00sequential/lstm/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’
$sequential/lstm/lstm_cell/Gelu_1/ErfErf,sequential/lstm/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’k
&sequential/lstm/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?»
$sequential/lstm/lstm_cell/Gelu_1/addAddV2/sequential/lstm/lstm_cell/Gelu_1/add/x:output:0(sequential/lstm/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’“
&sequential/lstm/lstm_cell/Gelu_1/mul_1Mul(sequential/lstm/lstm_cell/Gelu_1/mul:z:0(sequential/lstm/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’®
sequential/lstm/lstm_cell/mul_2Mul'sequential/lstm/lstm_cell/Sigmoid_2:y:0*sequential/lstm/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   č
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ł
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:08sequential_lstm_lstm_cell_matmul_readvariableop_resource:sequential_lstm_lstm_cell_matmul_1_readvariableop_resource9sequential_lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *+
body#R!
sequential_lstm_while_body_5251*+
cond#R!
sequential_lstm_while_cond_5250*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ó
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0’’’’’’’’’*
element_dtype0x
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’0k
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0­
sequential/dense/MatMulMatMul(sequential/lstm/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’d
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’d`
sequential/dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
sequential/dense/Gelu/mulMul$sequential/dense/Gelu/mul/x:output:0!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’da
sequential/dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?¤
sequential/dense/Gelu/truedivRealDiv!sequential/dense/BiasAdd:output:0%sequential/dense/Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’du
sequential/dense/Gelu/ErfErf!sequential/dense/Gelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’d`
sequential/dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
sequential/dense/Gelu/addAddV2$sequential/dense/Gelu/add/x:output:0sequential/dense/Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’d
sequential/dense/Gelu/mul_1Mulsequential/dense/Gelu/mul:z:0sequential/dense/Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0Ø
sequential/dense_1/MatMulMatMulsequential/dense/Gelu/mul_1:z:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’d
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Æ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’db
sequential/dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?”
sequential/dense_1/Gelu/mulMul&sequential/dense_1/Gelu/mul/x:output:0#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’dc
sequential/dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?Ŗ
sequential/dense_1/Gelu/truedivRealDiv#sequential/dense_1/BiasAdd:output:0'sequential/dense_1/Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’dy
sequential/dense_1/Gelu/ErfErf#sequential/dense_1/Gelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’db
sequential/dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
sequential/dense_1/Gelu/addAddV2&sequential/dense_1/Gelu/add/x:output:0sequential/dense_1/Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’d
sequential/dense_1/Gelu/mul_1Mulsequential/dense_1/Gelu/mul:z:0sequential/dense_1/Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype0Ŗ
sequential/dense_2/MatMulMatMul!sequential/dense_1/Gelu/mul_1:z:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’

)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Æ
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
b
sequential/dense_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?”
sequential/dense_2/Gelu/mulMul&sequential/dense_2/Gelu/mul/x:output:0#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
c
sequential/dense_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?Ŗ
sequential/dense_2/Gelu/truedivRealDiv#sequential/dense_2/BiasAdd:output:0'sequential/dense_2/Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’
y
sequential/dense_2/Gelu/ErfErf#sequential/dense_2/Gelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’
b
sequential/dense_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
sequential/dense_2/Gelu/addAddV2&sequential/dense_2/Gelu/add/x:output:0sequential/dense_2/Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’

sequential/dense_2/Gelu/mul_1Mulsequential/dense_2/Gelu/mul:z:0sequential/dense_2/Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’
p
IdentityIdentity!sequential/dense_2/Gelu/mul_1:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
ų
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp1^sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0^sequential/lstm/lstm_cell/MatMul/ReadVariableOp2^sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp^sequential/lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2d
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp2b
/sequential/lstm/lstm_cell/MatMul/ReadVariableOp/sequential/lstm/lstm_cell/MatMul/ReadVariableOp2f
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while:W S
+
_output_shapes
:’’’’’’’’’0
$
_user_specified_name
lstm_input
Æ
¹
while_cond_7550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7550___redundant_placeholder02
.while_while_cond_7550___redundant_placeholder12
.while_while_cond_7550___redundant_placeholder22
.while_while_cond_7550___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
E
µ
while_body_6164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0“
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ź
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu/mulMul#while/lstm_cell/Gelu/mul/x:output:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
while/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ? 
while/lstm_cell/Gelu/truedivRealDivwhile/lstm_cell/split:output:2$while/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell/Gelu/ErfErf while/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu/addAddV2#while/lstm_cell/Gelu/add/x:output:0while/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu/mul_1Mulwhile/lstm_cell/Gelu/mul:z:0while/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu_1/mulMul%while/lstm_cell/Gelu_1/mul/x:output:0while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
while/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
while/lstm_cell/Gelu_1/truedivRealDivwhile/lstm_cell/add_1:z:0&while/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’x
while/lstm_cell/Gelu_1/ErfErf"while/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu_1/addAddV2%while/lstm_cell/Gelu_1/add/x:output:0while/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu_1/mul_1Mulwhile/lstm_cell/Gelu_1/mul:z:0while/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0 while/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éčŅw
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ē

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
±
ņ
A__inference_dense_1_layer_call_and_return_conditional_losses_7703

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dO

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’dP
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?q
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’dS
Gelu/ErfErfGelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’dO

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?f
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’d_

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d]
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
³
ń
?__inference_dense_layer_call_and_return_conditional_losses_5972

inputs1
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dO

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’dP
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?q
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’dS
Gelu/ErfErfGelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’dO

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?f
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’d_

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d]
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
³
ń
?__inference_dense_layer_call_and_return_conditional_losses_7676

inputs1
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dO

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’dP
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?q
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’dS
Gelu/ErfErfGelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’dO

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?f
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’d_

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d]
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
³$

C__inference_lstm_cell_layer_call_and_return_conditional_losses_5632

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?g
Gelu/mulMulGelu/mul/x:output:0split:output:2*
T0*(
_output_shapes
:’’’’’’’’’P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?p
Gelu/truedivRealDivsplit:output:2Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’T
Gelu/ErfErfGelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’`

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
mul_1MulSigmoid:y:0Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’Q
Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?f

Gelu_1/mulMulGelu_1/mul/x:output:0	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’R
Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?o
Gelu_1/truedivRealDiv	add_1:z:0Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’X

Gelu_1/ErfErfGelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Q
Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?m

Gelu_1/addAddV2Gelu_1/add/x:output:0Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’f
Gelu_1/mul_1MulGelu_1/mul:z:0Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’`
mul_2MulSigmoid_2:y:0Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates
ļ
ņ
(__inference_lstm_cell_layer_call_fn_7764

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5632p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
»$

C__inference_lstm_cell_layer_call_and_return_conditional_losses_7856

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?g
Gelu/mulMulGelu/mul/x:output:0split:output:2*
T0*(
_output_shapes
:’’’’’’’’’P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?p
Gelu/truedivRealDivsplit:output:2Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’T
Gelu/ErfErfGelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’`

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
mul_1MulSigmoid:y:0Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’Q
Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?f

Gelu_1/mulMulGelu_1/mul/x:output:0	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’R
Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?o
Gelu_1/truedivRealDiv	add_1:z:0Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’X

Gelu_1/ErfErfGelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Q
Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?m

Gelu_1/addAddV2Gelu_1/add/x:output:0Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’f
Gelu_1/mul_1MulGelu_1/mul:z:0Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’`
mul_2MulSigmoid_2:y:0Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
E
µ
while_body_7209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0“
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ź
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu/mulMul#while/lstm_cell/Gelu/mul/x:output:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
while/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ? 
while/lstm_cell/Gelu/truedivRealDivwhile/lstm_cell/split:output:2$while/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell/Gelu/ErfErf while/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu/addAddV2#while/lstm_cell/Gelu/add/x:output:0while/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu/mul_1Mulwhile/lstm_cell/Gelu/mul:z:0while/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu_1/mulMul%while/lstm_cell/Gelu_1/mul/x:output:0while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
while/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
while/lstm_cell/Gelu_1/truedivRealDivwhile/lstm_cell/add_1:z:0&while/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’x
while/lstm_cell/Gelu_1/ErfErf"while/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu_1/addAddV2%while/lstm_cell/Gelu_1/add/x:output:0while/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu_1/mul_1Mulwhile/lstm_cell/Gelu_1/mul:z:0while/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0 while/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éčŅw
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ē

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
E
µ
while_body_5848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0“
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ź
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu/mulMul#while/lstm_cell/Gelu/mul/x:output:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
while/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ? 
while/lstm_cell/Gelu/truedivRealDivwhile/lstm_cell/split:output:2$while/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell/Gelu/ErfErf while/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu/addAddV2#while/lstm_cell/Gelu/add/x:output:0while/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu/mul_1Mulwhile/lstm_cell/Gelu/mul:z:0while/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu_1/mulMul%while/lstm_cell/Gelu_1/mul/x:output:0while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
while/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
while/lstm_cell/Gelu_1/truedivRealDivwhile/lstm_cell/add_1:z:0&while/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’x
while/lstm_cell/Gelu_1/ErfErf"while/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu_1/addAddV2%while/lstm_cell/Gelu_1/add/x:output:0while/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu_1/mul_1Mulwhile/lstm_cell/Gelu_1/mul:z:0while/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0 while/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éčŅw
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ē

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ßH
Ā
__inference__traced_save_7981
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Ā
valueøBµ#B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH³
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¢
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *1
dtypes'
%2#	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapes
’: :	d:d:dd:d:d
:
: : : : : :	:
:: : :	d:d:dd:d:d
:
:	:
::	d:d:dd:d:d
:
:	:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:d
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:d
: 

_output_shapes
:
:%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:d
: 

_output_shapes
:
:% !

_output_shapes
:	:&!"
 
_output_shapes
:
:!"

_output_shapes	
::#

_output_shapes
: 
×7
ļ
>__inference_lstm_layer_call_and_return_conditional_losses_5555

inputs!
lstm_cell_5473:	"
lstm_cell_5475:

lstm_cell_5477:	
identity¢!lstm_cell/StatefulPartitionedCall¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskä
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5473lstm_cell_5475lstm_cell_5477*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5472n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5473lstm_cell_5475lstm_cell_5477*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5486*
condR
while_cond_5485*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ģ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs


Ž
)__inference_sequential_layer_call_fn_6048

lstm_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d

	unknown_7:

identity¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_6027o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:’’’’’’’’’0
$
_user_specified_name
lstm_input
Ž

 __inference__traced_restore_8093
file_prefix0
assignvariableop_dense_kernel:	d+
assignvariableop_1_dense_bias:d3
!assignvariableop_2_dense_1_kernel:dd-
assignvariableop_3_dense_1_bias:d3
!assignvariableop_4_dense_2_kernel:d
-
assignvariableop_5_dense_2_bias:
&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: <
)assignvariableop_11_lstm_lstm_cell_kernel:	G
3assignvariableop_12_lstm_lstm_cell_recurrent_kernel:
6
'assignvariableop_13_lstm_lstm_cell_bias:	#
assignvariableop_14_total: #
assignvariableop_15_count: :
'assignvariableop_16_adam_dense_kernel_m:	d3
%assignvariableop_17_adam_dense_bias_m:d;
)assignvariableop_18_adam_dense_1_kernel_m:dd5
'assignvariableop_19_adam_dense_1_bias_m:d;
)assignvariableop_20_adam_dense_2_kernel_m:d
5
'assignvariableop_21_adam_dense_2_bias_m:
C
0assignvariableop_22_adam_lstm_lstm_cell_kernel_m:	N
:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_m:
=
.assignvariableop_24_adam_lstm_lstm_cell_bias_m:	:
'assignvariableop_25_adam_dense_kernel_v:	d3
%assignvariableop_26_adam_dense_bias_v:d;
)assignvariableop_27_adam_dense_1_kernel_v:dd5
'assignvariableop_28_adam_dense_1_bias_v:d;
)assignvariableop_29_adam_dense_2_kernel_v:d
5
'assignvariableop_30_adam_dense_2_bias_v:
C
0assignvariableop_31_adam_lstm_lstm_cell_kernel_v:	N
:assignvariableop_32_adam_lstm_lstm_cell_recurrent_kernel_v:
=
.assignvariableop_33_adam_lstm_lstm_cell_bias_v:	
identity_35¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Ā
valueøBµ#B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¶
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Š
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¢
_output_shapes
:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp)assignvariableop_11_lstm_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_12AssignVariableOp3assignvariableop_12_lstm_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp'assignvariableop_13_lstm_lstm_cell_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_1_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_1_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_2_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_2_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_lstm_lstm_cell_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_23AssignVariableOp:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_lstm_lstm_cell_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_31AssignVariableOp0assignvariableop_31_adam_lstm_lstm_cell_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_32AssignVariableOp:assignvariableop_32_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp.assignvariableop_33_adam_lstm_lstm_cell_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 »
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_35IdentityIdentity_34:output:0^NoOp_1*
T0*
_output_shapes
: Ø
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_35Identity_35:output:0*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_33AssignVariableOp_332(
AssignVariableOp_4AssignVariableOp_42(
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
V

>__inference_lstm_layer_call_and_return_conditional_losses_7478

inputs;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ų
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu/mulMullstm_cell/Gelu/mul/x:output:0lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu/truedivRealDivlstm_cell/split:output:2lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell/Gelu/ErfErflstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu/addAddV2lstm_cell/Gelu/add/x:output:0lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/Gelu/mul_1Mullstm_cell/Gelu/mul:z:0lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu_1/mulMullstm_cell/Gelu_1/mul/x:output:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu_1/truedivRealDivlstm_cell/add_1:z:0 lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
lstm_cell/Gelu_1/ErfErflstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu_1/addAddV2lstm_cell/Gelu_1/add/x:output:0lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/Gelu_1/mul_1Mullstm_cell/Gelu_1/mul:z:0lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_7380*
condR
while_cond_7379*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ć
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0’’’’’’’’’*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
Æ
¹
while_cond_6163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_6163___redundant_placeholder02
.while_while_cond_6163___redundant_placeholder12
.while_while_cond_6163___redundant_placeholder22
.while_while_cond_6163___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
»	

lstm_while_cond_6542&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1<
8lstm_while_lstm_while_cond_6542___redundant_placeholder0<
8lstm_while_lstm_while_cond_6542___redundant_placeholder1<
8lstm_while_lstm_while_cond_6542___redundant_placeholder2<
8lstm_while_lstm_while_cond_6542___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Æ
¹
while_cond_5485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_5485___redundant_placeholder02
.while_while_cond_5485___redundant_placeholder12
.while_while_cond_5485___redundant_placeholder22
.while_while_cond_5485___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:

³
#__inference_lstm_layer_call_fn_6932
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallę
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_5555p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Æ
¹
while_cond_7037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7037___redundant_placeholder02
.while_while_cond_7037___redundant_placeholder12
.while_while_cond_7037___redundant_placeholder22
.while_while_cond_7037___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
ó
±
#__inference_lstm_layer_call_fn_6954

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_5946p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
Æ
¹
while_cond_7379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7379___redundant_placeholder02
.while_while_cond_7379___redundant_placeholder12
.while_while_cond_7379___redundant_placeholder22
.while_while_cond_7379___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
E
µ
while_body_7380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0“
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ź
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu/mulMul#while/lstm_cell/Gelu/mul/x:output:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
while/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ? 
while/lstm_cell/Gelu/truedivRealDivwhile/lstm_cell/split:output:2$while/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell/Gelu/ErfErf while/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu/addAddV2#while/lstm_cell/Gelu/add/x:output:0while/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu/mul_1Mulwhile/lstm_cell/Gelu/mul:z:0while/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu_1/mulMul%while/lstm_cell/Gelu_1/mul/x:output:0while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
while/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
while/lstm_cell/Gelu_1/truedivRealDivwhile/lstm_cell/add_1:z:0&while/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’x
while/lstm_cell/Gelu_1/ErfErf"while/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu_1/addAddV2%while/lstm_cell/Gelu_1/add/x:output:0while/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu_1/mul_1Mulwhile/lstm_cell/Gelu_1/mul:z:0while/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0 while/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éčŅw
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ē

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ś	
Ś
)__inference_sequential_layer_call_fn_6470

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d

	unknown_7:

identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_6322o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
E
µ
while_body_7551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0“
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ź
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu/mulMul#while/lstm_cell/Gelu/mul/x:output:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
while/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ? 
while/lstm_cell/Gelu/truedivRealDivwhile/lstm_cell/split:output:2$while/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell/Gelu/ErfErf while/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu/addAddV2#while/lstm_cell/Gelu/add/x:output:0while/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu/mul_1Mulwhile/lstm_cell/Gelu/mul:z:0while/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu_1/mulMul%while/lstm_cell/Gelu_1/mul/x:output:0while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
while/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
while/lstm_cell/Gelu_1/truedivRealDivwhile/lstm_cell/add_1:z:0&while/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’x
while/lstm_cell/Gelu_1/ErfErf"while/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu_1/addAddV2%while/lstm_cell/Gelu_1/add/x:output:0while/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu_1/mul_1Mulwhile/lstm_cell/Gelu_1/mul:z:0while/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0 while/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éčŅw
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ē

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
„L
Õ	
lstm_while_body_6543&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
5lstm_while_lstm_cell_matmul_readvariableop_resource_0:	K
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:
E
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0:	
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
3lstm_while_lstm_cell_matmul_readvariableop_resource:	I
5lstm_while_lstm_cell_matmul_1_readvariableop_resource:
C
4lstm_while_lstm_cell_biasadd_readvariableop_resource:	¢+lstm/while/lstm_cell/BiasAdd/ReadVariableOp¢*lstm/while/lstm_cell/MatMul/ReadVariableOp¢,lstm/while/lstm_cell/MatMul_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   æ
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0”
*lstm/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ć
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:02lstm/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¦
,lstm/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ŗ
lstm/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24lstm/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/MatMul:product:0'lstm/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
+lstm/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0­
lstm/while/lstm_cell/BiasAddBiasAddlstm/while/lstm_cell/add:z:03lstm/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ł
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:0%lstm/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
lstm/while/lstm_cell/SigmoidSigmoid#lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/Sigmoid_1Sigmoid#lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/mulMul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’d
lstm/while/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
lstm/while/lstm_cell/Gelu/mulMul(lstm/while/lstm_cell/Gelu/mul/x:output:0#lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’e
 lstm/while/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?Æ
!lstm/while/lstm_cell/Gelu/truedivRealDiv#lstm/while/lstm_cell/split:output:2)lstm/while/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm/while/lstm_cell/Gelu/ErfErf%lstm/while/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
lstm/while/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¦
lstm/while/lstm_cell/Gelu/addAddV2(lstm/while/lstm_cell/Gelu/add/x:output:0!lstm/while/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/Gelu/mul_1Mul!lstm/while/lstm_cell/Gelu/mul:z:0!lstm/while/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/mul_1Mul lstm/while/lstm_cell/Sigmoid:y:0#lstm/while/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/add_1AddV2lstm/while/lstm_cell/mul:z:0lstm/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/Sigmoid_2Sigmoid#lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
!lstm/while/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?„
lstm/while/lstm_cell/Gelu_1/mulMul*lstm/while/lstm_cell/Gelu_1/mul/x:output:0lstm/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’g
"lstm/while/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?®
#lstm/while/lstm_cell/Gelu_1/truedivRealDivlstm/while/lstm_cell/add_1:z:0+lstm/while/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/Gelu_1/ErfErf'lstm/while/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’f
!lstm/while/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¬
lstm/while/lstm_cell/Gelu_1/addAddV2*lstm/while/lstm_cell/Gelu_1/add/x:output:0#lstm/while/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’„
!lstm/while/lstm_cell/Gelu_1/mul_1Mul#lstm/while/lstm_cell/Gelu_1/mul:z:0#lstm/while/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/mul_2Mul"lstm/while/lstm_cell/Sigmoid_2:y:0%lstm/while/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ö
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: Ø
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: :éčŅ
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_2:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_1:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ū
lstm/while/NoOpNoOp,^lstm/while/lstm_cell/BiasAdd/ReadVariableOp+^lstm/while/lstm_cell/MatMul/ReadVariableOp-^lstm/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"¼
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2Z
+lstm/while/lstm_cell/BiasAdd/ReadVariableOp+lstm/while/lstm_cell/BiasAdd/ReadVariableOp2X
*lstm/while/lstm_cell/MatMul/ReadVariableOp*lstm/while/lstm_cell/MatMul/ReadVariableOp2\
,lstm/while/lstm_cell/MatMul_1/ReadVariableOp,lstm/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Æ
¹
while_cond_5690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_5690___redundant_placeholder02
.while_while_cond_5690___redundant_placeholder12
.while_while_cond_5690___redundant_placeholder22
.while_while_cond_5690___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
»$

C__inference_lstm_cell_layer_call_and_return_conditional_losses_7810

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?g
Gelu/mulMulGelu/mul/x:output:0split:output:2*
T0*(
_output_shapes
:’’’’’’’’’P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?p
Gelu/truedivRealDivsplit:output:2Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’T
Gelu/ErfErfGelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’`

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
mul_1MulSigmoid:y:0Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’Q
Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?f

Gelu_1/mulMulGelu_1/mul/x:output:0	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’R
Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?o
Gelu_1/truedivRealDiv	add_1:z:0Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’X

Gelu_1/ErfErfGelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Q
Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?m

Gelu_1/addAddV2Gelu_1/add/x:output:0Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’f
Gelu_1/mul_1MulGelu_1/mul:z:0Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’`
mul_2MulSigmoid_2:y:0Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
E
µ
while_body_7038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0“
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ź
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu/mulMul#while/lstm_cell/Gelu/mul/x:output:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
while/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ? 
while/lstm_cell/Gelu/truedivRealDivwhile/lstm_cell/split:output:2$while/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell/Gelu/ErfErf while/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’_
while/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu/addAddV2#while/lstm_cell/Gelu/add/x:output:0while/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu/mul_1Mulwhile/lstm_cell/Gelu/mul:z:0while/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Gelu_1/mulMul%while/lstm_cell/Gelu_1/mul/x:output:0while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
while/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
while/lstm_cell/Gelu_1/truedivRealDivwhile/lstm_cell/add_1:z:0&while/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’x
while/lstm_cell/Gelu_1/ErfErf"while/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’a
while/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/lstm_cell/Gelu_1/addAddV2%while/lstm_cell/Gelu_1/add/x:output:0while/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/Gelu_1/mul_1Mulwhile/lstm_cell/Gelu_1/mul:z:0while/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0 while/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éčŅw
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ē

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ś	
Ś
)__inference_sequential_layer_call_fn_6447

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d

	unknown_7:

identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_6027o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
š
ł
sequential_lstm_while_cond_5250<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1R
Nsequential_lstm_while_sequential_lstm_while_cond_5250___redundant_placeholder0R
Nsequential_lstm_while_sequential_lstm_while_cond_5250___redundant_placeholder1R
Nsequential_lstm_while_sequential_lstm_while_cond_5250___redundant_placeholder2R
Nsequential_lstm_while_sequential_lstm_while_cond_5250___redundant_placeholder3"
sequential_lstm_while_identity
¢
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: k
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Æ
¹
while_cond_5847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_5847___redundant_placeholder02
.while_while_cond_5847___redundant_placeholder12
.while_while_cond_5847___redundant_placeholder22
.while_while_cond_5847___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
„L
Õ	
lstm_while_body_6756&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
5lstm_while_lstm_cell_matmul_readvariableop_resource_0:	K
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:
E
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0:	
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
3lstm_while_lstm_cell_matmul_readvariableop_resource:	I
5lstm_while_lstm_cell_matmul_1_readvariableop_resource:
C
4lstm_while_lstm_cell_biasadd_readvariableop_resource:	¢+lstm/while/lstm_cell/BiasAdd/ReadVariableOp¢*lstm/while/lstm_cell/MatMul/ReadVariableOp¢,lstm/while/lstm_cell/MatMul_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   æ
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0”
*lstm/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ć
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:02lstm/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¦
,lstm/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ŗ
lstm/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24lstm/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/MatMul:product:0'lstm/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
+lstm/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0­
lstm/while/lstm_cell/BiasAddBiasAddlstm/while/lstm_cell/add:z:03lstm/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ł
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:0%lstm/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
lstm/while/lstm_cell/SigmoidSigmoid#lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/Sigmoid_1Sigmoid#lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/mulMul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’d
lstm/while/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
lstm/while/lstm_cell/Gelu/mulMul(lstm/while/lstm_cell/Gelu/mul/x:output:0#lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’e
 lstm/while/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?Æ
!lstm/while/lstm_cell/Gelu/truedivRealDiv#lstm/while/lstm_cell/split:output:2)lstm/while/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm/while/lstm_cell/Gelu/ErfErf%lstm/while/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
lstm/while/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¦
lstm/while/lstm_cell/Gelu/addAddV2(lstm/while/lstm_cell/Gelu/add/x:output:0!lstm/while/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/Gelu/mul_1Mul!lstm/while/lstm_cell/Gelu/mul:z:0!lstm/while/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/mul_1Mul lstm/while/lstm_cell/Sigmoid:y:0#lstm/while/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/add_1AddV2lstm/while/lstm_cell/mul:z:0lstm/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/Sigmoid_2Sigmoid#lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
!lstm/while/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?„
lstm/while/lstm_cell/Gelu_1/mulMul*lstm/while/lstm_cell/Gelu_1/mul/x:output:0lstm/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’g
"lstm/while/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?®
#lstm/while/lstm_cell/Gelu_1/truedivRealDivlstm/while/lstm_cell/add_1:z:0+lstm/while/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/Gelu_1/ErfErf'lstm/while/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’f
!lstm/while/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¬
lstm/while/lstm_cell/Gelu_1/addAddV2*lstm/while/lstm_cell/Gelu_1/add/x:output:0#lstm/while/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’„
!lstm/while/lstm_cell/Gelu_1/mul_1Mul#lstm/while/lstm_cell/Gelu_1/mul:z:0#lstm/while/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/lstm_cell/mul_2Mul"lstm/while/lstm_cell/Sigmoid_2:y:0%lstm/while/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ö
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: Ø
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: :éčŅ
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_2:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_1:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ū
lstm/while/NoOpNoOp,^lstm/while/lstm_cell/BiasAdd/ReadVariableOp+^lstm/while/lstm_cell/MatMul/ReadVariableOp-^lstm/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"¼
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2Z
+lstm/while/lstm_cell/BiasAdd/ReadVariableOp+lstm/while/lstm_cell/BiasAdd/ReadVariableOp2X
*lstm/while/lstm_cell/MatMul/ReadVariableOp*lstm/while/lstm_cell/MatMul/ReadVariableOp2\
,lstm/while/lstm_cell/MatMul_1/ReadVariableOp,lstm/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
"
Ā
while_body_5691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_5715_0:	*
while_lstm_cell_5717_0:
%
while_lstm_cell_5719_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_5715:	(
while_lstm_cell_5717:
#
while_lstm_cell_5719:	¢'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0¢
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5715_0while_lstm_cell_5717_0while_lstm_cell_5719_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5632Ł
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éčŅ
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0".
while_lstm_cell_5715while_lstm_cell_5715_0".
while_lstm_cell_5717while_lstm_cell_5717_0".
while_lstm_cell_5719while_lstm_cell_5719_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
¼V

>__inference_lstm_layer_call_and_return_conditional_losses_7136
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while=
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ų
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu/mulMullstm_cell/Gelu/mul/x:output:0lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu/truedivRealDivlstm_cell/split:output:2lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell/Gelu/ErfErflstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu/addAddV2lstm_cell/Gelu/add/x:output:0lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/Gelu/mul_1Mullstm_cell/Gelu/mul:z:0lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu_1/mulMullstm_cell/Gelu_1/mul/x:output:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu_1/truedivRealDivlstm_cell/add_1:z:0 lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
lstm_cell/Gelu_1/ErfErflstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu_1/addAddV2lstm_cell/Gelu_1/add/x:output:0lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/Gelu_1/mul_1Mullstm_cell/Gelu_1/mul:z:0lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_7038*
condR
while_cond_7037*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ģ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
£
ī
D__inference_sequential_layer_call_and_return_conditional_losses_6322

inputs
	lstm_6299:	
	lstm_6301:

	lstm_6303:	

dense_6306:	d

dense_6308:d
dense_1_6311:dd
dense_1_6313:d
dense_2_6316:d

dense_2_6318:

identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢lstm/StatefulPartitionedCallė
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs	lstm_6299	lstm_6301	lstm_6303*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6262
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0
dense_6306
dense_6308*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5972
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6311dense_1_6313*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_5996
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6316dense_2_6318*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6020w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
É
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
V

>__inference_lstm_layer_call_and_return_conditional_losses_5946

inputs;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ų
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu/mulMullstm_cell/Gelu/mul/x:output:0lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu/truedivRealDivlstm_cell/split:output:2lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell/Gelu/ErfErflstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu/addAddV2lstm_cell/Gelu/add/x:output:0lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/Gelu/mul_1Mullstm_cell/Gelu/mul:z:0lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu_1/mulMullstm_cell/Gelu_1/mul/x:output:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu_1/truedivRealDivlstm_cell/add_1:z:0 lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
lstm_cell/Gelu_1/ErfErflstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu_1/addAddV2lstm_cell/Gelu_1/add/x:output:0lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/Gelu_1/mul_1Mullstm_cell/Gelu_1/mul:z:0lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5848*
condR
while_cond_5847*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ć
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0’’’’’’’’’*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
Æ
¹
while_cond_7208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7208___redundant_placeholder02
.while_while_cond_7208___redundant_placeholder12
.while_while_cond_7208___redundant_placeholder22
.while_while_cond_7208___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
£
ī
D__inference_sequential_layer_call_and_return_conditional_losses_6027

inputs
	lstm_5947:	
	lstm_5949:

	lstm_5951:	

dense_5973:	d

dense_5975:d
dense_1_5997:dd
dense_1_5999:d
dense_2_6021:d

dense_2_6023:

identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢lstm/StatefulPartitionedCallė
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs	lstm_5947	lstm_5949	lstm_5951*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_5946
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0
dense_5973
dense_5975*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5972
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5997dense_1_5999*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_5996
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6021dense_2_6023*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6020w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
É
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
±
ņ
A__inference_dense_2_layer_call_and_return_conditional_losses_6020

inputs0
matmul_readvariableop_resource:d
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?q
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’
S
Gelu/ErfErfGelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’
O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?f
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’
_

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’
]
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
V

>__inference_lstm_layer_call_and_return_conditional_losses_7649

inputs;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ų
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu/mulMullstm_cell/Gelu/mul/x:output:0lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu/truedivRealDivlstm_cell/split:output:2lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell/Gelu/ErfErflstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu/addAddV2lstm_cell/Gelu/add/x:output:0lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/Gelu/mul_1Mullstm_cell/Gelu/mul:z:0lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu_1/mulMullstm_cell/Gelu_1/mul/x:output:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu_1/truedivRealDivlstm_cell/add_1:z:0 lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
lstm_cell/Gelu_1/ErfErflstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu_1/addAddV2lstm_cell/Gelu_1/add/x:output:0lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/Gelu_1/mul_1Mullstm_cell/Gelu_1/mul:z:0lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_7551*
condR
while_cond_7550*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ć
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0’’’’’’’’’*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
¾

$__inference_dense_layer_call_fn_7658

inputs
unknown:	d
	unknown_0:d
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5972o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
V

>__inference_lstm_layer_call_and_return_conditional_losses_6262

inputs;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ų
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu/mulMullstm_cell/Gelu/mul/x:output:0lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu/truedivRealDivlstm_cell/split:output:2lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell/Gelu/ErfErflstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu/addAddV2lstm_cell/Gelu/add/x:output:0lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/Gelu/mul_1Mullstm_cell/Gelu/mul:z:0lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/Gelu_1/mulMullstm_cell/Gelu_1/mul/x:output:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’\
lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm_cell/Gelu_1/truedivRealDivlstm_cell/add_1:z:0 lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
lstm_cell/Gelu_1/ErfErflstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’[
lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/Gelu_1/addAddV2lstm_cell/Gelu_1/add/x:output:0lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell/Gelu_1/mul_1Mullstm_cell/Gelu_1/mul:z:0lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’~
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_6164*
condR
while_cond_6163*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ć
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0’’’’’’’’’*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs
±
ņ
A__inference_dense_1_layer_call_and_return_conditional_losses_5996

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dO

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’dP
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?q
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’dS
Gelu/ErfErfGelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’dO

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?f
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’d_

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d]
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
½
½
D__inference_sequential_layer_call_and_return_conditional_losses_6683

inputs@
-lstm_lstm_cell_matmul_readvariableop_resource:	C
/lstm_lstm_cell_matmul_1_readvariableop_resource:
=
.lstm_lstm_cell_biasadd_readvariableop_resource:	7
$dense_matmul_readvariableop_resource:	d3
%dense_biasadd_readvariableop_resource:d8
&dense_1_matmul_readvariableop_resource:dd5
'dense_1_biasadd_readvariableop_resource:d8
&dense_2_matmul_readvariableop_resource:d
5
'dense_2_biasadd_readvariableop_resource:

identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢%lstm/lstm_cell/BiasAdd/ReadVariableOp¢$lstm/lstm_cell/MatMul/ReadVariableOp¢&lstm/lstm_cell/MatMul_1/ReadVariableOp¢
lstm/while@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ź
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:0’’’’’’’’’N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ō
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ć
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ļ
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ē
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splits
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’u
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm/lstm_cell/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Gelu/mulMul"lstm/lstm_cell/Gelu/mul/x:output:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’_
lstm/lstm_cell/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm/lstm_cell/Gelu/truedivRealDivlstm/lstm_cell/split:output:2#lstm/lstm_cell/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
lstm/lstm_cell/Gelu/ErfErflstm/lstm_cell/Gelu/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm/lstm_cell/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm/lstm_cell/Gelu/addAddV2"lstm/lstm_cell/Gelu/add/x:output:0lstm/lstm_cell/Gelu/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/Gelu/mul_1Mullstm/lstm_cell/Gelu/mul:z:0lstm/lstm_cell/Gelu/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/Gelu/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’u
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’`
lstm/lstm_cell/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Gelu_1/mulMul$lstm/lstm_cell/Gelu_1/mul/x:output:0lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’a
lstm/lstm_cell/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
lstm/lstm_cell/Gelu_1/truedivRealDivlstm/lstm_cell/add_1:z:0%lstm/lstm_cell/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:’’’’’’’’’v
lstm/lstm_cell/Gelu_1/ErfErf!lstm/lstm_cell/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:’’’’’’’’’`
lstm/lstm_cell/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm/lstm_cell/Gelu_1/addAddV2$lstm/lstm_cell/Gelu_1/add/x:output:0lstm/lstm_cell/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/Gelu_1/mul_1Mullstm/lstm_cell/Gelu_1/mul:z:0lstm/lstm_cell/Gelu_1/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/Gelu_1/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ē
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : æ

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
lstm_while_body_6543* 
condR
lstm_while_cond_6542*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ņ
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0’’’’’’’’’*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¦
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’0`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’d~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dU
dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?z
dense/Gelu/mulMuldense/Gelu/mul/x:output:0dense/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’dV
dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
dense/Gelu/truedivRealDivdense/BiasAdd:output:0dense/Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’d_
dense/Gelu/ErfErfdense/Gelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’dU
dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
dense/Gelu/addAddV2dense/Gelu/add/x:output:0dense/Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’dq
dense/Gelu/mul_1Muldense/Gelu/mul:z:0dense/Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0
dense_1/MatMulMatMuldense/Gelu/mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’d
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’dW
dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dense_1/Gelu/mulMuldense_1/Gelu/mul/x:output:0dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’dX
dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
dense_1/Gelu/truedivRealDivdense_1/BiasAdd:output:0dense_1/Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’dc
dense_1/Gelu/ErfErfdense_1/Gelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’dW
dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
dense_1/Gelu/addAddV2dense_1/Gelu/add/x:output:0dense_1/Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’dw
dense_1/Gelu/mul_1Muldense_1/Gelu/mul:z:0dense_1/Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’d
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype0
dense_2/MatMulMatMuldense_1/Gelu/mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’

dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
W
dense_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dense_2/Gelu/mulMuldense_2/Gelu/mul/x:output:0dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’
X
dense_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *óµ?
dense_2/Gelu/truedivRealDivdense_2/BiasAdd:output:0dense_2/Gelu/Cast/x:output:0*
T0*'
_output_shapes
:’’’’’’’’’
c
dense_2/Gelu/ErfErfdense_2/Gelu/truediv:z:0*
T0*'
_output_shapes
:’’’’’’’’’
W
dense_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
dense_2/Gelu/addAddV2dense_2/Gelu/add/x:output:0dense_2/Gelu/Erf:y:0*
T0*'
_output_shapes
:’’’’’’’’’
w
dense_2/Gelu/mul_1Muldense_2/Gelu/mul:z:0dense_2/Gelu/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’
e
IdentityIdentitydense_2/Gelu/mul_1:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’

NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):’’’’’’’’’0: : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2

lstm/while
lstm/while:S O
+
_output_shapes
:’’’’’’’’’0
 
_user_specified_nameinputs"ŪL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*“
serving_default 
E

lstm_input7
serving_default_lstm_input:0’’’’’’’’’0;
dense_20
StatefulPartitionedCall:0’’’’’’’’’
tensorflow/serving/predict:

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ś
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
»

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
õ
/iter

0beta_1

1beta_2
	2decay
3learning_ratemdmemf mg'mh(mi4mj5mk6mlvmvnvo vp'vq(vr4vs5vt6vu"
	optimizer
_
40
51
62
3
4
5
 6
'7
(8"
trackable_list_wrapper
_
40
51
62
3
4
5
 6
'7
(8"
trackable_list_wrapper
 "
trackable_list_wrapper
Ź
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ņ2ļ
)__inference_sequential_layer_call_fn_6048
)__inference_sequential_layer_call_fn_6447
)__inference_sequential_layer_call_fn_6470
)__inference_sequential_layer_call_fn_6366Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
Ž2Ū
D__inference_sequential_layer_call_and_return_conditional_losses_6683
D__inference_sequential_layer_call_and_return_conditional_losses_6896
D__inference_sequential_layer_call_and_return_conditional_losses_6392
D__inference_sequential_layer_call_and_return_conditional_losses_6418Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ĶBŹ
__inference__wrapped_model_5391
lstm_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
,
<serving_default"
signature_map
ų
=
state_size

4kernel
5recurrent_kernel
6bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ļ2ģ
#__inference_lstm_layer_call_fn_6932
#__inference_lstm_layer_call_fn_6943
#__inference_lstm_layer_call_fn_6954
#__inference_lstm_layer_call_fn_6965Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
Ū2Ų
>__inference_lstm_layer_call_and_return_conditional_losses_7136
>__inference_lstm_layer_call_and_return_conditional_losses_7307
>__inference_lstm_layer_call_and_return_conditional_losses_7478
>__inference_lstm_layer_call_and_return_conditional_losses_7649Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
:	d2dense/kernel
:d2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ī2Ė
$__inference_dense_layer_call_fn_7658¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
é2ę
?__inference_dense_layer_call_and_return_conditional_losses_7676¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
 :dd2dense_1/kernel
:d2dense_1/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
Š2Ķ
&__inference_dense_1_layer_call_fn_7685¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ė2č
A__inference_dense_1_layer_call_and_return_conditional_losses_7703¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
 :d
2dense_2/kernel
:
2dense_2/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Š2Ķ
&__inference_dense_2_layer_call_fn_7712¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ė2č
A__inference_dense_2_layer_call_and_return_conditional_losses_7730¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	2lstm/lstm_cell/kernel
3:1
2lstm/lstm_cell/recurrent_kernel
": 2lstm/lstm_cell/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĢBÉ
"__inference_signature_wrapper_6921
lstm_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
­
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_lstm_cell_layer_call_fn_7747
(__inference_lstm_cell_layer_call_fn_7764¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
Ī2Ė
C__inference_lstm_cell_layer_call_and_return_conditional_losses_7810
C__inference_lstm_cell_layer_call_and_return_conditional_losses_7856¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	`total
	acount
b	variables
c	keras_api"
_tf_keras_metric
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
.
`0
a1"
trackable_list_wrapper
-
b	variables"
_generic_user_object
$:"	d2Adam/dense/kernel/m
:d2Adam/dense/bias/m
%:#dd2Adam/dense_1/kernel/m
:d2Adam/dense_1/bias/m
%:#d
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
-:+	2Adam/lstm/lstm_cell/kernel/m
8:6
2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%2Adam/lstm/lstm_cell/bias/m
$:"	d2Adam/dense/kernel/v
:d2Adam/dense/bias/v
%:#dd2Adam/dense_1/kernel/v
:d2Adam/dense_1/bias/v
%:#d
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
-:+	2Adam/lstm/lstm_cell/kernel/v
8:6
2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%2Adam/lstm/lstm_cell/bias/v
__inference__wrapped_model_5391w	456 '(7¢4
-¢*
(%

lstm_input’’’’’’’’’0
Ŗ "1Ŗ.
,
dense_2!
dense_2’’’’’’’’’
”
A__inference_dense_1_layer_call_and_return_conditional_losses_7703\ /¢,
%¢"
 
inputs’’’’’’’’’d
Ŗ "%¢"

0’’’’’’’’’d
 y
&__inference_dense_1_layer_call_fn_7685O /¢,
%¢"
 
inputs’’’’’’’’’d
Ŗ "’’’’’’’’’d”
A__inference_dense_2_layer_call_and_return_conditional_losses_7730\'(/¢,
%¢"
 
inputs’’’’’’’’’d
Ŗ "%¢"

0’’’’’’’’’

 y
&__inference_dense_2_layer_call_fn_7712O'(/¢,
%¢"
 
inputs’’’’’’’’’d
Ŗ "’’’’’’’’’
 
?__inference_dense_layer_call_and_return_conditional_losses_7676]0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "%¢"

0’’’’’’’’’d
 x
$__inference_dense_layer_call_fn_7658P0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "’’’’’’’’’dŹ
C__inference_lstm_cell_layer_call_and_return_conditional_losses_7810456¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p 
Ŗ "v¢s
l¢i

0/0’’’’’’’’’
GD
 
0/1/0’’’’’’’’’
 
0/1/1’’’’’’’’’
 Ź
C__inference_lstm_cell_layer_call_and_return_conditional_losses_7856456¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p
Ŗ "v¢s
l¢i

0/0’’’’’’’’’
GD
 
0/1/0’’’’’’’’’
 
0/1/1’’’’’’’’’
 
(__inference_lstm_cell_layer_call_fn_7747ņ456¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p 
Ŗ "f¢c

0’’’’’’’’’
C@

1/0’’’’’’’’’

1/1’’’’’’’’’
(__inference_lstm_cell_layer_call_fn_7764ņ456¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p
Ŗ "f¢c

0’’’’’’’’’
C@

1/0’’’’’’’’’

1/1’’’’’’’’’Ą
>__inference_lstm_layer_call_and_return_conditional_losses_7136~456O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "&¢#

0’’’’’’’’’
 Ą
>__inference_lstm_layer_call_and_return_conditional_losses_7307~456O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "&¢#

0’’’’’’’’’
 °
>__inference_lstm_layer_call_and_return_conditional_losses_7478n456?¢<
5¢2
$!
inputs’’’’’’’’’0

 
p 

 
Ŗ "&¢#

0’’’’’’’’’
 °
>__inference_lstm_layer_call_and_return_conditional_losses_7649n456?¢<
5¢2
$!
inputs’’’’’’’’’0

 
p

 
Ŗ "&¢#

0’’’’’’’’’
 
#__inference_lstm_layer_call_fn_6932q456O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’
#__inference_lstm_layer_call_fn_6943q456O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’
#__inference_lstm_layer_call_fn_6954a456?¢<
5¢2
$!
inputs’’’’’’’’’0

 
p 

 
Ŗ "’’’’’’’’’
#__inference_lstm_layer_call_fn_6965a456?¢<
5¢2
$!
inputs’’’’’’’’’0

 
p

 
Ŗ "’’’’’’’’’»
D__inference_sequential_layer_call_and_return_conditional_losses_6392s	456 '(?¢<
5¢2
(%

lstm_input’’’’’’’’’0
p 

 
Ŗ "%¢"

0’’’’’’’’’

 »
D__inference_sequential_layer_call_and_return_conditional_losses_6418s	456 '(?¢<
5¢2
(%

lstm_input’’’’’’’’’0
p

 
Ŗ "%¢"

0’’’’’’’’’

 ·
D__inference_sequential_layer_call_and_return_conditional_losses_6683o	456 '(;¢8
1¢.
$!
inputs’’’’’’’’’0
p 

 
Ŗ "%¢"

0’’’’’’’’’

 ·
D__inference_sequential_layer_call_and_return_conditional_losses_6896o	456 '(;¢8
1¢.
$!
inputs’’’’’’’’’0
p

 
Ŗ "%¢"

0’’’’’’’’’

 
)__inference_sequential_layer_call_fn_6048f	456 '(?¢<
5¢2
(%

lstm_input’’’’’’’’’0
p 

 
Ŗ "’’’’’’’’’

)__inference_sequential_layer_call_fn_6366f	456 '(?¢<
5¢2
(%

lstm_input’’’’’’’’’0
p

 
Ŗ "’’’’’’’’’

)__inference_sequential_layer_call_fn_6447b	456 '(;¢8
1¢.
$!
inputs’’’’’’’’’0
p 

 
Ŗ "’’’’’’’’’

)__inference_sequential_layer_call_fn_6470b	456 '(;¢8
1¢.
$!
inputs’’’’’’’’’0
p

 
Ŗ "’’’’’’’’’
¬
"__inference_signature_wrapper_6921	456 '(E¢B
¢ 
;Ŗ8
6

lstm_input(%

lstm_input’’’’’’’’’0"1Ŗ.
,
dense_2!
dense_2’’’’’’’’’
