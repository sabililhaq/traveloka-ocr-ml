√╧
╘к
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

·
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
н
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-0-g3f878cff5b68╩п
Б
model/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*#
shared_namemodel/dense/kernel
z
&model/dense/kernel/Read/ReadVariableOpReadVariableOpmodel/dense/kernel*
_output_shapes
:	А*
dtype0
x
model/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namemodel/dense/bias
q
$model/dense/bias/Read/ReadVariableOpReadVariableOpmodel/dense/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
Г
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:@А*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_2/kernel
}
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:АА*
dtype0
Л
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А**
shared_namebatch_normalization/gamma
Д
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:А*
dtype0
Й
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_namebatch_normalization/beta
В
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:А*
dtype0
Ч
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!batch_normalization/moving_mean
Р
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:А*
dtype0
Я
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#batch_normalization/moving_variance
Ш
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:А*
dtype0
Д
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_5/kernel
}
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*(
_output_shapes
:АА*
dtype0
П
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_1/gamma
И
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes	
:А*
dtype0
Н
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namebatch_normalization_1/beta
Ж
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes	
:А*
dtype0
Ы
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!batch_normalization_1/moving_mean
Ф
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes	
:А*
dtype0
г
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%batch_normalization_1/moving_variance
Ь
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes	
:А*
dtype0
Д
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_6/kernel
}
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_6/bias
l
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes	
:А*
dtype0

NoOpNoOp
ц
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*б
valueЧBФ BН
∙
FeatureExtraction
AdaptiveAvgPool

Prediction
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
▒
output_channel
ConvNet
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
ж

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses*
к
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519
20
21*
К
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
/11
012
113
414
515
16
17*
* 
░
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

;serving_default* 
* 
И
<layer_with_weights-0
<layer-0
=layer-1
>layer-2
?layer_with_weights-1
?layer-3
@layer-4
Alayer-5
Blayer_with_weights-2
Blayer-6
Clayer-7
Dlayer_with_weights-3
Dlayer-8
Elayer-9
Flayer-10
Glayer_with_weights-4
Glayer-11
Hlayer_with_weights-5
Hlayer-12
Ilayer-13
Jlayer_with_weights-6
Jlayer-14
Klayer_with_weights-7
Klayer-15
Llayer-16
Mlayer-17
Nlayer_with_weights-8
Nlayer-18
Olayer-19
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses*
Ъ
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519*
z
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
/11
012
113
414
515*
* 
У
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
XR
VARIABLE_VALUEmodel/dense/kernel,Prediction/kernel/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEmodel/dense/bias*Prediction/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
У
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*
* 
* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatch_normalization/gamma&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatch_normalization/beta'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEbatch_normalization/moving_mean'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#batch_normalization/moving_variance'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_5/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_1/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_1/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_1/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_1/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_6/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_6/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
 
-0
.1
22
33*

0
1
2*
* 
* 
* 
* 
ж

"kernel
#bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses*
О
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses* 
О
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses* 
ж

$kernel
%bias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses*
С
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses* 
Ф
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses* 
м

&kernel
'bias
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
Н__call__
+О&call_and_return_all_conditional_losses*
Ф
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses* 
м

(kernel
)bias
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses*
Ф
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses* 
Ф
б	variables
вtrainable_variables
гregularization_losses
д	keras_api
е__call__
+ж&call_and_return_all_conditional_losses* 
в

*kernel
з	variables
иtrainable_variables
йregularization_losses
к	keras_api
л__call__
+м&call_and_return_all_conditional_losses*
▄
	нaxis
	+gamma
,beta
-moving_mean
.moving_variance
о	variables
пtrainable_variables
░regularization_losses
▒	keras_api
▓__call__
+│&call_and_return_all_conditional_losses*
Ф
┤	variables
╡trainable_variables
╢regularization_losses
╖	keras_api
╕__call__
+╣&call_and_return_all_conditional_losses* 
в

/kernel
║	variables
╗trainable_variables
╝regularization_losses
╜	keras_api
╛__call__
+┐&call_and_return_all_conditional_losses*
▄
	└axis
	0gamma
1beta
2moving_mean
3moving_variance
┴	variables
┬trainable_variables
├regularization_losses
─	keras_api
┼__call__
+╞&call_and_return_all_conditional_losses*
Ф
╟	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses* 
Ф
═	variables
╬trainable_variables
╧regularization_losses
╨	keras_api
╤__call__
+╥&call_and_return_all_conditional_losses* 
м

4kernel
5bias
╙	variables
╘trainable_variables
╒regularization_losses
╓	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses*
Ф
┘	variables
┌trainable_variables
█regularization_losses
▄	keras_api
▌__call__
+▐&call_and_return_all_conditional_losses* 
Ъ
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519*
z
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
/11
012
113
414
515*
* 
Ш
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
* 
* 
 
-0
.1
22
33*

0*
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

"0
#1*

"0
#1*
* 
Ш
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ц
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 
* 
* 

$0
%1*

$0
%1*
* 
Ш
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Щ
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
¤non_trainable_variables
■layers
 metrics
 Аlayer_regularization_losses
Бlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses* 
* 
* 

&0
'1*

&0
'1*
* 
Ю
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
Й	variables
Кtrainable_variables
Лregularization_losses
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses* 
* 
* 

(0
)1*

(0
)1*
* 
Ю
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
б	variables
вtrainable_variables
гregularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses* 
* 
* 

*0*

*0*
* 
Ю
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
з	variables
иtrainable_variables
йregularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses*
* 
* 
* 
 
+0
,1
-2
.3*

+0
,1*
* 
Ю
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
о	variables
пtrainable_variables
░regularization_losses
▓__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
┤	variables
╡trainable_variables
╢regularization_losses
╕__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses* 
* 
* 

/0*

/0*
* 
Ю
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
║	variables
╗trainable_variables
╝regularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses*
* 
* 
* 
 
00
11
22
33*

00
11*
* 
Ю
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
┴	variables
┬trainable_variables
├regularization_losses
┼__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
╟	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
═	variables
╬trainable_variables
╧regularization_losses
╤__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses* 
* 
* 

40
51*

40
51*
* 
Ю
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
╙	variables
╘trainable_variables
╒regularization_losses
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
┘	variables
┌trainable_variables
█regularization_losses
▌__call__
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses* 
* 
* 
 
-0
.1
22
33*
Ъ
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19*
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
-0
.1*
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

20
31*
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
Й
serving_default_args_0Placeholder*/
_output_shapes
:          d*
dtype0*$
shape:          d
y
serving_default_args_1Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
т
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_5/kernelbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_6/kernelconv2d_6/biasmodel/dense/kernelmodel/dense/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *0
f+R)
'__inference_signature_wrapper_314958371
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╤	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&model/dense/kernel/Read/ReadVariableOp$model/dense/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOpConst*#
Tin
2*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_save_314959393
Ф
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemodel/dense/kernelmodel/dense/biasconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_5/kernelbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_6/kernelconv2d_6/bias*"
Tin
2*
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
GPU2*0J 8В *.
f)R'
%__inference__traced_restore_314959469єш
║
u
Y__inference_adaptive_average_pooling2d_layer_call_and_return_conditional_losses_314957731

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Г
splitSplitsplit/split_dim:output:0inputs*
T0*╢
_output_shapesг
а:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А*
	num_splitя
stackPacksplit:output:0split:output:1split:output:2split:output:3split:output:4split:output:5split:output:6split:output:7split:output:8split:output:9split:output:10split:output:11split:output:12split:output:13split:output:14split:output:15split:output:16split:output:17split:output:18split:output:19split:output:20split:output:21split:output:22split:output:23*
N*
T0*4
_output_shapes"
 :         А*

axisS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0stack:output:0*
T0*4
_output_shapes"
 :         А*
	num_splity
stack_1Packsplit_1:output:0*
N*
T0*8
_output_shapes&
$:"         А*

axisg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      z
MeanMeanstack_1:output:0Mean/reduction_indices:output:0*
T0*0
_output_shapes
:         А^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
э
╟
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314956600

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╡

Г
G__inference_conv2d_2_layer_call_and_return_conditional_losses_314956688

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╗a
Э
I__inference_sequential_layer_call_and_return_conditional_losses_314958867

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@А7
(conv2d_1_biasadd_readvariableop_resource:	АC
'conv2d_2_conv2d_readvariableop_resource:АА7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА:
+batch_normalization_readvariableop_resource:	А<
-batch_normalization_readvariableop_1_resource:	АK
<batch_normalization_fusedbatchnormv3_readvariableop_resource:	АM
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_5_conv2d_readvariableop_resource:АА<
-batch_normalization_1_readvariableop_resource:	А>
/batch_normalization_1_readvariableop_1_resource:	АM
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_6_conv2d_readvariableop_resource:АА7
(conv2d_6_biasadd_readvariableop_resource:	А
identityИв3batch_normalization/FusedBatchNormV3/ReadVariableOpв5batch_normalization/FusedBatchNormV3/ReadVariableOp_1в"batch_normalization/ReadVariableOpв$batch_normalization/ReadVariableOp_1в5batch_normalization_1/FusedBatchNormV3/ReadVariableOpв7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_1/ReadVariableOpв&batch_normalization_1/ReadVariableOp_1вconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOpвconv2d_6/BiasAdd/ReadVariableOpвconv2d_6/Conv2D/ReadVariableOpК
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0з
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@*
paddingSAME*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Т
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@e

re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:          d@з
max_pooling2d/MaxPoolMaxPoolre_lu/Relu:activations:0*/
_output_shapes
:         2@*
ksize
*
paddingVALID*
strides
П
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0─
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А*
paddingSAME*
strides
Е
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2Аj
re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         2Ам
max_pooling2d_1/MaxPoolMaxPoolre_lu_1/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Р
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╞
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аj
re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0└
conv2d_3/Conv2DConv2Dre_lu_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аj
re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         Ам
max_pooling2d_2/MaxPoolMaxPoolre_lu_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Р
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╞
conv2d_4/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Л
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes	
:А*
dtype0П
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes	
:А*
dtype0н
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_4/Conv2D:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( y
re_lu_4/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         АР
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0└
conv2d_5/Conv2DConv2Dre_lu_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
П
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╗
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_5/Conv2D:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( {
re_lu_5/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         Ам
max_pooling2d_3/MaxPoolMaxPoolre_lu_5/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Р
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╟
conv2d_6/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Е
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аj
re_lu_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         Аr
IdentityIdentityre_lu_6/Relu:activations:0^NoOp*
T0*0
_output_shapes
:         А╧
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:W S
/
_output_shapes
:          d
 
_user_specified_nameinputs
зT
о

I__inference_sequential_layer_call_and_return_conditional_losses_314957218
conv2d_input*
conv2d_314957157:@
conv2d_314957159:@-
conv2d_1_314957164:@А!
conv2d_1_314957166:	А.
conv2d_2_314957171:АА!
conv2d_2_314957173:	А.
conv2d_3_314957177:АА!
conv2d_3_314957179:	А.
conv2d_4_314957184:АА,
batch_normalization_314957187:	А,
batch_normalization_314957189:	А,
batch_normalization_314957191:	А,
batch_normalization_314957193:	А.
conv2d_5_314957197:АА.
batch_normalization_1_314957200:	А.
batch_normalization_1_314957202:	А.
batch_normalization_1_314957204:	А.
batch_normalization_1_314957206:	А.
conv2d_6_314957211:АА!
conv2d_6_314957213:	А
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallВ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_314957157conv2d_314957159*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_layer_call_and_return_conditional_losses_314956640с
re_lu/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_re_lu_layer_call_and_return_conditional_losses_314956651ш
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_314956456е
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_314957164conv2d_1_314957166*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_314956664ш
re_lu_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_314956675я
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_314956468з
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_314957171conv2d_2_314957173*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_314956688ш
re_lu_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_314956699Я
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0conv2d_3_314957177conv2d_3_314957179*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_314956711ш
re_lu_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_314956722я
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_314956480С
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_314957184*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_314956732Ц
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_314957187batch_normalization_314957189batch_normalization_314957191batch_normalization_314957193*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314956505є
re_lu_4/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_314956750Й
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall re_lu_4/PartitionedCall:output:0conv2d_5_314957197*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_314956759в
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_1_314957200batch_normalization_1_314957202batch_normalization_1_314957204batch_normalization_1_314957206*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314956569ї
re_lu_5/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_5_layer_call_and_return_conditional_losses_314956777я
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_314956620з
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_6_314957211conv2d_6_314957213*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_6_layer_call_and_return_conditional_losses_314956790ш
re_lu_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_6_layer_call_and_return_conditional_losses_314956801x
IdentityIdentity re_lu_6/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         АЧ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:] Y
/
_output_shapes
:          d
&
_user_specified_nameconv2d_input
╡

Г
G__inference_conv2d_3_layer_call_and_return_conditional_losses_314959072

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┐
╧
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957331
x.
sequential_314957289:@"
sequential_314957291:@/
sequential_314957293:@А#
sequential_314957295:	А0
sequential_314957297:АА#
sequential_314957299:	А0
sequential_314957301:АА#
sequential_314957303:	А0
sequential_314957305:АА#
sequential_314957307:	А#
sequential_314957309:	А#
sequential_314957311:	А#
sequential_314957313:	А0
sequential_314957315:АА#
sequential_314957317:	А#
sequential_314957319:	А#
sequential_314957321:	А#
sequential_314957323:	А0
sequential_314957325:АА#
sequential_314957327:	А
identityИв"sequential/StatefulPartitionedCall╕
"sequential/StatefulPartitionedCallStatefulPartitionedCallxsequential_314957289sequential_314957291sequential_314957293sequential_314957295sequential_314957297sequential_314957299sequential_314957301sequential_314957303sequential_314957305sequential_314957307sequential_314957309sequential_314957311sequential_314957313sequential_314957315sequential_314957317sequential_314957319sequential_314957321sequential_314957323sequential_314957325sequential_314957327* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_layer_call_and_return_conditional_losses_314956804Г
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         Аk
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:R N
/
_output_shapes
:          d

_user_specified_nameX
я2
√	
"__inference__traced_save_314959393
file_prefix1
-savev2_model_dense_kernel_read_readvariableop/
+savev2_model_dense_bias_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: О
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╖
valueнBкB,Prediction/kernel/.ATTRIBUTES/VARIABLE_VALUEB*Prediction/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЫ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ·	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_model_dense_kernel_read_readvariableop+savev2_model_dense_bias_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Н
_input_shapes√
°: :	А::@:@:@А:А:АА:А:АА:А:АА:А:А:А:А:АА:А:А:А:А:АА:А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:

_output_shapes
: 
иц
┬
D__inference_model_layer_call_and_return_conditional_losses_314958319
x
texta
Gvgg__feature_extractor_sequential_conv2d_conv2d_readvariableop_resource:@V
Hvgg__feature_extractor_sequential_conv2d_biasadd_readvariableop_resource:@d
Ivgg__feature_extractor_sequential_conv2d_1_conv2d_readvariableop_resource:@АY
Jvgg__feature_extractor_sequential_conv2d_1_biasadd_readvariableop_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_2_conv2d_readvariableop_resource:ААY
Jvgg__feature_extractor_sequential_conv2d_2_biasadd_readvariableop_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_3_conv2d_readvariableop_resource:ААY
Jvgg__feature_extractor_sequential_conv2d_3_biasadd_readvariableop_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_4_conv2d_readvariableop_resource:АА\
Mvgg__feature_extractor_sequential_batch_normalization_readvariableop_resource:	А^
Ovgg__feature_extractor_sequential_batch_normalization_readvariableop_1_resource:	Аm
^vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_resource:	Аo
`vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_5_conv2d_readvariableop_resource:АА^
Ovgg__feature_extractor_sequential_batch_normalization_1_readvariableop_resource:	А`
Qvgg__feature_extractor_sequential_batch_normalization_1_readvariableop_1_resource:	Аo
`vgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	Аq
bvgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_6_conv2d_readvariableop_resource:ААY
Jvgg__feature_extractor_sequential_conv2d_6_biasadd_readvariableop_resource:	А:
'dense_tensordot_readvariableop_resource:	А3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/Tensordot/ReadVariableOpвDvgg__feature_extractor/sequential/batch_normalization/AssignNewValueвFvgg__feature_extractor/sequential/batch_normalization/AssignNewValue_1вUvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpвWvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1вDvgg__feature_extractor/sequential/batch_normalization/ReadVariableOpвFvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1вFvgg__feature_extractor/sequential/batch_normalization_1/AssignNewValueвHvgg__feature_extractor/sequential/batch_normalization_1/AssignNewValue_1вWvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвYvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1вFvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpвHvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1в?vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOpв>vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpвAvgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpвAvgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpвAvgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpвAvgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp╬
>vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOpGvgg__feature_extractor_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ц
/vgg__feature_extractor/sequential/conv2d/Conv2DConv2DxFvgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@*
paddingSAME*
strides
─
?vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOpHvgg__feature_extractor_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0°
0vgg__feature_extractor/sequential/conv2d/BiasAddBiasAdd8vgg__feature_extractor/sequential/conv2d/Conv2D:output:0Gvgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@й
,vgg__feature_extractor/sequential/re_lu/ReluRelu9vgg__feature_extractor/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:          d@ы
7vgg__feature_extractor/sequential/max_pooling2d/MaxPoolMaxPool:vgg__feature_extractor/sequential/re_lu/Relu:activations:0*/
_output_shapes
:         2@*
ksize
*
paddingVALID*
strides
╙
@vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0к
1vgg__feature_extractor/sequential/conv2d_1/Conv2DConv2D@vgg__feature_extractor/sequential/max_pooling2d/MaxPool:output:0Hvgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А*
paddingSAME*
strides
╔
Avgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpJvgg__feature_extractor_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0 
2vgg__feature_extractor/sequential/conv2d_1/BiasAddBiasAdd:vgg__feature_extractor/sequential/conv2d_1/Conv2D:output:0Ivgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2Ао
.vgg__feature_extractor/sequential/re_lu_1/ReluRelu;vgg__feature_extractor/sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         2АЁ
9vgg__feature_extractor/sequential/max_pooling2d_1/MaxPoolMaxPool<vgg__feature_extractor/sequential/re_lu_1/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╘
@vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0м
1vgg__feature_extractor/sequential/conv2d_2/Conv2DConv2DBvgg__feature_extractor/sequential/max_pooling2d_1/MaxPool:output:0Hvgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╔
Avgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpJvgg__feature_extractor_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0 
2vgg__feature_extractor/sequential/conv2d_2/BiasAddBiasAdd:vgg__feature_extractor/sequential/conv2d_2/Conv2D:output:0Ivgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ао
.vgg__feature_extractor/sequential/re_lu_2/ReluRelu;vgg__feature_extractor/sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         А╘
@vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ж
1vgg__feature_extractor/sequential/conv2d_3/Conv2DConv2D<vgg__feature_extractor/sequential/re_lu_2/Relu:activations:0Hvgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╔
Avgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpJvgg__feature_extractor_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0 
2vgg__feature_extractor/sequential/conv2d_3/BiasAddBiasAdd:vgg__feature_extractor/sequential/conv2d_3/Conv2D:output:0Ivgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ао
.vgg__feature_extractor/sequential/re_lu_3/ReluRelu;vgg__feature_extractor/sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         АЁ
9vgg__feature_extractor/sequential/max_pooling2d_2/MaxPoolMaxPool<vgg__feature_extractor/sequential/re_lu_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╘
@vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0м
1vgg__feature_extractor/sequential/conv2d_4/Conv2DConv2DBvgg__feature_extractor/sequential/max_pooling2d_2/MaxPool:output:0Hvgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╧
Dvgg__feature_extractor/sequential/batch_normalization/ReadVariableOpReadVariableOpMvgg__feature_extractor_sequential_batch_normalization_readvariableop_resource*
_output_shapes	
:А*
dtype0╙
Fvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1ReadVariableOpOvgg__feature_extractor_sequential_batch_normalization_readvariableop_1_resource*
_output_shapes	
:А*
dtype0ё
Uvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp^vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0ї
Wvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Л
Fvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3:vgg__feature_extractor/sequential/conv2d_4/Conv2D:output:0Lvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp:value:0Nvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1:value:0]vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0_vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<И
Dvgg__feature_extractor/sequential/batch_normalization/AssignNewValueAssignVariableOp^vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_resourceSvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3:batch_mean:0V^vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0Т
Fvgg__feature_extractor/sequential/batch_normalization/AssignNewValue_1AssignVariableOp`vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resourceWvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3:batch_variance:0X^vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0╜
.vgg__feature_extractor/sequential/re_lu_4/ReluReluJvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А╘
@vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ж
1vgg__feature_extractor/sequential/conv2d_5/Conv2DConv2D<vgg__feature_extractor/sequential/re_lu_4/Relu:activations:0Hvgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╙
Fvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpReadVariableOpOvgg__feature_extractor_sequential_batch_normalization_1_readvariableop_resource*
_output_shapes	
:А*
dtype0╫
Hvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOpQvgg__feature_extractor_sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:А*
dtype0ї
Wvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp`vgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0∙
Yvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpbvgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Х
Hvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3:vgg__feature_extractor/sequential/conv2d_5/Conv2D:output:0Nvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp:value:0Pvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1:value:0_vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0avgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<Р
Fvgg__feature_extractor/sequential/batch_normalization_1/AssignNewValueAssignVariableOp`vgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceUvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3:batch_mean:0X^vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0Ъ
Hvgg__feature_extractor/sequential/batch_normalization_1/AssignNewValue_1AssignVariableOpbvgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceYvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3:batch_variance:0Z^vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0┐
.vgg__feature_extractor/sequential/re_lu_5/ReluReluLvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         АЁ
9vgg__feature_extractor/sequential/max_pooling2d_3/MaxPoolMaxPool<vgg__feature_extractor/sequential/re_lu_5/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╘
@vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0н
1vgg__feature_extractor/sequential/conv2d_6/Conv2DConv2DBvgg__feature_extractor/sequential/max_pooling2d_3/MaxPool:output:0Hvgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
╔
Avgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpReadVariableOpJvgg__feature_extractor_sequential_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0 
2vgg__feature_extractor/sequential/conv2d_6/BiasAddBiasAdd:vgg__feature_extractor/sequential/conv2d_6/Conv2D:output:0Ivgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ао
.vgg__feature_extractor/sequential/re_lu_6/ReluRelu;vgg__feature_extractor/sequential/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         Аg
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             и
	transpose	Transpose<vgg__feature_extractor/sequential/re_lu_6/Relu:activations:0transpose/perm:output:0*
T0*0
_output_shapes
:         Аl
*adaptive_average_pooling2d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :└
 adaptive_average_pooling2d/splitSplit3adaptive_average_pooling2d/split/split_dim:output:0transpose:y:0*
T0*╢
_output_shapesг
а:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А*
	num_splitТ	
 adaptive_average_pooling2d/stackPack)adaptive_average_pooling2d/split:output:0)adaptive_average_pooling2d/split:output:1)adaptive_average_pooling2d/split:output:2)adaptive_average_pooling2d/split:output:3)adaptive_average_pooling2d/split:output:4)adaptive_average_pooling2d/split:output:5)adaptive_average_pooling2d/split:output:6)adaptive_average_pooling2d/split:output:7)adaptive_average_pooling2d/split:output:8)adaptive_average_pooling2d/split:output:9*adaptive_average_pooling2d/split:output:10*adaptive_average_pooling2d/split:output:11*adaptive_average_pooling2d/split:output:12*adaptive_average_pooling2d/split:output:13*adaptive_average_pooling2d/split:output:14*adaptive_average_pooling2d/split:output:15*adaptive_average_pooling2d/split:output:16*adaptive_average_pooling2d/split:output:17*adaptive_average_pooling2d/split:output:18*adaptive_average_pooling2d/split:output:19*adaptive_average_pooling2d/split:output:20*adaptive_average_pooling2d/split:output:21*adaptive_average_pooling2d/split:output:22*adaptive_average_pooling2d/split:output:23*
N*
T0*4
_output_shapes"
 :         А*

axisn
,adaptive_average_pooling2d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▌
"adaptive_average_pooling2d/split_1Split5adaptive_average_pooling2d/split_1/split_dim:output:0)adaptive_average_pooling2d/stack:output:0*
T0*4
_output_shapes"
 :         А*
	num_splitп
"adaptive_average_pooling2d/stack_1Pack+adaptive_average_pooling2d/split_1:output:0*
N*
T0*8
_output_shapes&
$:"         А*

axisВ
1adaptive_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      ╦
adaptive_average_pooling2d/MeanMean+adaptive_average_pooling2d/stack_1:output:0:adaptive_average_pooling2d/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:         АК
SqueezeSqueeze(adaptive_average_pooling2d/Mean:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
З
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       U
dense/Tensordot/ShapeShapeSqueeze:output:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╙
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ┤
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Р
dense/Tensordot/transpose	TransposeSqueeze:output:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:         АЬ
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ь
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Х
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         i
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         █
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOpE^vgg__feature_extractor/sequential/batch_normalization/AssignNewValueG^vgg__feature_extractor/sequential/batch_normalization/AssignNewValue_1V^vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpX^vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1E^vgg__feature_extractor/sequential/batch_normalization/ReadVariableOpG^vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1G^vgg__feature_extractor/sequential/batch_normalization_1/AssignNewValueI^vgg__feature_extractor/sequential/batch_normalization_1/AssignNewValue_1X^vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpZ^vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1G^vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpI^vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1@^vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp?^vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpB^vgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpB^vgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpB^vgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpB^vgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:          d:         : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2М
Dvgg__feature_extractor/sequential/batch_normalization/AssignNewValueDvgg__feature_extractor/sequential/batch_normalization/AssignNewValue2Р
Fvgg__feature_extractor/sequential/batch_normalization/AssignNewValue_1Fvgg__feature_extractor/sequential/batch_normalization/AssignNewValue_12о
Uvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpUvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2▓
Wvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Wvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12М
Dvgg__feature_extractor/sequential/batch_normalization/ReadVariableOpDvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp2Р
Fvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1Fvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_12Р
Fvgg__feature_extractor/sequential/batch_normalization_1/AssignNewValueFvgg__feature_extractor/sequential/batch_normalization_1/AssignNewValue2Ф
Hvgg__feature_extractor/sequential/batch_normalization_1/AssignNewValue_1Hvgg__feature_extractor/sequential/batch_normalization_1/AssignNewValue_12▓
Wvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpWvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2╢
Yvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Yvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12Р
Fvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpFvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp2Ф
Hvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1Hvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_12В
?vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp?vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp2А
>vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOp>vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOp2Ж
Avgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpAvgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOp2Ж
Avgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpAvgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOp2Ж
Avgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpAvgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOp2Ж
Avgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpAvgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp:R N
/
_output_shapes
:          d

_user_specified_nameX:MI
'
_output_shapes
:         

_user_specified_nametext
фГ
д
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314958619
xJ
0sequential_conv2d_conv2d_readvariableop_resource:@?
1sequential_conv2d_biasadd_readvariableop_resource:@M
2sequential_conv2d_1_conv2d_readvariableop_resource:@АB
3sequential_conv2d_1_biasadd_readvariableop_resource:	АN
2sequential_conv2d_2_conv2d_readvariableop_resource:ААB
3sequential_conv2d_2_biasadd_readvariableop_resource:	АN
2sequential_conv2d_3_conv2d_readvariableop_resource:ААB
3sequential_conv2d_3_biasadd_readvariableop_resource:	АN
2sequential_conv2d_4_conv2d_readvariableop_resource:ААE
6sequential_batch_normalization_readvariableop_resource:	АG
8sequential_batch_normalization_readvariableop_1_resource:	АV
Gsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource:	АX
Isequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:	АN
2sequential_conv2d_5_conv2d_readvariableop_resource:ААG
8sequential_batch_normalization_1_readvariableop_resource:	АI
:sequential_batch_normalization_1_readvariableop_1_resource:	АX
Isequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	АZ
Ksequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	АN
2sequential_conv2d_6_conv2d_readvariableop_resource:ААB
3sequential_conv2d_6_biasadd_readvariableop_resource:	А
identityИв-sequential/batch_normalization/AssignNewValueв/sequential/batch_normalization/AssignNewValue_1в>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpв@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1в-sequential/batch_normalization/ReadVariableOpв/sequential/batch_normalization/ReadVariableOp_1в/sequential/batch_normalization_1/AssignNewValueв1sequential/batch_normalization_1/AssignNewValue_1в@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвBsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в/sequential/batch_normalization_1/ReadVariableOpв1sequential/batch_normalization_1/ReadVariableOp_1в(sequential/conv2d/BiasAdd/ReadVariableOpв'sequential/conv2d/Conv2D/ReadVariableOpв*sequential/conv2d_1/BiasAdd/ReadVariableOpв)sequential/conv2d_1/Conv2D/ReadVariableOpв*sequential/conv2d_2/BiasAdd/ReadVariableOpв)sequential/conv2d_2/Conv2D/ReadVariableOpв*sequential/conv2d_3/BiasAdd/ReadVariableOpв)sequential/conv2d_3/Conv2D/ReadVariableOpв)sequential/conv2d_4/Conv2D/ReadVariableOpв)sequential/conv2d_5/Conv2D/ReadVariableOpв*sequential/conv2d_6/BiasAdd/ReadVariableOpв)sequential/conv2d_6/Conv2D/ReadVariableOpа
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╕
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@*
paddingSAME*
strides
Ц
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0│
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@{
sequential/re_lu/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:          d@╜
 sequential/max_pooling2d/MaxPoolMaxPool#sequential/re_lu/Relu:activations:0*/
_output_shapes
:         2@*
ksize
*
paddingVALID*
strides
е
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0х
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А*
paddingSAME*
strides
Ы
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2АА
sequential/re_lu_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         2А┬
"sequential/max_pooling2d_1/MaxPoolMaxPool%sequential/re_lu_1/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ч
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АА
sequential/re_lu_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0с
sequential/conv2d_3/Conv2DConv2D%sequential/re_lu_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АА
sequential/re_lu_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         А┬
"sequential/max_pooling2d_2/MaxPoolMaxPool%sequential/re_lu_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ч
sequential/conv2d_4/Conv2DConv2D+sequential/max_pooling2d_2/MaxPool:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
б
-sequential/batch_normalization/ReadVariableOpReadVariableOp6sequential_batch_normalization_readvariableop_resource*
_output_shapes	
:А*
dtype0е
/sequential/batch_normalization/ReadVariableOp_1ReadVariableOp8sequential_batch_normalization_readvariableop_1_resource*
_output_shapes	
:А*
dtype0├
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpGsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╟
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIsequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Б
/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3#sequential/conv2d_4/Conv2D:output:05sequential/batch_normalization/ReadVariableOp:value:07sequential/batch_normalization/ReadVariableOp_1:value:0Fsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Hsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<м
-sequential/batch_normalization/AssignNewValueAssignVariableOpGsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource<sequential/batch_normalization/FusedBatchNormV3:batch_mean:0?^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╢
/sequential/batch_normalization/AssignNewValue_1AssignVariableOpIsequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource@sequential/batch_normalization/FusedBatchNormV3:batch_variance:0A^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0П
sequential/re_lu_4/ReluRelu3sequential/batch_normalization/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         Аж
)sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0с
sequential/conv2d_5/Conv2DConv2D%sequential/re_lu_4/Relu:activations:01sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
е
/sequential/batch_normalization_1/ReadVariableOpReadVariableOp8sequential_batch_normalization_1_readvariableop_resource*
_output_shapes	
:А*
dtype0й
1sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╟
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╦
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Л
1sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3#sequential/conv2d_5/Conv2D:output:07sequential/batch_normalization_1/ReadVariableOp:value:09sequential/batch_normalization_1/ReadVariableOp_1:value:0Hsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<┤
/sequential/batch_normalization_1/AssignNewValueAssignVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource>sequential/batch_normalization_1/FusedBatchNormV3:batch_mean:0A^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╛
1sequential/batch_normalization_1/AssignNewValue_1AssignVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceBsequential/batch_normalization_1/FusedBatchNormV3:batch_variance:0C^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0С
sequential/re_lu_5/ReluRelu5sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А┬
"sequential/max_pooling2d_3/MaxPoolMaxPool%sequential/re_lu_5/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)sequential/conv2d_6/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ш
sequential/conv2d_6/Conv2DConv2D+sequential/max_pooling2d_3/MaxPool:output:01sequential/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*sequential/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_6/BiasAddBiasAdd#sequential/conv2d_6/Conv2D:output:02sequential/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АА
sequential/re_lu_6/ReluRelu$sequential/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         А}
IdentityIdentity%sequential/re_lu_6/Relu:activations:0^NoOp*
T0*0
_output_shapes
:         Ає	
NoOpNoOp.^sequential/batch_normalization/AssignNewValue0^sequential/batch_normalization/AssignNewValue_1?^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpA^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1.^sequential/batch_normalization/ReadVariableOp0^sequential/batch_normalization/ReadVariableOp_10^sequential/batch_normalization_1/AssignNewValue2^sequential/batch_normalization_1/AssignNewValue_1A^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_1/ReadVariableOp2^sequential/batch_normalization_1/ReadVariableOp_1)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp*^sequential/conv2d_5/Conv2D/ReadVariableOp+^sequential/conv2d_6/BiasAdd/ReadVariableOp*^sequential/conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2^
-sequential/batch_normalization/AssignNewValue-sequential/batch_normalization/AssignNewValue2b
/sequential/batch_normalization/AssignNewValue_1/sequential/batch_normalization/AssignNewValue_12А
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2Д
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12^
-sequential/batch_normalization/ReadVariableOp-sequential/batch_normalization/ReadVariableOp2b
/sequential/batch_normalization/ReadVariableOp_1/sequential/batch_normalization/ReadVariableOp_12b
/sequential/batch_normalization_1/AssignNewValue/sequential/batch_normalization_1/AssignNewValue2f
1sequential/batch_normalization_1/AssignNewValue_11sequential/batch_normalization_1/AssignNewValue_12Д
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2И
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_1/ReadVariableOp/sequential/batch_normalization_1/ReadVariableOp2f
1sequential/batch_normalization_1/ReadVariableOp_11sequential/batch_normalization_1/ReadVariableOp_12T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2V
)sequential/conv2d_5/Conv2D/ReadVariableOp)sequential/conv2d_5/Conv2D/ReadVariableOp2X
*sequential/conv2d_6/BiasAdd/ReadVariableOp*sequential/conv2d_6/BiasAdd/ReadVariableOp2V
)sequential/conv2d_6/Conv2D/ReadVariableOp)sequential/conv2d_6/Conv2D/ReadVariableOp:R N
/
_output_shapes
:          d

_user_specified_nameX
ю
b
F__inference_re_lu_2_layer_call_and_return_conditional_losses_314956699

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▌
б
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314956505

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ц
j
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_314956620

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╚
G
+__inference_re_lu_5_layer_call_fn_314959259

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_5_layer_call_and_return_conditional_losses_314956777i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ь▀
Н
$__inference__wrapped_model_314956447

args_0

args_1g
Mmodel_vgg__feature_extractor_sequential_conv2d_conv2d_readvariableop_resource:@\
Nmodel_vgg__feature_extractor_sequential_conv2d_biasadd_readvariableop_resource:@j
Omodel_vgg__feature_extractor_sequential_conv2d_1_conv2d_readvariableop_resource:@А_
Pmodel_vgg__feature_extractor_sequential_conv2d_1_biasadd_readvariableop_resource:	Аk
Omodel_vgg__feature_extractor_sequential_conv2d_2_conv2d_readvariableop_resource:АА_
Pmodel_vgg__feature_extractor_sequential_conv2d_2_biasadd_readvariableop_resource:	Аk
Omodel_vgg__feature_extractor_sequential_conv2d_3_conv2d_readvariableop_resource:АА_
Pmodel_vgg__feature_extractor_sequential_conv2d_3_biasadd_readvariableop_resource:	Аk
Omodel_vgg__feature_extractor_sequential_conv2d_4_conv2d_readvariableop_resource:ААb
Smodel_vgg__feature_extractor_sequential_batch_normalization_readvariableop_resource:	Аd
Umodel_vgg__feature_extractor_sequential_batch_normalization_readvariableop_1_resource:	Аs
dmodel_vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_resource:	Аu
fmodel_vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:	Аk
Omodel_vgg__feature_extractor_sequential_conv2d_5_conv2d_readvariableop_resource:ААd
Umodel_vgg__feature_extractor_sequential_batch_normalization_1_readvariableop_resource:	Аf
Wmodel_vgg__feature_extractor_sequential_batch_normalization_1_readvariableop_1_resource:	Аu
fmodel_vgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	Аw
hmodel_vgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	Аk
Omodel_vgg__feature_extractor_sequential_conv2d_6_conv2d_readvariableop_resource:АА_
Pmodel_vgg__feature_extractor_sequential_conv2d_6_biasadd_readvariableop_resource:	А@
-model_dense_tensordot_readvariableop_resource:	А9
+model_dense_biasadd_readvariableop_resource:
identityИв"model/dense/BiasAdd/ReadVariableOpв$model/dense/Tensordot/ReadVariableOpв[model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpв]model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1вJmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOpвLmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1в]model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpв_model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1вLmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpвNmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1вEmodel/vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOpвDmodel/vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpвGmodel/vgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpвFmodel/vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpвGmodel/vgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpвFmodel/vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpвGmodel/vgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpвFmodel/vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpвFmodel/vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpвFmodel/vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpвGmodel/vgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpвFmodel/vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp┌
Dmodel/vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOpMmodel_vgg__feature_extractor_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ў
5model/vgg__feature_extractor/sequential/conv2d/Conv2DConv2Dargs_0Lmodel/vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@*
paddingSAME*
strides
╨
Emodel/vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOpNmodel_vgg__feature_extractor_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0К
6model/vgg__feature_extractor/sequential/conv2d/BiasAddBiasAdd>model/vgg__feature_extractor/sequential/conv2d/Conv2D:output:0Mmodel/vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@╡
2model/vgg__feature_extractor/sequential/re_lu/ReluRelu?model/vgg__feature_extractor/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:          d@ў
=model/vgg__feature_extractor/sequential/max_pooling2d/MaxPoolMaxPool@model/vgg__feature_extractor/sequential/re_lu/Relu:activations:0*/
_output_shapes
:         2@*
ksize
*
paddingVALID*
strides
▀
Fmodel/vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOpOmodel_vgg__feature_extractor_sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╝
7model/vgg__feature_extractor/sequential/conv2d_1/Conv2DConv2DFmodel/vgg__feature_extractor/sequential/max_pooling2d/MaxPool:output:0Nmodel/vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А*
paddingSAME*
strides
╒
Gmodel/vgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpPmodel_vgg__feature_extractor_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0С
8model/vgg__feature_extractor/sequential/conv2d_1/BiasAddBiasAdd@model/vgg__feature_extractor/sequential/conv2d_1/Conv2D:output:0Omodel/vgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А║
4model/vgg__feature_extractor/sequential/re_lu_1/ReluReluAmodel/vgg__feature_extractor/sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         2А№
?model/vgg__feature_extractor/sequential/max_pooling2d_1/MaxPoolMaxPoolBmodel/vgg__feature_extractor/sequential/re_lu_1/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
р
Fmodel/vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOpOmodel_vgg__feature_extractor_sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╛
7model/vgg__feature_extractor/sequential/conv2d_2/Conv2DConv2DHmodel/vgg__feature_extractor/sequential/max_pooling2d_1/MaxPool:output:0Nmodel/vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╒
Gmodel/vgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpPmodel_vgg__feature_extractor_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0С
8model/vgg__feature_extractor/sequential/conv2d_2/BiasAddBiasAdd@model/vgg__feature_extractor/sequential/conv2d_2/Conv2D:output:0Omodel/vgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А║
4model/vgg__feature_extractor/sequential/re_lu_2/ReluReluAmodel/vgg__feature_extractor/sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         Ар
Fmodel/vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOpOmodel_vgg__feature_extractor_sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╕
7model/vgg__feature_extractor/sequential/conv2d_3/Conv2DConv2DBmodel/vgg__feature_extractor/sequential/re_lu_2/Relu:activations:0Nmodel/vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╒
Gmodel/vgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpPmodel_vgg__feature_extractor_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0С
8model/vgg__feature_extractor/sequential/conv2d_3/BiasAddBiasAdd@model/vgg__feature_extractor/sequential/conv2d_3/Conv2D:output:0Omodel/vgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А║
4model/vgg__feature_extractor/sequential/re_lu_3/ReluReluAmodel/vgg__feature_extractor/sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         А№
?model/vgg__feature_extractor/sequential/max_pooling2d_2/MaxPoolMaxPoolBmodel/vgg__feature_extractor/sequential/re_lu_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
р
Fmodel/vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOpOmodel_vgg__feature_extractor_sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╛
7model/vgg__feature_extractor/sequential/conv2d_4/Conv2DConv2DHmodel/vgg__feature_extractor/sequential/max_pooling2d_2/MaxPool:output:0Nmodel/vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
█
Jmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOpReadVariableOpSmodel_vgg__feature_extractor_sequential_batch_normalization_readvariableop_resource*
_output_shapes	
:А*
dtype0▀
Lmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1ReadVariableOpUmodel_vgg__feature_extractor_sequential_batch_normalization_readvariableop_1_resource*
_output_shapes	
:А*
dtype0¤
[model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpdmodel_vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Б
]model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpfmodel_vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0б
Lmodel/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3@model/vgg__feature_extractor/sequential/conv2d_4/Conv2D:output:0Rmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp:value:0Tmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1:value:0cmodel/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0emodel/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ╔
4model/vgg__feature_extractor/sequential/re_lu_4/ReluReluPmodel/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         Ар
Fmodel/vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOpOmodel_vgg__feature_extractor_sequential_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╕
7model/vgg__feature_extractor/sequential/conv2d_5/Conv2DConv2DBmodel/vgg__feature_extractor/sequential/re_lu_4/Relu:activations:0Nmodel/vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
▀
Lmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpReadVariableOpUmodel_vgg__feature_extractor_sequential_batch_normalization_1_readvariableop_resource*
_output_shapes	
:А*
dtype0у
Nmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOpWmodel_vgg__feature_extractor_sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Б
]model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpfmodel_vgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Е
_model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOphmodel_vgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0л
Nmodel/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3@model/vgg__feature_extractor/sequential/conv2d_5/Conv2D:output:0Tmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp:value:0Vmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1:value:0emodel/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0gmodel/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ╦
4model/vgg__feature_extractor/sequential/re_lu_5/ReluReluRmodel/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А№
?model/vgg__feature_extractor/sequential/max_pooling2d_3/MaxPoolMaxPoolBmodel/vgg__feature_extractor/sequential/re_lu_5/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
р
Fmodel/vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOpReadVariableOpOmodel_vgg__feature_extractor_sequential_conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┐
7model/vgg__feature_extractor/sequential/conv2d_6/Conv2DConv2DHmodel/vgg__feature_extractor/sequential/max_pooling2d_3/MaxPool:output:0Nmodel/vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
╒
Gmodel/vgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpReadVariableOpPmodel_vgg__feature_extractor_sequential_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0С
8model/vgg__feature_extractor/sequential/conv2d_6/BiasAddBiasAdd@model/vgg__feature_extractor/sequential/conv2d_6/Conv2D:output:0Omodel/vgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А║
4model/vgg__feature_extractor/sequential/re_lu_6/ReluReluAmodel/vgg__feature_extractor/sequential/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         Аm
model/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             ║
model/transpose	TransposeBmodel/vgg__feature_extractor/sequential/re_lu_6/Relu:activations:0model/transpose/perm:output:0*
T0*0
_output_shapes
:         Аr
0model/adaptive_average_pooling2d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╥
&model/adaptive_average_pooling2d/splitSplit9model/adaptive_average_pooling2d/split/split_dim:output:0model/transpose:y:0*
T0*╢
_output_shapesг
а:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А*
	num_splitи

&model/adaptive_average_pooling2d/stackPack/model/adaptive_average_pooling2d/split:output:0/model/adaptive_average_pooling2d/split:output:1/model/adaptive_average_pooling2d/split:output:2/model/adaptive_average_pooling2d/split:output:3/model/adaptive_average_pooling2d/split:output:4/model/adaptive_average_pooling2d/split:output:5/model/adaptive_average_pooling2d/split:output:6/model/adaptive_average_pooling2d/split:output:7/model/adaptive_average_pooling2d/split:output:8/model/adaptive_average_pooling2d/split:output:90model/adaptive_average_pooling2d/split:output:100model/adaptive_average_pooling2d/split:output:110model/adaptive_average_pooling2d/split:output:120model/adaptive_average_pooling2d/split:output:130model/adaptive_average_pooling2d/split:output:140model/adaptive_average_pooling2d/split:output:150model/adaptive_average_pooling2d/split:output:160model/adaptive_average_pooling2d/split:output:170model/adaptive_average_pooling2d/split:output:180model/adaptive_average_pooling2d/split:output:190model/adaptive_average_pooling2d/split:output:200model/adaptive_average_pooling2d/split:output:210model/adaptive_average_pooling2d/split:output:220model/adaptive_average_pooling2d/split:output:23*
N*
T0*4
_output_shapes"
 :         А*

axist
2model/adaptive_average_pooling2d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
(model/adaptive_average_pooling2d/split_1Split;model/adaptive_average_pooling2d/split_1/split_dim:output:0/model/adaptive_average_pooling2d/stack:output:0*
T0*4
_output_shapes"
 :         А*
	num_split╗
(model/adaptive_average_pooling2d/stack_1Pack1model/adaptive_average_pooling2d/split_1:output:0*
N*
T0*8
_output_shapes&
$:"         А*

axisИ
7model/adaptive_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      ▌
%model/adaptive_average_pooling2d/MeanMean1model/adaptive_average_pooling2d/stack_1:output:0@model/adaptive_average_pooling2d/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:         АЦ
model/SqueezeSqueeze.model/adaptive_average_pooling2d/Mean:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
У
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0d
model/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
model/dense/Tensordot/ShapeShapemodel/Squeeze:output:0*
T0*
_output_shapes
:e
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
%model/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
model/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Т
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: g
model/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: c
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╠
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Э
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:в
model/dense/Tensordot/transpose	Transposemodel/Squeeze:output:0%model/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:         Ао
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  о
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:e
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:з
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         К
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         o
IdentityIdentitymodel/dense/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         ╗
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp\^model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp^^model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1K^model/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOpM^model/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1^^model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp`^model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1M^model/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpO^model/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1F^model/vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOpE^model/vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpH^model/vgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpG^model/vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpH^model/vgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpG^model/vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpH^model/vgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpG^model/vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpG^model/vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpG^model/vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpH^model/vgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpG^model/vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:          d:         : : : : : : : : : : : : : : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2║
[model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp[model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2╛
]model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1]model/vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12Ш
Jmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOpJmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp2Ь
Lmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1Lmodel/vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_12╛
]model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp]model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2┬
_model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1_model/vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12Ь
Lmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpLmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp2а
Nmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1Nmodel/vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_12О
Emodel/vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOpEmodel/vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp2М
Dmodel/vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpDmodel/vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOp2Т
Gmodel/vgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpGmodel/vgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOp2Р
Fmodel/vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpFmodel/vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOp2Т
Gmodel/vgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpGmodel/vgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOp2Р
Fmodel/vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpFmodel/vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOp2Т
Gmodel/vgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpGmodel/vgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOp2Р
Fmodel/vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpFmodel/vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOp2Р
Fmodel/vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpFmodel/vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOp2Р
Fmodel/vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpFmodel/vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOp2Т
Gmodel/vgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpGmodel/vgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOp2Р
Fmodel/vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOpFmodel/vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp:W S
/
_output_shapes
:          d
 
_user_specified_nameargs_0:OK
'
_output_shapes
:         
 
_user_specified_nameargs_1
╚
G
+__inference_re_lu_2_layer_call_fn_314959048

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_314956699i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ы
┼
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314959168

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
▀
г
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314956569

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
цW
╓
%__inference__traced_restore_314959469
file_prefix6
#assignvariableop_model_dense_kernel:	А1
#assignvariableop_1_model_dense_bias::
 assignvariableop_2_conv2d_kernel:@,
assignvariableop_3_conv2d_bias:@=
"assignvariableop_4_conv2d_1_kernel:@А/
 assignvariableop_5_conv2d_1_bias:	А>
"assignvariableop_6_conv2d_2_kernel:АА/
 assignvariableop_7_conv2d_2_bias:	А>
"assignvariableop_8_conv2d_3_kernel:АА/
 assignvariableop_9_conv2d_3_bias:	А?
#assignvariableop_10_conv2d_4_kernel:АА<
-assignvariableop_11_batch_normalization_gamma:	А;
,assignvariableop_12_batch_normalization_beta:	АB
3assignvariableop_13_batch_normalization_moving_mean:	АF
7assignvariableop_14_batch_normalization_moving_variance:	А?
#assignvariableop_15_conv2d_5_kernel:АА>
/assignvariableop_16_batch_normalization_1_gamma:	А=
.assignvariableop_17_batch_normalization_1_beta:	АD
5assignvariableop_18_batch_normalization_1_moving_mean:	АH
9assignvariableop_19_batch_normalization_1_moving_variance:	А?
#assignvariableop_20_conv2d_6_kernel:АА0
!assignvariableop_21_conv2d_6_bias:	А
identity_23ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9С
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╖
valueнBкB,Prediction/kernel/.ATTRIBUTES/VARIABLE_VALUEB*Prediction/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЮ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B С
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOpAssignVariableOp#assignvariableop_model_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_1AssignVariableOp#assignvariableop_1_model_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv2d_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2d_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_11AssignVariableOp-assignvariableop_11_batch_normalization_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_12AssignVariableOp,assignvariableop_12_batch_normalization_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_13AssignVariableOp3assignvariableop_13_batch_normalization_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_14AssignVariableOp7assignvariableop_14_batch_normalization_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv2d_5_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_1_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_17AssignVariableOp.assignvariableop_17_batch_normalization_1_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_18AssignVariableOp5assignvariableop_18_batch_normalization_1_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_19AssignVariableOp9assignvariableop_19_batch_normalization_1_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_20AssignVariableOp#assignvariableop_20_conv2d_6_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_21AssignVariableOp!assignvariableop_21_conv2d_6_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 │
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: а
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
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
ю
b
F__inference_re_lu_1_layer_call_and_return_conditional_losses_314959014

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         2Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         2А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         2А:X T
0
_output_shapes
:         2А
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_3_layer_call_and_return_conditional_losses_314959082

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
├
╘
:__inference_vgg__feature_extractor_layer_call_fn_314958416
x!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957331x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:          d

_user_specified_nameX
Ь"
з

D__inference_model_layer_call_and_return_conditional_losses_314957771
x
text:
 vgg__feature_extractor_314957653:@.
 vgg__feature_extractor_314957655:@;
 vgg__feature_extractor_314957657:@А/
 vgg__feature_extractor_314957659:	А<
 vgg__feature_extractor_314957661:АА/
 vgg__feature_extractor_314957663:	А<
 vgg__feature_extractor_314957665:АА/
 vgg__feature_extractor_314957667:	А<
 vgg__feature_extractor_314957669:АА/
 vgg__feature_extractor_314957671:	А/
 vgg__feature_extractor_314957673:	А/
 vgg__feature_extractor_314957675:	А/
 vgg__feature_extractor_314957677:	А<
 vgg__feature_extractor_314957679:АА/
 vgg__feature_extractor_314957681:	А/
 vgg__feature_extractor_314957683:	А/
 vgg__feature_extractor_314957685:	А/
 vgg__feature_extractor_314957687:	А<
 vgg__feature_extractor_314957689:АА/
 vgg__feature_extractor_314957691:	А"
dense_314957765:	А
dense_314957767:
identityИвdense/StatefulPartitionedCallв.vgg__feature_extractor/StatefulPartitionedCall└
.vgg__feature_extractor/StatefulPartitionedCallStatefulPartitionedCallx vgg__feature_extractor_314957653 vgg__feature_extractor_314957655 vgg__feature_extractor_314957657 vgg__feature_extractor_314957659 vgg__feature_extractor_314957661 vgg__feature_extractor_314957663 vgg__feature_extractor_314957665 vgg__feature_extractor_314957667 vgg__feature_extractor_314957669 vgg__feature_extractor_314957671 vgg__feature_extractor_314957673 vgg__feature_extractor_314957675 vgg__feature_extractor_314957677 vgg__feature_extractor_314957679 vgg__feature_extractor_314957681 vgg__feature_extractor_314957683 vgg__feature_extractor_314957685 vgg__feature_extractor_314957687 vgg__feature_extractor_314957689 vgg__feature_extractor_314957691* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957331g
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             г
	transpose	Transpose7vgg__feature_extractor/StatefulPartitionedCall:output:0transpose/perm:output:0*
T0*0
_output_shapes
:         АЄ
*adaptive_average_pooling2d/PartitionedCallPartitionedCalltranspose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *b
f]R[
Y__inference_adaptive_average_pooling2d_layer_call_and_return_conditional_losses_314957731Х
SqueezeSqueeze3adaptive_average_pooling2d/PartitionedCall:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
■
dense/StatefulPartitionedCallStatefulPartitionedCallSqueeze:output:0dense_314957765dense_314957767*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_314957764y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         Ч
NoOpNoOp^dense/StatefulPartitionedCall/^vgg__feature_extractor/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:          d:         : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.vgg__feature_extractor/StatefulPartitionedCall.vgg__feature_extractor/StatefulPartitionedCall:R N
/
_output_shapes
:          d

_user_specified_nameX:MI
'
_output_shapes
:         

_user_specified_nametext
ш
`
D__inference_re_lu_layer_call_and_return_conditional_losses_314958975

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:          d@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:          d@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          d@:W S
/
_output_shapes
:          d@
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_314956456

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ўn
╣
I__inference_sequential_layer_call_and_return_conditional_losses_314958946

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@А7
(conv2d_1_biasadd_readvariableop_resource:	АC
'conv2d_2_conv2d_readvariableop_resource:АА7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА:
+batch_normalization_readvariableop_resource:	А<
-batch_normalization_readvariableop_1_resource:	АK
<batch_normalization_fusedbatchnormv3_readvariableop_resource:	АM
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_5_conv2d_readvariableop_resource:АА<
-batch_normalization_1_readvariableop_resource:	А>
/batch_normalization_1_readvariableop_1_resource:	АM
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_6_conv2d_readvariableop_resource:АА7
(conv2d_6_biasadd_readvariableop_resource:	А
identityИв"batch_normalization/AssignNewValueв$batch_normalization/AssignNewValue_1в3batch_normalization/FusedBatchNormV3/ReadVariableOpв5batch_normalization/FusedBatchNormV3/ReadVariableOp_1в"batch_normalization/ReadVariableOpв$batch_normalization/ReadVariableOp_1в$batch_normalization_1/AssignNewValueв&batch_normalization_1/AssignNewValue_1в5batch_normalization_1/FusedBatchNormV3/ReadVariableOpв7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_1/ReadVariableOpв&batch_normalization_1/ReadVariableOp_1вconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOpвconv2d_6/BiasAdd/ReadVariableOpвconv2d_6/Conv2D/ReadVariableOpК
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0з
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@*
paddingSAME*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Т
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@e

re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:          d@з
max_pooling2d/MaxPoolMaxPoolre_lu/Relu:activations:0*/
_output_shapes
:         2@*
ksize
*
paddingVALID*
strides
П
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0─
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А*
paddingSAME*
strides
Е
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2Аj
re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         2Ам
max_pooling2d_1/MaxPoolMaxPoolre_lu_1/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Р
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╞
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аj
re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0└
conv2d_3/Conv2DConv2Dre_lu_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аj
re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         Ам
max_pooling2d_2/MaxPoolMaxPoolre_lu_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Р
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╞
conv2d_4/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Л
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes	
:А*
dtype0П
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes	
:А*
dtype0н
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0┐
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_4/Conv2D:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<А
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0К
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0y
re_lu_4/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         АР
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0└
conv2d_5/Conv2DConv2Dre_lu_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
П
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╔
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_5/Conv2D:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<И
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0Т
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0{
re_lu_5/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         Ам
max_pooling2d_3/MaxPoolMaxPoolre_lu_5/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Р
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╟
conv2d_6/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Е
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аj
re_lu_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         Аr
IdentityIdentityre_lu_6/Relu:activations:0^NoOp*
T0*0
_output_shapes
:         Аы
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:W S
/
_output_shapes
:          d
 
_user_specified_nameinputs
ў
г
,__inference_conv2d_1_layer_call_fn_314958994

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_314956664x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         2А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         2@
 
_user_specified_nameinputs
╚
G
+__inference_re_lu_4_layer_call_fn_314959173

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_314956750i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╡

Г
G__inference_conv2d_3_layer_call_and_return_conditional_losses_314956711

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
и

■
E__inference_conv2d_layer_call_and_return_conditional_losses_314956640

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:          d@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          d
 
_user_specified_nameinputs
в	
╪
9__inference_batch_normalization_1_layer_call_fn_314959205

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314956569К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
й
║
G__inference_conv2d_4_layer_call_and_return_conditional_losses_314959106

inputs:
conv2d_readvariableop_resource:АА
identityИвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
g
IdentityIdentityConv2D:output:0^NoOp*
T0*0
_output_shapes
:         А^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         А: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_4_layer_call_and_return_conditional_losses_314959178

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ц
j
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_314956468

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▒

В
G__inference_conv2d_1_layer_call_and_return_conditional_losses_314956664

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         2Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2@
 
_user_specified_nameinputs
┐
╘
:__inference_vgg__feature_extractor_layer_call_fn_314958461
x!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957466x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:          d

_user_specified_nameX
║
═
.__inference_sequential_layer_call_fn_314958743

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_layer_call_and_return_conditional_losses_314956804x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          d
 
_user_specified_nameinputs
╨
№
D__inference_dense_layer_call_and_return_conditional_losses_314958698

inputs4
!tensordot_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
я
Я
*__inference_conv2d_layer_call_fn_314958955

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_layer_call_and_return_conditional_losses_314956640w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          d@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          d: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          d
 
_user_specified_nameinputs
┴
O
3__inference_max_pooling2d_2_layer_call_fn_314959087

inputs
identity▀
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_314956480Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_6_layer_call_and_return_conditional_losses_314956801

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ю	
╓
7__inference_batch_normalization_layer_call_fn_314959119

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314956505К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
у
Ж
)__inference_model_layer_call_fn_314957989
x
text!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallxtextunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_314957771s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:          d:         : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:          d

_user_specified_nameX:MI
'
_output_shapes
:         

_user_specified_nametext
ю
Z
>__inference_adaptive_average_pooling2d_layer_call_fn_314958624

inputs
identity╨
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *b
f]R[
Y__inference_adaptive_average_pooling2d_layer_call_and_return_conditional_losses_314957731i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
а	
╪
9__inference_batch_normalization_1_layer_call_fn_314959218

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314956600К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
й
║
G__inference_conv2d_5_layer_call_and_return_conditional_losses_314956759

inputs:
conv2d_readvariableop_resource:АА
identityИвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
g
IdentityIdentityConv2D:output:0^NoOp*
T0*0
_output_shapes
:         А^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         А: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╤
┌
:__inference_vgg__feature_extractor_layer_call_fn_314957554
input_1!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957466x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:          d
!
_user_specified_name	input_1
╚
╙
.__inference_sequential_layer_call_fn_314957154
conv2d_input!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_layer_call_and_return_conditional_losses_314957066x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:          d
&
_user_specified_nameconv2d_input
СT
и

I__inference_sequential_layer_call_and_return_conditional_losses_314957066

inputs*
conv2d_314957005:@
conv2d_314957007:@-
conv2d_1_314957012:@А!
conv2d_1_314957014:	А.
conv2d_2_314957019:АА!
conv2d_2_314957021:	А.
conv2d_3_314957025:АА!
conv2d_3_314957027:	А.
conv2d_4_314957032:АА,
batch_normalization_314957035:	А,
batch_normalization_314957037:	А,
batch_normalization_314957039:	А,
batch_normalization_314957041:	А.
conv2d_5_314957045:АА.
batch_normalization_1_314957048:	А.
batch_normalization_1_314957050:	А.
batch_normalization_1_314957052:	А.
batch_normalization_1_314957054:	А.
conv2d_6_314957059:АА!
conv2d_6_314957061:	А
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCall№
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_314957005conv2d_314957007*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_layer_call_and_return_conditional_losses_314956640с
re_lu/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_re_lu_layer_call_and_return_conditional_losses_314956651ш
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_314956456е
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_314957012conv2d_1_314957014*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_314956664ш
re_lu_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_314956675я
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_314956468з
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_314957019conv2d_2_314957021*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_314956688ш
re_lu_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_314956699Я
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0conv2d_3_314957025conv2d_3_314957027*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_314956711ш
re_lu_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_314956722я
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_314956480С
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_314957032*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_314956732Ф
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_314957035batch_normalization_314957037batch_normalization_314957039batch_normalization_314957041*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314956536є
re_lu_4/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_314956750Й
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall re_lu_4/PartitionedCall:output:0conv2d_5_314957045*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_314956759а
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_1_314957048batch_normalization_1_314957050batch_normalization_1_314957052batch_normalization_1_314957054*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314956600ї
re_lu_5/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_5_layer_call_and_return_conditional_losses_314956777я
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_314956620з
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_6_314957059conv2d_6_314957061*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_6_layer_call_and_return_conditional_losses_314956790ш
re_lu_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_6_layer_call_and_return_conditional_losses_314956801x
IdentityIdentity re_lu_6/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         АЧ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:W S
/
_output_shapes
:          d
 
_user_specified_nameinputs
┴
O
3__inference_max_pooling2d_1_layer_call_fn_314959019

inputs
identity▀
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_314956468Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╚
G
+__inference_re_lu_3_layer_call_fn_314959077

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_314956722i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
·
д
,__inference_conv2d_3_layer_call_fn_314959062

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_314956711x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▒

В
G__inference_conv2d_1_layer_call_and_return_conditional_losses_314959004

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         2Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2@
 
_user_specified_nameinputs
═
╒
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957644
input_1.
sequential_314957602:@"
sequential_314957604:@/
sequential_314957606:@А#
sequential_314957608:	А0
sequential_314957610:АА#
sequential_314957612:	А0
sequential_314957614:АА#
sequential_314957616:	А0
sequential_314957618:АА#
sequential_314957620:	А#
sequential_314957622:	А#
sequential_314957624:	А#
sequential_314957626:	А0
sequential_314957628:АА#
sequential_314957630:	А#
sequential_314957632:	А#
sequential_314957634:	А#
sequential_314957636:	А0
sequential_314957638:АА#
sequential_314957640:	А
identityИв"sequential/StatefulPartitionedCall║
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_314957602sequential_314957604sequential_314957606sequential_314957608sequential_314957610sequential_314957612sequential_314957614sequential_314957616sequential_314957618sequential_314957620sequential_314957622sequential_314957624sequential_314957626sequential_314957628sequential_314957630sequential_314957632sequential_314957634sequential_314957636sequential_314957638sequential_314957640* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_layer_call_and_return_conditional_losses_314957066Г
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         Аk
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:X T
/
_output_shapes
:          d
!
_user_specified_name	input_1
║
u
Y__inference_adaptive_average_pooling2d_layer_call_and_return_conditional_losses_314958659

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Г
splitSplitsplit/split_dim:output:0inputs*
T0*╢
_output_shapesг
а:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А*
	num_splitя
stackPacksplit:output:0split:output:1split:output:2split:output:3split:output:4split:output:5split:output:6split:output:7split:output:8split:output:9split:output:10split:output:11split:output:12split:output:13split:output:14split:output:15split:output:16split:output:17split:output:18split:output:19split:output:20split:output:21split:output:22split:output:23*
N*
T0*4
_output_shapes"
 :         А*

axisS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0stack:output:0*
T0*4
_output_shapes"
 :         А*
	num_splity
stack_1Packsplit_1:output:0*
N*
T0*8
_output_shapes&
$:"         А*

axisg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      z
MeanMeanstack_1:output:0Mean/reduction_indices:output:0*
T0*0
_output_shapes
:         А^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╚
G
+__inference_re_lu_1_layer_call_fn_314959009

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_314956675i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         2А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         2А:X T
0
_output_shapes
:         2А
 
_user_specified_nameinputs
╜
M
1__inference_max_pooling2d_layer_call_fn_314958980

inputs
identity▌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_314956456Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╤
К
,__inference_conv2d_5_layer_call_fn_314959185

inputs#
unknown:АА
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_314956759x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         А: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_5_layer_call_and_return_conditional_losses_314959264

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╤
К
,__inference_conv2d_4_layer_call_fn_314959099

inputs#
unknown:АА
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_314956732x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         А: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
э
╟
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314959254

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_1_layer_call_and_return_conditional_losses_314956675

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         2Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         2А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         2А:X T
0
_output_shapes
:         2А
 
_user_specified_nameinputs
╚
G
+__inference_re_lu_6_layer_call_fn_314959298

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_6_layer_call_and_return_conditional_losses_314956801i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╡

Г
G__inference_conv2d_2_layer_call_and_return_conditional_losses_314959043

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▀
г
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314959236

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
·
д
,__inference_conv2d_6_layer_call_fn_314959283

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_6_layer_call_and_return_conditional_losses_314956790x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╠
╙
.__inference_sequential_layer_call_fn_314956847
conv2d_input!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_layer_call_and_return_conditional_losses_314956804x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:          d
&
_user_specified_nameconv2d_input
└
E
)__inference_re_lu_layer_call_fn_314958970

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_re_lu_layer_call_and_return_conditional_losses_314956651h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:          d@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          d@:W S
/
_output_shapes
:          d@
 
_user_specified_nameinputs
·
д
,__inference_conv2d_2_layer_call_fn_314959033

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_314956688x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_5_layer_call_and_return_conditional_losses_314956777

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
и

■
E__inference_conv2d_layer_call_and_return_conditional_losses_314958965

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:          d@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          d
 
_user_specified_nameinputs
┴
O
3__inference_max_pooling2d_3_layer_call_fn_314959269

inputs
identity▀
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_314956620Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╗
╧
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957466
x.
sequential_314957424:@"
sequential_314957426:@/
sequential_314957428:@А#
sequential_314957430:	А0
sequential_314957432:АА#
sequential_314957434:	А0
sequential_314957436:АА#
sequential_314957438:	А0
sequential_314957440:АА#
sequential_314957442:	А#
sequential_314957444:	А#
sequential_314957446:	А#
sequential_314957448:	А0
sequential_314957450:АА#
sequential_314957452:	А#
sequential_314957454:	А#
sequential_314957456:	А#
sequential_314957458:	А0
sequential_314957460:АА#
sequential_314957462:	А
identityИв"sequential/StatefulPartitionedCall┤
"sequential/StatefulPartitionedCallStatefulPartitionedCallxsequential_314957424sequential_314957426sequential_314957428sequential_314957430sequential_314957432sequential_314957434sequential_314957436sequential_314957438sequential_314957440sequential_314957442sequential_314957444sequential_314957446sequential_314957448sequential_314957450sequential_314957452sequential_314957454sequential_314957456sequential_314957458sequential_314957460sequential_314957462* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_layer_call_and_return_conditional_losses_314957066Г
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         Аk
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:R N
/
_output_shapes
:          d

_user_specified_nameX
й
║
G__inference_conv2d_5_layer_call_and_return_conditional_losses_314959192

inputs:
conv2d_readvariableop_resource:АА
identityИвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
g
IdentityIdentityConv2D:output:0^NoOp*
T0*0
_output_shapes
:         А^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         А: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▀
Ж
)__inference_model_layer_call_fn_314958039
x
text!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallxtextunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_314957892s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:          d:         : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:          d

_user_specified_nameX:MI
'
_output_shapes
:         

_user_specified_nametext
╒
┌
:__inference_vgg__feature_extractor_layer_call_fn_314957374
input_1!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957331x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:          d
!
_user_specified_name	input_1
╢

Г
G__inference_conv2d_6_layer_call_and_return_conditional_losses_314959293

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_314958985

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ХT
и

I__inference_sequential_layer_call_and_return_conditional_losses_314956804

inputs*
conv2d_314956641:@
conv2d_314956643:@-
conv2d_1_314956665:@А!
conv2d_1_314956667:	А.
conv2d_2_314956689:АА!
conv2d_2_314956691:	А.
conv2d_3_314956712:АА!
conv2d_3_314956714:	А.
conv2d_4_314956733:АА,
batch_normalization_314956736:	А,
batch_normalization_314956738:	А,
batch_normalization_314956740:	А,
batch_normalization_314956742:	А.
conv2d_5_314956760:АА.
batch_normalization_1_314956763:	А.
batch_normalization_1_314956765:	А.
batch_normalization_1_314956767:	А.
batch_normalization_1_314956769:	А.
conv2d_6_314956791:АА!
conv2d_6_314956793:	А
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCall№
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_314956641conv2d_314956643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_layer_call_and_return_conditional_losses_314956640с
re_lu/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_re_lu_layer_call_and_return_conditional_losses_314956651ш
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_314956456е
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_314956665conv2d_1_314956667*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_314956664ш
re_lu_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_314956675я
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_314956468з
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_314956689conv2d_2_314956691*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_314956688ш
re_lu_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_314956699Я
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0conv2d_3_314956712conv2d_3_314956714*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_314956711ш
re_lu_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_314956722я
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_314956480С
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_314956733*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_314956732Ц
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_314956736batch_normalization_314956738batch_normalization_314956740batch_normalization_314956742*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314956505є
re_lu_4/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_314956750Й
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall re_lu_4/PartitionedCall:output:0conv2d_5_314956760*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_314956759в
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_1_314956763batch_normalization_1_314956765batch_normalization_1_314956767batch_normalization_1_314956769*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314956569ї
re_lu_5/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_5_layer_call_and_return_conditional_losses_314956777я
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_314956620з
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_6_314956791conv2d_6_314956793*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_6_layer_call_and_return_conditional_losses_314956790ш
re_lu_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_6_layer_call_and_return_conditional_losses_314956801x
IdentityIdentity re_lu_6/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         АЧ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:W S
/
_output_shapes
:          d
 
_user_specified_nameinputs
╓
Л
'__inference_signature_wrapper_314958371

args_0

args_1!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallargs_0args_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference__wrapped_model_314956447s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:          d:         : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          d
 
_user_specified_nameargs_0:OK
'
_output_shapes
:         
 
_user_specified_nameargs_1
╚s
▄
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314958540
xJ
0sequential_conv2d_conv2d_readvariableop_resource:@?
1sequential_conv2d_biasadd_readvariableop_resource:@M
2sequential_conv2d_1_conv2d_readvariableop_resource:@АB
3sequential_conv2d_1_biasadd_readvariableop_resource:	АN
2sequential_conv2d_2_conv2d_readvariableop_resource:ААB
3sequential_conv2d_2_biasadd_readvariableop_resource:	АN
2sequential_conv2d_3_conv2d_readvariableop_resource:ААB
3sequential_conv2d_3_biasadd_readvariableop_resource:	АN
2sequential_conv2d_4_conv2d_readvariableop_resource:ААE
6sequential_batch_normalization_readvariableop_resource:	АG
8sequential_batch_normalization_readvariableop_1_resource:	АV
Gsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource:	АX
Isequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:	АN
2sequential_conv2d_5_conv2d_readvariableop_resource:ААG
8sequential_batch_normalization_1_readvariableop_resource:	АI
:sequential_batch_normalization_1_readvariableop_1_resource:	АX
Isequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	АZ
Ksequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	АN
2sequential_conv2d_6_conv2d_readvariableop_resource:ААB
3sequential_conv2d_6_biasadd_readvariableop_resource:	А
identityИв>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpв@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1в-sequential/batch_normalization/ReadVariableOpв/sequential/batch_normalization/ReadVariableOp_1в@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвBsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в/sequential/batch_normalization_1/ReadVariableOpв1sequential/batch_normalization_1/ReadVariableOp_1в(sequential/conv2d/BiasAdd/ReadVariableOpв'sequential/conv2d/Conv2D/ReadVariableOpв*sequential/conv2d_1/BiasAdd/ReadVariableOpв)sequential/conv2d_1/Conv2D/ReadVariableOpв*sequential/conv2d_2/BiasAdd/ReadVariableOpв)sequential/conv2d_2/Conv2D/ReadVariableOpв*sequential/conv2d_3/BiasAdd/ReadVariableOpв)sequential/conv2d_3/Conv2D/ReadVariableOpв)sequential/conv2d_4/Conv2D/ReadVariableOpв)sequential/conv2d_5/Conv2D/ReadVariableOpв*sequential/conv2d_6/BiasAdd/ReadVariableOpв)sequential/conv2d_6/Conv2D/ReadVariableOpа
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╕
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@*
paddingSAME*
strides
Ц
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0│
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@{
sequential/re_lu/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:          d@╜
 sequential/max_pooling2d/MaxPoolMaxPool#sequential/re_lu/Relu:activations:0*/
_output_shapes
:         2@*
ksize
*
paddingVALID*
strides
е
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0х
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А*
paddingSAME*
strides
Ы
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2АА
sequential/re_lu_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         2А┬
"sequential/max_pooling2d_1/MaxPoolMaxPool%sequential/re_lu_1/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ч
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АА
sequential/re_lu_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0с
sequential/conv2d_3/Conv2DConv2D%sequential/re_lu_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АА
sequential/re_lu_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         А┬
"sequential/max_pooling2d_2/MaxPoolMaxPool%sequential/re_lu_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ч
sequential/conv2d_4/Conv2DConv2D+sequential/max_pooling2d_2/MaxPool:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
б
-sequential/batch_normalization/ReadVariableOpReadVariableOp6sequential_batch_normalization_readvariableop_resource*
_output_shapes	
:А*
dtype0е
/sequential/batch_normalization/ReadVariableOp_1ReadVariableOp8sequential_batch_normalization_readvariableop_1_resource*
_output_shapes	
:А*
dtype0├
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpGsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╟
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIsequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0є
/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3#sequential/conv2d_4/Conv2D:output:05sequential/batch_normalization/ReadVariableOp:value:07sequential/batch_normalization/ReadVariableOp_1:value:0Fsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Hsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( П
sequential/re_lu_4/ReluRelu3sequential/batch_normalization/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         Аж
)sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0с
sequential/conv2d_5/Conv2DConv2D%sequential/re_lu_4/Relu:activations:01sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
е
/sequential/batch_normalization_1/ReadVariableOpReadVariableOp8sequential_batch_normalization_1_readvariableop_resource*
_output_shapes	
:А*
dtype0й
1sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╟
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╦
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0¤
1sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3#sequential/conv2d_5/Conv2D:output:07sequential/batch_normalization_1/ReadVariableOp:value:09sequential/batch_normalization_1/ReadVariableOp_1:value:0Hsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( С
sequential/re_lu_5/ReluRelu5sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А┬
"sequential/max_pooling2d_3/MaxPoolMaxPool%sequential/re_lu_5/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)sequential/conv2d_6/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ш
sequential/conv2d_6/Conv2DConv2D+sequential/max_pooling2d_3/MaxPool:output:01sequential/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*sequential/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_6/BiasAddBiasAdd#sequential/conv2d_6/Conv2D:output:02sequential/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АА
sequential/re_lu_6/ReluRelu$sequential/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         А}
IdentityIdentity%sequential/re_lu_6/Relu:activations:0^NoOp*
T0*0
_output_shapes
:         Ал
NoOpNoOp?^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpA^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1.^sequential/batch_normalization/ReadVariableOp0^sequential/batch_normalization/ReadVariableOp_1A^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_1/ReadVariableOp2^sequential/batch_normalization_1/ReadVariableOp_1)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp*^sequential/conv2d_5/Conv2D/ReadVariableOp+^sequential/conv2d_6/BiasAdd/ReadVariableOp*^sequential/conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2А
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2Д
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12^
-sequential/batch_normalization/ReadVariableOp-sequential/batch_normalization/ReadVariableOp2b
/sequential/batch_normalization/ReadVariableOp_1/sequential/batch_normalization/ReadVariableOp_12Д
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2И
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_1/ReadVariableOp/sequential/batch_normalization_1/ReadVariableOp2f
1sequential/batch_normalization_1/ReadVariableOp_11sequential/batch_normalization_1/ReadVariableOp_12T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2V
)sequential/conv2d_5/Conv2D/ReadVariableOp)sequential/conv2d_5/Conv2D/ReadVariableOp2X
*sequential/conv2d_6/BiasAdd/ReadVariableOp*sequential/conv2d_6/BiasAdd/ReadVariableOp2V
)sequential/conv2d_6/Conv2D/ReadVariableOp)sequential/conv2d_6/Conv2D/ReadVariableOp:R N
/
_output_shapes
:          d

_user_specified_nameX
и╨
Ю
D__inference_model_layer_call_and_return_conditional_losses_314958179
x
texta
Gvgg__feature_extractor_sequential_conv2d_conv2d_readvariableop_resource:@V
Hvgg__feature_extractor_sequential_conv2d_biasadd_readvariableop_resource:@d
Ivgg__feature_extractor_sequential_conv2d_1_conv2d_readvariableop_resource:@АY
Jvgg__feature_extractor_sequential_conv2d_1_biasadd_readvariableop_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_2_conv2d_readvariableop_resource:ААY
Jvgg__feature_extractor_sequential_conv2d_2_biasadd_readvariableop_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_3_conv2d_readvariableop_resource:ААY
Jvgg__feature_extractor_sequential_conv2d_3_biasadd_readvariableop_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_4_conv2d_readvariableop_resource:АА\
Mvgg__feature_extractor_sequential_batch_normalization_readvariableop_resource:	А^
Ovgg__feature_extractor_sequential_batch_normalization_readvariableop_1_resource:	Аm
^vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_resource:	Аo
`vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_5_conv2d_readvariableop_resource:АА^
Ovgg__feature_extractor_sequential_batch_normalization_1_readvariableop_resource:	А`
Qvgg__feature_extractor_sequential_batch_normalization_1_readvariableop_1_resource:	Аo
`vgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	Аq
bvgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	Аe
Ivgg__feature_extractor_sequential_conv2d_6_conv2d_readvariableop_resource:ААY
Jvgg__feature_extractor_sequential_conv2d_6_biasadd_readvariableop_resource:	А:
'dense_tensordot_readvariableop_resource:	А3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/Tensordot/ReadVariableOpвUvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpвWvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1вDvgg__feature_extractor/sequential/batch_normalization/ReadVariableOpвFvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1вWvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвYvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1вFvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpвHvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1в?vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOpв>vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpвAvgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpвAvgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpвAvgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpвAvgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpв@vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp╬
>vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOpGvgg__feature_extractor_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ц
/vgg__feature_extractor/sequential/conv2d/Conv2DConv2DxFvgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@*
paddingSAME*
strides
─
?vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOpHvgg__feature_extractor_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0°
0vgg__feature_extractor/sequential/conv2d/BiasAddBiasAdd8vgg__feature_extractor/sequential/conv2d/Conv2D:output:0Gvgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          d@й
,vgg__feature_extractor/sequential/re_lu/ReluRelu9vgg__feature_extractor/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:          d@ы
7vgg__feature_extractor/sequential/max_pooling2d/MaxPoolMaxPool:vgg__feature_extractor/sequential/re_lu/Relu:activations:0*/
_output_shapes
:         2@*
ksize
*
paddingVALID*
strides
╙
@vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0к
1vgg__feature_extractor/sequential/conv2d_1/Conv2DConv2D@vgg__feature_extractor/sequential/max_pooling2d/MaxPool:output:0Hvgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2А*
paddingSAME*
strides
╔
Avgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpJvgg__feature_extractor_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0 
2vgg__feature_extractor/sequential/conv2d_1/BiasAddBiasAdd:vgg__feature_extractor/sequential/conv2d_1/Conv2D:output:0Ivgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         2Ао
.vgg__feature_extractor/sequential/re_lu_1/ReluRelu;vgg__feature_extractor/sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         2АЁ
9vgg__feature_extractor/sequential/max_pooling2d_1/MaxPoolMaxPool<vgg__feature_extractor/sequential/re_lu_1/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╘
@vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0м
1vgg__feature_extractor/sequential/conv2d_2/Conv2DConv2DBvgg__feature_extractor/sequential/max_pooling2d_1/MaxPool:output:0Hvgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╔
Avgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpJvgg__feature_extractor_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0 
2vgg__feature_extractor/sequential/conv2d_2/BiasAddBiasAdd:vgg__feature_extractor/sequential/conv2d_2/Conv2D:output:0Ivgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ао
.vgg__feature_extractor/sequential/re_lu_2/ReluRelu;vgg__feature_extractor/sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         А╘
@vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ж
1vgg__feature_extractor/sequential/conv2d_3/Conv2DConv2D<vgg__feature_extractor/sequential/re_lu_2/Relu:activations:0Hvgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╔
Avgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpJvgg__feature_extractor_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0 
2vgg__feature_extractor/sequential/conv2d_3/BiasAddBiasAdd:vgg__feature_extractor/sequential/conv2d_3/Conv2D:output:0Ivgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ао
.vgg__feature_extractor/sequential/re_lu_3/ReluRelu;vgg__feature_extractor/sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         АЁ
9vgg__feature_extractor/sequential/max_pooling2d_2/MaxPoolMaxPool<vgg__feature_extractor/sequential/re_lu_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╘
@vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0м
1vgg__feature_extractor/sequential/conv2d_4/Conv2DConv2DBvgg__feature_extractor/sequential/max_pooling2d_2/MaxPool:output:0Hvgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╧
Dvgg__feature_extractor/sequential/batch_normalization/ReadVariableOpReadVariableOpMvgg__feature_extractor_sequential_batch_normalization_readvariableop_resource*
_output_shapes	
:А*
dtype0╙
Fvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1ReadVariableOpOvgg__feature_extractor_sequential_batch_normalization_readvariableop_1_resource*
_output_shapes	
:А*
dtype0ё
Uvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp^vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0ї
Wvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`vgg__feature_extractor_sequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0¤
Fvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3:vgg__feature_extractor/sequential/conv2d_4/Conv2D:output:0Lvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp:value:0Nvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1:value:0]vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0_vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ╜
.vgg__feature_extractor/sequential/re_lu_4/ReluReluJvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А╘
@vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ж
1vgg__feature_extractor/sequential/conv2d_5/Conv2DConv2D<vgg__feature_extractor/sequential/re_lu_4/Relu:activations:0Hvgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╙
Fvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpReadVariableOpOvgg__feature_extractor_sequential_batch_normalization_1_readvariableop_resource*
_output_shapes	
:А*
dtype0╫
Hvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOpQvgg__feature_extractor_sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:А*
dtype0ї
Wvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp`vgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0∙
Yvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpbvgg__feature_extractor_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0З
Hvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3:vgg__feature_extractor/sequential/conv2d_5/Conv2D:output:0Nvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp:value:0Pvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1:value:0_vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0avgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ┐
.vgg__feature_extractor/sequential/re_lu_5/ReluReluLvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         АЁ
9vgg__feature_extractor/sequential/max_pooling2d_3/MaxPoolMaxPool<vgg__feature_extractor/sequential/re_lu_5/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╘
@vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOpReadVariableOpIvgg__feature_extractor_sequential_conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0н
1vgg__feature_extractor/sequential/conv2d_6/Conv2DConv2DBvgg__feature_extractor/sequential/max_pooling2d_3/MaxPool:output:0Hvgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
╔
Avgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpReadVariableOpJvgg__feature_extractor_sequential_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0 
2vgg__feature_extractor/sequential/conv2d_6/BiasAddBiasAdd:vgg__feature_extractor/sequential/conv2d_6/Conv2D:output:0Ivgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ао
.vgg__feature_extractor/sequential/re_lu_6/ReluRelu;vgg__feature_extractor/sequential/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         Аg
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             и
	transpose	Transpose<vgg__feature_extractor/sequential/re_lu_6/Relu:activations:0transpose/perm:output:0*
T0*0
_output_shapes
:         Аl
*adaptive_average_pooling2d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :└
 adaptive_average_pooling2d/splitSplit3adaptive_average_pooling2d/split/split_dim:output:0transpose:y:0*
T0*╢
_output_shapesг
а:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А*
	num_splitТ	
 adaptive_average_pooling2d/stackPack)adaptive_average_pooling2d/split:output:0)adaptive_average_pooling2d/split:output:1)adaptive_average_pooling2d/split:output:2)adaptive_average_pooling2d/split:output:3)adaptive_average_pooling2d/split:output:4)adaptive_average_pooling2d/split:output:5)adaptive_average_pooling2d/split:output:6)adaptive_average_pooling2d/split:output:7)adaptive_average_pooling2d/split:output:8)adaptive_average_pooling2d/split:output:9*adaptive_average_pooling2d/split:output:10*adaptive_average_pooling2d/split:output:11*adaptive_average_pooling2d/split:output:12*adaptive_average_pooling2d/split:output:13*adaptive_average_pooling2d/split:output:14*adaptive_average_pooling2d/split:output:15*adaptive_average_pooling2d/split:output:16*adaptive_average_pooling2d/split:output:17*adaptive_average_pooling2d/split:output:18*adaptive_average_pooling2d/split:output:19*adaptive_average_pooling2d/split:output:20*adaptive_average_pooling2d/split:output:21*adaptive_average_pooling2d/split:output:22*adaptive_average_pooling2d/split:output:23*
N*
T0*4
_output_shapes"
 :         А*

axisn
,adaptive_average_pooling2d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▌
"adaptive_average_pooling2d/split_1Split5adaptive_average_pooling2d/split_1/split_dim:output:0)adaptive_average_pooling2d/stack:output:0*
T0*4
_output_shapes"
 :         А*
	num_splitп
"adaptive_average_pooling2d/stack_1Pack+adaptive_average_pooling2d/split_1:output:0*
N*
T0*8
_output_shapes&
$:"         А*

axisВ
1adaptive_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      ╦
adaptive_average_pooling2d/MeanMean+adaptive_average_pooling2d/stack_1:output:0:adaptive_average_pooling2d/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:         АК
SqueezeSqueeze(adaptive_average_pooling2d/Mean:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
З
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       U
dense/Tensordot/ShapeShapeSqueeze:output:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╙
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ┤
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Р
dense/Tensordot/transpose	TransposeSqueeze:output:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:         АЬ
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ь
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Х
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         i
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         ╖
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOpV^vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpX^vgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1E^vgg__feature_extractor/sequential/batch_normalization/ReadVariableOpG^vgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1X^vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpZ^vgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1G^vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpI^vgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1@^vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp?^vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOpB^vgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOpB^vgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOpB^vgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOpB^vgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpA^vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:          d:         : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2о
Uvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpUvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2▓
Wvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Wvgg__feature_extractor/sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12М
Dvgg__feature_extractor/sequential/batch_normalization/ReadVariableOpDvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp2Р
Fvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_1Fvgg__feature_extractor/sequential/batch_normalization/ReadVariableOp_12▓
Wvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpWvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2╢
Yvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Yvgg__feature_extractor/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12Р
Fvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOpFvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp2Ф
Hvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_1Hvgg__feature_extractor/sequential/batch_normalization_1/ReadVariableOp_12В
?vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp?vgg__feature_extractor/sequential/conv2d/BiasAdd/ReadVariableOp2А
>vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOp>vgg__feature_extractor/sequential/conv2d/Conv2D/ReadVariableOp2Ж
Avgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOpAvgg__feature_extractor/sequential/conv2d_1/BiasAdd/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_1/Conv2D/ReadVariableOp2Ж
Avgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOpAvgg__feature_extractor/sequential/conv2d_2/BiasAdd/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_2/Conv2D/ReadVariableOp2Ж
Avgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOpAvgg__feature_extractor/sequential/conv2d_3/BiasAdd/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_3/Conv2D/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_4/Conv2D/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_5/Conv2D/ReadVariableOp2Ж
Avgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOpAvgg__feature_extractor/sequential/conv2d_6/BiasAdd/ReadVariableOp2Д
@vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp@vgg__feature_extractor/sequential/conv2d_6/Conv2D/ReadVariableOp:R N
/
_output_shapes
:          d

_user_specified_nameX:MI
'
_output_shapes
:         

_user_specified_nametext
Ь	
╓
7__inference_batch_normalization_layer_call_fn_314959132

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314956536К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ц
j
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_314959274

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
й
║
G__inference_conv2d_4_layer_call_and_return_conditional_losses_314956732

inputs:
conv2d_readvariableop_resource:АА
identityИвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
g
IdentityIdentityConv2D:output:0^NoOp*
T0*0
_output_shapes
:         А^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         А: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ы
┼
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314956536

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ц
j
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_314956480

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_4_layer_call_and_return_conditional_losses_314956750

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╨
№
D__inference_dense_layer_call_and_return_conditional_losses_314957764

inputs4
!tensordot_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
╢
═
.__inference_sequential_layer_call_fn_314958788

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А&

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_layer_call_and_return_conditional_losses_314957066x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          d
 
_user_specified_nameinputs
╪
Ч
)__inference_dense_layer_call_fn_314958668

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_314957764s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
Ц
j
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_314959024

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ш"
з

D__inference_model_layer_call_and_return_conditional_losses_314957892
x
text:
 vgg__feature_extractor_314957841:@.
 vgg__feature_extractor_314957843:@;
 vgg__feature_extractor_314957845:@А/
 vgg__feature_extractor_314957847:	А<
 vgg__feature_extractor_314957849:АА/
 vgg__feature_extractor_314957851:	А<
 vgg__feature_extractor_314957853:АА/
 vgg__feature_extractor_314957855:	А<
 vgg__feature_extractor_314957857:АА/
 vgg__feature_extractor_314957859:	А/
 vgg__feature_extractor_314957861:	А/
 vgg__feature_extractor_314957863:	А/
 vgg__feature_extractor_314957865:	А<
 vgg__feature_extractor_314957867:АА/
 vgg__feature_extractor_314957869:	А/
 vgg__feature_extractor_314957871:	А/
 vgg__feature_extractor_314957873:	А/
 vgg__feature_extractor_314957875:	А<
 vgg__feature_extractor_314957877:АА/
 vgg__feature_extractor_314957879:	А"
dense_314957886:	А
dense_314957888:
identityИвdense/StatefulPartitionedCallв.vgg__feature_extractor/StatefulPartitionedCall╝
.vgg__feature_extractor/StatefulPartitionedCallStatefulPartitionedCallx vgg__feature_extractor_314957841 vgg__feature_extractor_314957843 vgg__feature_extractor_314957845 vgg__feature_extractor_314957847 vgg__feature_extractor_314957849 vgg__feature_extractor_314957851 vgg__feature_extractor_314957853 vgg__feature_extractor_314957855 vgg__feature_extractor_314957857 vgg__feature_extractor_314957859 vgg__feature_extractor_314957861 vgg__feature_extractor_314957863 vgg__feature_extractor_314957865 vgg__feature_extractor_314957867 vgg__feature_extractor_314957869 vgg__feature_extractor_314957871 vgg__feature_extractor_314957873 vgg__feature_extractor_314957875 vgg__feature_extractor_314957877 vgg__feature_extractor_314957879* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *^
fYRW
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957466g
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             г
	transpose	Transpose7vgg__feature_extractor/StatefulPartitionedCall:output:0transpose/perm:output:0*
T0*0
_output_shapes
:         АЄ
*adaptive_average_pooling2d/PartitionedCallPartitionedCalltranspose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *b
f]R[
Y__inference_adaptive_average_pooling2d_layer_call_and_return_conditional_losses_314957731Х
SqueezeSqueeze3adaptive_average_pooling2d/PartitionedCall:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
■
dense/StatefulPartitionedCallStatefulPartitionedCallSqueeze:output:0dense_314957886dense_314957888*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_314957764y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         Ч
NoOpNoOp^dense/StatefulPartitionedCall/^vgg__feature_extractor/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:          d:         : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.vgg__feature_extractor/StatefulPartitionedCall.vgg__feature_extractor/StatefulPartitionedCall:R N
/
_output_shapes
:          d

_user_specified_nameX:MI
'
_output_shapes
:         

_user_specified_nametext
╤
╒
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957599
input_1.
sequential_314957557:@"
sequential_314957559:@/
sequential_314957561:@А#
sequential_314957563:	А0
sequential_314957565:АА#
sequential_314957567:	А0
sequential_314957569:АА#
sequential_314957571:	А0
sequential_314957573:АА#
sequential_314957575:	А#
sequential_314957577:	А#
sequential_314957579:	А#
sequential_314957581:	А0
sequential_314957583:АА#
sequential_314957585:	А#
sequential_314957587:	А#
sequential_314957589:	А#
sequential_314957591:	А0
sequential_314957593:АА#
sequential_314957595:	А
identityИв"sequential/StatefulPartitionedCall╛
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_314957557sequential_314957559sequential_314957561sequential_314957563sequential_314957565sequential_314957567sequential_314957569sequential_314957571sequential_314957573sequential_314957575sequential_314957577sequential_314957579sequential_314957581sequential_314957583sequential_314957585sequential_314957587sequential_314957589sequential_314957591sequential_314957593sequential_314957595* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_layer_call_and_return_conditional_losses_314956804Г
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         Аk
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:X T
/
_output_shapes
:          d
!
_user_specified_name	input_1
╢

Г
G__inference_conv2d_6_layer_call_and_return_conditional_losses_314956790

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_3_layer_call_and_return_conditional_losses_314956722

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
гT
о

I__inference_sequential_layer_call_and_return_conditional_losses_314957282
conv2d_input*
conv2d_314957221:@
conv2d_314957223:@-
conv2d_1_314957228:@А!
conv2d_1_314957230:	А.
conv2d_2_314957235:АА!
conv2d_2_314957237:	А.
conv2d_3_314957241:АА!
conv2d_3_314957243:	А.
conv2d_4_314957248:АА,
batch_normalization_314957251:	А,
batch_normalization_314957253:	А,
batch_normalization_314957255:	А,
batch_normalization_314957257:	А.
conv2d_5_314957261:АА.
batch_normalization_1_314957264:	А.
batch_normalization_1_314957266:	А.
batch_normalization_1_314957268:	А.
batch_normalization_1_314957270:	А.
conv2d_6_314957275:АА!
conv2d_6_314957277:	А
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallВ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_314957221conv2d_314957223*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_layer_call_and_return_conditional_losses_314956640с
re_lu/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          d@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_re_lu_layer_call_and_return_conditional_losses_314956651ш
max_pooling2d/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_314956456е
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_314957228conv2d_1_314957230*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_314956664ш
re_lu_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         2А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_314956675я
max_pooling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_314956468з
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_314957235conv2d_2_314957237*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_314956688ш
re_lu_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_314956699Я
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0conv2d_3_314957241conv2d_3_314957243*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_314956711ш
re_lu_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_314956722я
max_pooling2d_2/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_314956480С
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_314957248*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_314956732Ф
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_314957251batch_normalization_314957253batch_normalization_314957255batch_normalization_314957257*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314956536є
re_lu_4/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_314956750Й
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall re_lu_4/PartitionedCall:output:0conv2d_5_314957261*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_314956759а
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_1_314957264batch_normalization_1_314957266batch_normalization_1_314957268batch_normalization_1_314957270*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314956600ї
re_lu_5/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_5_layer_call_and_return_conditional_losses_314956777я
max_pooling2d_3/PartitionedCallPartitionedCall re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_314956620з
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_6_314957275conv2d_6_314957277*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv2d_6_layer_call_and_return_conditional_losses_314956790ш
re_lu_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_re_lu_6_layer_call_and_return_conditional_losses_314956801x
IdentityIdentity re_lu_6/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         АЧ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:          d: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:] Y
/
_output_shapes
:          d
&
_user_specified_nameconv2d_input
Ц
j
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_314959092

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_2_layer_call_and_return_conditional_losses_314959053

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ю
b
F__inference_re_lu_6_layer_call_and_return_conditional_losses_314959303

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▌
б
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314959150

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ш
`
D__inference_re_lu_layer_call_and_return_conditional_losses_314956651

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:          d@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:          d@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          d@:W S
/
_output_shapes
:          d@
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ё
serving_default▄
A
args_07
serving_default_args_0:0          d
9
args_1/
serving_default_args_1:0         @
output_14
StatefulPartitionedCall:0         tensorflow/serving/predict:░А
О
FeatureExtraction
AdaptiveAvgPool

Prediction
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_model
╞
output_channel
ConvNet
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_model
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
╞
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519
20
21"
trackable_list_wrapper
ж
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
/11
012
113
414
515
16
17"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
У2Р
)__inference_model_layer_call_fn_314957989
)__inference_model_layer_call_fn_314958039╖
о▓к
FullArgSpec,
args$Ъ!
jself
jX
jtext

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╔2╞
D__inference_model_layer_call_and_return_conditional_losses_314958179
D__inference_model_layer_call_and_return_conditional_losses_314958319╖
о▓к
FullArgSpec,
args$Ъ!
jself
jX
jtext

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╓B╙
$__inference__wrapped_model_314956447args_0args_1"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,
;serving_default"
signature_map
 "
trackable_list_wrapper
в
<layer_with_weights-0
<layer-0
=layer-1
>layer-2
?layer_with_weights-1
?layer-3
@layer-4
Alayer-5
Blayer_with_weights-2
Blayer-6
Clayer-7
Dlayer_with_weights-3
Dlayer-8
Elayer-9
Flayer-10
Glayer_with_weights-4
Glayer-11
Hlayer_with_weights-5
Hlayer-12
Ilayer-13
Jlayer_with_weights-6
Jlayer-14
Klayer_with_weights-7
Klayer-15
Llayer-16
Mlayer-17
Nlayer_with_weights-8
Nlayer-18
Olayer-19
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_sequential
╢
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519"
trackable_list_wrapper
Ц
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
/11
012
113
414
515"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
е2в
:__inference_vgg__feature_extractor_layer_call_fn_314957374
:__inference_vgg__feature_extractor_layer_call_fn_314958416
:__inference_vgg__feature_extractor_layer_call_fn_314958461
:__inference_vgg__feature_extractor_layer_call_fn_314957554п
ж▓в
FullArgSpec$
argsЪ
jself
jX

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
С2О
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314958540
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314958619
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957599
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957644п
ж▓в
FullArgSpec$
argsЪ
jself
jX

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ь2щ
>__inference_adaptive_average_pooling2d_layer_call_fn_314958624ж
Э▓Щ
FullArgSpec
argsЪ
jself
jinputs
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
З2Д
Y__inference_adaptive_average_pooling2d_layer_call_and_return_conditional_losses_314958659ж
Э▓Щ
FullArgSpec
argsЪ
jself
jinputs
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
%:#	А2model/dense/kernel
:2model/dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_dense_layer_call_fn_314958668в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_layer_call_and_return_conditional_losses_314958698в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@2conv2d/kernel
:@2conv2d/bias
*:(@А2conv2d_1/kernel
:А2conv2d_1/bias
+:)АА2conv2d_2/kernel
:А2conv2d_2/bias
+:)АА2conv2d_3/kernel
:А2conv2d_3/bias
+:)АА2conv2d_4/kernel
(:&А2batch_normalization/gamma
':%А2batch_normalization/beta
0:.А (2batch_normalization/moving_mean
4:2А (2#batch_normalization/moving_variance
+:)АА2conv2d_5/kernel
*:(А2batch_normalization_1/gamma
):'А2batch_normalization_1/beta
2:0А (2!batch_normalization_1/moving_mean
6:4А (2%batch_normalization_1/moving_variance
+:)АА2conv2d_6/kernel
:А2conv2d_6/bias
<
-0
.1
22
33"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
'__inference_signature_wrapper_314958371args_0args_1"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╗

"kernel
#bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
е
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
е
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

$kernel
%bias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
и
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses"
_tf_keras_layer
┴

&kernel
'bias
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
Н__call__
+О&call_and_return_all_conditional_losses"
_tf_keras_layer
л
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"
_tf_keras_layer
┴

(kernel
)bias
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"
_tf_keras_layer
л
б	variables
вtrainable_variables
гregularization_losses
д	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"
_tf_keras_layer
╖

*kernel
з	variables
иtrainable_variables
йregularization_losses
к	keras_api
л__call__
+м&call_and_return_all_conditional_losses"
_tf_keras_layer
ё
	нaxis
	+gamma
,beta
-moving_mean
.moving_variance
о	variables
пtrainable_variables
░regularization_losses
▒	keras_api
▓__call__
+│&call_and_return_all_conditional_losses"
_tf_keras_layer
л
┤	variables
╡trainable_variables
╢regularization_losses
╖	keras_api
╕__call__
+╣&call_and_return_all_conditional_losses"
_tf_keras_layer
╖

/kernel
║	variables
╗trainable_variables
╝regularization_losses
╜	keras_api
╛__call__
+┐&call_and_return_all_conditional_losses"
_tf_keras_layer
ё
	└axis
	0gamma
1beta
2moving_mean
3moving_variance
┴	variables
┬trainable_variables
├regularization_losses
─	keras_api
┼__call__
+╞&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╟	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"
_tf_keras_layer
л
═	variables
╬trainable_variables
╧regularization_losses
╨	keras_api
╤__call__
+╥&call_and_return_all_conditional_losses"
_tf_keras_layer
┴

4kernel
5bias
╙	variables
╘trainable_variables
╒regularization_losses
╓	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses"
_tf_keras_layer
л
┘	variables
┌trainable_variables
█regularization_losses
▄	keras_api
▌__call__
+▐&call_and_return_all_conditional_losses"
_tf_keras_layer
╢
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519"
trackable_list_wrapper
Ц
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
/11
012
113
414
515"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
Ж2Г
.__inference_sequential_layer_call_fn_314956847
.__inference_sequential_layer_call_fn_314958743
.__inference_sequential_layer_call_fn_314958788
.__inference_sequential_layer_call_fn_314957154└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Є2я
I__inference_sequential_layer_call_and_return_conditional_losses_314958867
I__inference_sequential_layer_call_and_return_conditional_losses_314958946
I__inference_sequential_layer_call_and_return_conditional_losses_314957218
I__inference_sequential_layer_call_and_return_conditional_losses_314957282└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
<
-0
.1
22
33"
trackable_list_wrapper
'
0"
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
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_layer_call_fn_314958955в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_layer_call_and_return_conditional_losses_314958965в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_re_lu_layer_call_fn_314958970в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_re_lu_layer_call_and_return_conditional_losses_314958975в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
█2╪
1__inference_max_pooling2d_layer_call_fn_314958980в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ў2є
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_314958985в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
╓2╙
,__inference_conv2d_1_layer_call_fn_314958994в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_conv2d_1_layer_call_and_return_conditional_losses_314959004в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_re_lu_1_layer_call_fn_314959009в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_re_lu_1_layer_call_and_return_conditional_losses_314959014в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
¤non_trainable_variables
■layers
 metrics
 Аlayer_regularization_losses
Бlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
▌2┌
3__inference_max_pooling2d_1_layer_call_fn_314959019в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°2ї
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_314959024в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
Й	variables
Кtrainable_variables
Лregularization_losses
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
╓2╙
,__inference_conv2d_2_layer_call_fn_314959033в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_conv2d_2_layer_call_and_return_conditional_losses_314959043в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_re_lu_2_layer_call_fn_314959048в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_re_lu_2_layer_call_and_return_conditional_losses_314959053в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
╓2╙
,__inference_conv2d_3_layer_call_fn_314959062в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_conv2d_3_layer_call_and_return_conditional_losses_314959072в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_re_lu_3_layer_call_fn_314959077в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_re_lu_3_layer_call_and_return_conditional_losses_314959082в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
б	variables
вtrainable_variables
гregularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
▌2┌
3__inference_max_pooling2d_2_layer_call_fn_314959087в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°2ї
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_314959092в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
'
*0"
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
з	variables
иtrainable_variables
йregularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
╓2╙
,__inference_conv2d_4_layer_call_fn_314959099в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_conv2d_4_layer_call_and_return_conditional_losses_314959106в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
<
+0
,1
-2
.3"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
о	variables
пtrainable_variables
░regularization_losses
▓__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses"
_generic_user_object
м2й
7__inference_batch_normalization_layer_call_fn_314959119
7__inference_batch_normalization_layer_call_fn_314959132┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
т2▀
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314959150
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314959168┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
┤	variables
╡trainable_variables
╢regularization_losses
╕__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_re_lu_4_layer_call_fn_314959173в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_re_lu_4_layer_call_and_return_conditional_losses_314959178в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
'
/0"
trackable_list_wrapper
'
/0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
║	variables
╗trainable_variables
╝regularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses"
_generic_user_object
╓2╙
,__inference_conv2d_5_layer_call_fn_314959185в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_conv2d_5_layer_call_and_return_conditional_losses_314959192в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
<
00
11
22
33"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
┴	variables
┬trainable_variables
├regularization_losses
┼__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses"
_generic_user_object
░2н
9__inference_batch_normalization_1_layer_call_fn_314959205
9__inference_batch_normalization_1_layer_call_fn_314959218┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ц2у
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314959236
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314959254┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
╟	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_re_lu_5_layer_call_fn_314959259в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_re_lu_5_layer_call_and_return_conditional_losses_314959264в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
═	variables
╬trainable_variables
╧regularization_losses
╤__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
▌2┌
3__inference_max_pooling2d_3_layer_call_fn_314959269в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°2ї
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_314959274в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
╙	variables
╘trainable_variables
╒regularization_losses
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
╓2╙
,__inference_conv2d_6_layer_call_fn_314959283в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_conv2d_6_layer_call_and_return_conditional_losses_314959293в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
┘	variables
┌trainable_variables
█regularization_losses
▌__call__
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_re_lu_6_layer_call_fn_314959298в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_re_lu_6_layer_call_and_return_conditional_losses_314959303в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
<
-0
.1
22
33"
trackable_list_wrapper
╢
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19"
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
.
-0
.1"
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
.
20
31"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper╒
$__inference__wrapped_model_314956447м"#$%&'()*+,-./012345YвV
OвL
(К%
args_0          d
 К
args_1         
к "7к4
2
output_1&К#
output_1         ╟
Y__inference_adaptive_average_pooling2d_layer_call_and_return_conditional_losses_314958659j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Я
>__inference_adaptive_average_pooling2d_layer_call_fn_314958624]8в5
.в+
)К&
inputs         А
к "!К         Аё
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314959236Ш0123NвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ё
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_314959254Ш0123NвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ╔
9__inference_batch_normalization_1_layer_call_fn_314959205Л0123NвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╔
9__inference_batch_normalization_1_layer_call_fn_314959218Л0123NвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Ая
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314959150Ш+,-.NвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ я
R__inference_batch_normalization_layer_call_and_return_conditional_losses_314959168Ш+,-.NвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ╟
7__inference_batch_normalization_layer_call_fn_314959119Л+,-.NвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╟
7__inference_batch_normalization_layer_call_fn_314959132Л+,-.NвK
DвA
;К8
inputs,                           А
p
к "3К0,                           А╕
G__inference_conv2d_1_layer_call_and_return_conditional_losses_314959004m$%7в4
-в*
(К%
inputs         2@
к ".в+
$К!
0         2А
Ъ Р
,__inference_conv2d_1_layer_call_fn_314958994`$%7в4
-в*
(К%
inputs         2@
к "!К         2А╣
G__inference_conv2d_2_layer_call_and_return_conditional_losses_314959043n&'8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ С
,__inference_conv2d_2_layer_call_fn_314959033a&'8в5
.в+
)К&
inputs         А
к "!К         А╣
G__inference_conv2d_3_layer_call_and_return_conditional_losses_314959072n()8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ С
,__inference_conv2d_3_layer_call_fn_314959062a()8в5
.в+
)К&
inputs         А
к "!К         А╕
G__inference_conv2d_4_layer_call_and_return_conditional_losses_314959106m*8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
,__inference_conv2d_4_layer_call_fn_314959099`*8в5
.в+
)К&
inputs         А
к "!К         А╕
G__inference_conv2d_5_layer_call_and_return_conditional_losses_314959192m/8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
,__inference_conv2d_5_layer_call_fn_314959185`/8в5
.в+
)К&
inputs         А
к "!К         А╣
G__inference_conv2d_6_layer_call_and_return_conditional_losses_314959293n458в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ С
,__inference_conv2d_6_layer_call_fn_314959283a458в5
.в+
)К&
inputs         А
к "!К         А╡
E__inference_conv2d_layer_call_and_return_conditional_losses_314958965l"#7в4
-в*
(К%
inputs          d
к "-в*
#К 
0          d@
Ъ Н
*__inference_conv2d_layer_call_fn_314958955_"#7в4
-в*
(К%
inputs          d
к " К          d@н
D__inference_dense_layer_call_and_return_conditional_losses_314958698e4в1
*в'
%К"
inputs         А
к ")в&
К
0         
Ъ Е
)__inference_dense_layer_call_fn_314958668X4в1
*в'
%К"
inputs         А
к "К         ё
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_314959024ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╔
3__inference_max_pooling2d_1_layer_call_fn_314959019СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ё
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_314959092ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╔
3__inference_max_pooling2d_2_layer_call_fn_314959087СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ё
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_314959274ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╔
3__inference_max_pooling2d_3_layer_call_fn_314959269СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_314958985ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_layer_call_fn_314958980СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ф
D__inference_model_layer_call_and_return_conditional_losses_314958179Ы"#$%&'()*+,-./012345VвS
LвI
#К 
X          d
К
text         
p 
к ")в&
К
0         
Ъ ф
D__inference_model_layer_call_and_return_conditional_losses_314958319Ы"#$%&'()*+,-./012345VвS
LвI
#К 
X          d
К
text         
p
к ")в&
К
0         
Ъ ╝
)__inference_model_layer_call_fn_314957989О"#$%&'()*+,-./012345VвS
LвI
#К 
X          d
К
text         
p 
к "К         ╝
)__inference_model_layer_call_fn_314958039О"#$%&'()*+,-./012345VвS
LвI
#К 
X          d
К
text         
p
к "К         ┤
F__inference_re_lu_1_layer_call_and_return_conditional_losses_314959014j8в5
.в+
)К&
inputs         2А
к ".в+
$К!
0         2А
Ъ М
+__inference_re_lu_1_layer_call_fn_314959009]8в5
.в+
)К&
inputs         2А
к "!К         2А┤
F__inference_re_lu_2_layer_call_and_return_conditional_losses_314959053j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ М
+__inference_re_lu_2_layer_call_fn_314959048]8в5
.в+
)К&
inputs         А
к "!К         А┤
F__inference_re_lu_3_layer_call_and_return_conditional_losses_314959082j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ М
+__inference_re_lu_3_layer_call_fn_314959077]8в5
.в+
)К&
inputs         А
к "!К         А┤
F__inference_re_lu_4_layer_call_and_return_conditional_losses_314959178j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ М
+__inference_re_lu_4_layer_call_fn_314959173]8в5
.в+
)К&
inputs         А
к "!К         А┤
F__inference_re_lu_5_layer_call_and_return_conditional_losses_314959264j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ М
+__inference_re_lu_5_layer_call_fn_314959259]8в5
.в+
)К&
inputs         А
к "!К         А┤
F__inference_re_lu_6_layer_call_and_return_conditional_losses_314959303j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ М
+__inference_re_lu_6_layer_call_fn_314959298]8в5
.в+
)К&
inputs         А
к "!К         А░
D__inference_re_lu_layer_call_and_return_conditional_losses_314958975h7в4
-в*
(К%
inputs          d@
к "-в*
#К 
0          d@
Ъ И
)__inference_re_lu_layer_call_fn_314958970[7в4
-в*
(К%
inputs          d@
к " К          d@█
I__inference_sequential_layer_call_and_return_conditional_losses_314957218Н"#$%&'()*+,-./012345EвB
;в8
.К+
conv2d_input          d
p 

 
к ".в+
$К!
0         А
Ъ █
I__inference_sequential_layer_call_and_return_conditional_losses_314957282Н"#$%&'()*+,-./012345EвB
;в8
.К+
conv2d_input          d
p

 
к ".в+
$К!
0         А
Ъ ╒
I__inference_sequential_layer_call_and_return_conditional_losses_314958867З"#$%&'()*+,-./012345?в<
5в2
(К%
inputs          d
p 

 
к ".в+
$К!
0         А
Ъ ╒
I__inference_sequential_layer_call_and_return_conditional_losses_314958946З"#$%&'()*+,-./012345?в<
5в2
(К%
inputs          d
p

 
к ".в+
$К!
0         А
Ъ │
.__inference_sequential_layer_call_fn_314956847А"#$%&'()*+,-./012345EвB
;в8
.К+
conv2d_input          d
p 

 
к "!К         А│
.__inference_sequential_layer_call_fn_314957154А"#$%&'()*+,-./012345EвB
;в8
.К+
conv2d_input          d
p

 
к "!К         Ам
.__inference_sequential_layer_call_fn_314958743z"#$%&'()*+,-./012345?в<
5в2
(К%
inputs          d
p 

 
к "!К         Ам
.__inference_sequential_layer_call_fn_314958788z"#$%&'()*+,-./012345?в<
5в2
(К%
inputs          d
p

 
к "!К         Аь
'__inference_signature_wrapper_314958371└"#$%&'()*+,-./012345mвj
в 
cк`
2
args_0(К%
args_0          d
*
args_1 К
args_1         "7к4
2
output_1&К#
output_1         ▐
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957599Д"#$%&'()*+,-./012345<в9
2в/
)К&
input_1          d
p 
к ".в+
$К!
0         А
Ъ ▐
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314957644Д"#$%&'()*+,-./012345<в9
2в/
)К&
input_1          d
p
к ".в+
$К!
0         А
Ъ ╫
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314958540~"#$%&'()*+,-./0123456в3
,в)
#К 
X          d
p 
к ".в+
$К!
0         А
Ъ ╫
U__inference_vgg__feature_extractor_layer_call_and_return_conditional_losses_314958619~"#$%&'()*+,-./0123456в3
,в)
#К 
X          d
p
к ".в+
$К!
0         А
Ъ ╡
:__inference_vgg__feature_extractor_layer_call_fn_314957374w"#$%&'()*+,-./012345<в9
2в/
)К&
input_1          d
p 
к "!К         А╡
:__inference_vgg__feature_extractor_layer_call_fn_314957554w"#$%&'()*+,-./012345<в9
2в/
)К&
input_1          d
p
к "!К         Ап
:__inference_vgg__feature_extractor_layer_call_fn_314958416q"#$%&'()*+,-./0123456в3
,в)
#К 
X          d
p 
к "!К         Ап
:__inference_vgg__feature_extractor_layer_call_fn_314958461q"#$%&'()*+,-./0123456в3
,в)
#К 
X          d
p
к "!К         А