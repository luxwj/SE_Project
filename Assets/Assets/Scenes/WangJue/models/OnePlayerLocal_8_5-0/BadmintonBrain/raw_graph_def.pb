
C
global_step/initial_valueConst*
dtype0*
value	B : 
W
global_step
VariableV2*
dtype0*
	container *
shape: *
shared_name 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
/
Add/yConst*
value	B :*
dtype0
,
AddAddglobal_step/readAdd/y*
T0
t
AssignAssignglobal_stepAdd*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
5

batch_sizePlaceholder*
dtype0*
shape:
:
sequence_lengthPlaceholder*
dtype0*
shape:
;
masksPlaceholder*
dtype0*
shape:’’’’’’’’’
+
CastCastmasks*

SrcT0*

DstT0
M
#is_continuous_control/initial_valueConst*
dtype0*
value	B : 
a
is_continuous_control
VariableV2*
dtype0*
	container *
shape: *
shared_name 
¾
is_continuous_control/AssignAssignis_continuous_control#is_continuous_control/initial_value*
validate_shape(*
use_locking(*
T0*(
_class
loc:@is_continuous_control
p
is_continuous_control/readIdentityis_continuous_control*
T0*(
_class
loc:@is_continuous_control
F
version_number/initial_valueConst*
value	B :*
dtype0
Z
version_number
VariableV2*
dtype0*
	container *
shape: *
shared_name 
¢
version_number/AssignAssignversion_numberversion_number/initial_value*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(
[
version_number/readIdentityversion_number*
T0*!
_class
loc:@version_number
C
memory_size/initial_valueConst*
value	B : *
dtype0
W
memory_size
VariableV2*
shape: *
shared_name *
dtype0*
	container 

memory_size/AssignAssignmemory_sizememory_size/initial_value*
use_locking(*
T0*
_class
loc:@memory_size*
validate_shape(
R
memory_size/readIdentitymemory_size*
T0*
_class
loc:@memory_size
K
!action_output_shape/initial_valueConst*
dtype0*
value	B :
_
action_output_shape
VariableV2*
dtype0*
	container *
shape: *
shared_name 
¶
action_output_shape/AssignAssignaction_output_shape!action_output_shape/initial_value*
T0*&
_class
loc:@action_output_shape*
validate_shape(*
use_locking(
j
action_output_shape/readIdentityaction_output_shape*
T0*&
_class
loc:@action_output_shape
F
last_reward/initial_valueConst*
valueB
 *    *
dtype0
W
last_reward
VariableV2*
dtype0*
	container *
shape: *
shared_name 

last_reward/AssignAssignlast_rewardlast_reward/initial_value*
use_locking(*
T0*
_class
loc:@last_reward*
validate_shape(
R
last_reward/readIdentitylast_reward*
T0*
_class
loc:@last_reward
3

new_rewardPlaceholder*
dtype0*
shape: 
}
Assign_1Assignlast_reward
new_reward*
use_locking(*
T0*
_class
loc:@last_reward*
validate_shape(
L
vector_observationPlaceholder*
shape:’’’’’’’’’	*
dtype0
„
?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB"	      *
dtype0

>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *    *
dtype0

@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *Ā>*
dtype0
ž
Imain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
seed2%*
seed±

=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
ł
9main_graph_0/hidden_0/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
¢
main_graph_0/hidden_0/kernel
VariableV2*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container *
shape:		*
shared_name 
é
#main_graph_0/hidden_0/kernel/AssignAssignmain_graph_0/hidden_0/kernel9main_graph_0/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(

!main_graph_0/hidden_0/kernel/readIdentitymain_graph_0/hidden_0/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB:*
dtype0

2main_graph_0/hidden_0/bias/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB
 *    *
dtype0
š
,main_graph_0/hidden_0/bias/Initializer/zerosFill<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_0/bias/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*

index_type0

main_graph_0/hidden_0/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias
Ö
!main_graph_0/hidden_0/bias/AssignAssignmain_graph_0/hidden_0/bias,main_graph_0/hidden_0/bias/Initializer/zeros*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(*
use_locking(

main_graph_0/hidden_0/bias/readIdentitymain_graph_0/hidden_0/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/MatMulMatMulvector_observation!main_graph_0/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 

main_graph_0/hidden_0/BiasAddBiasAddmain_graph_0/hidden_0/MatMulmain_graph_0/hidden_0/bias/read*
data_formatNHWC*
T0
P
main_graph_0/hidden_0/SigmoidSigmoidmain_graph_0/hidden_0/BiasAdd*
T0
g
main_graph_0/hidden_0/MulMulmain_graph_0/hidden_0/BiasAddmain_graph_0/hidden_0/Sigmoid*
T0
„
?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB"      *
dtype0

>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *    *
dtype0

@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *Eń=*
dtype0
ž
Imain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
seed28*
seed±

=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
ł
9main_graph_0/hidden_1/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
£
main_graph_0/hidden_1/kernel
VariableV2*
shape:
*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container 
é
#main_graph_0/hidden_1/kernel/AssignAssignmain_graph_0/hidden_1/kernel9main_graph_0/hidden_1/kernel/Initializer/truncated_normal*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

!main_graph_0/hidden_1/kernel/readIdentitymain_graph_0/hidden_1/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB:*
dtype0

2main_graph_0/hidden_1/bias/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB
 *    *
dtype0
š
,main_graph_0/hidden_1/bias/Initializer/zerosFill<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_1/bias/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*

index_type0

main_graph_0/hidden_1/bias
VariableV2*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container *
shape:
Ö
!main_graph_0/hidden_1/bias/AssignAssignmain_graph_0/hidden_1/bias,main_graph_0/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

main_graph_0/hidden_1/bias/readIdentitymain_graph_0/hidden_1/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/MatMulMatMulmain_graph_0/hidden_0/Mul!main_graph_0/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_0/hidden_1/BiasAddBiasAddmain_graph_0/hidden_1/MatMulmain_graph_0/hidden_1/bias/read*
data_formatNHWC*
T0
P
main_graph_0/hidden_1/SigmoidSigmoidmain_graph_0/hidden_1/BiasAdd*
T0
g
main_graph_0/hidden_1/MulMulmain_graph_0/hidden_1/BiasAddmain_graph_0/hidden_1/Sigmoid*
T0

/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"      
|
.dense/kernel/Initializer/truncated_normal/meanConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *é;
Ī
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
dtype0*
seed2K*
seed±*
T0*
_class
loc:@dense/kernel
Ė
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
¹
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
shape:	*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
©
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
s
dense/MatMulMatMulmain_graph_0/hidden_1/Muldense/kernel/read*
T0*
transpose_a( *
transpose_b( 

1dense_1/kernel/Initializer/truncated_normal/shapeConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB"      

0dense_1/kernel/Initializer/truncated_normal/meanConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0

2dense_1/kernel/Initializer/truncated_normal/stddevConst*!
_class
loc:@dense_1/kernel*
valueB
 *é;*
dtype0
Ō
;dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_1/kernel/Initializer/truncated_normal/shape*
T0*!
_class
loc:@dense_1/kernel*
dtype0*
seed2U*
seed±
Ó
/dense_1/kernel/Initializer/truncated_normal/mulMul;dense_1/kernel/Initializer/truncated_normal/TruncatedNormal2dense_1/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_1/kernel
Į
+dense_1/kernel/Initializer/truncated_normalAdd/dense_1/kernel/Initializer/truncated_normal/mul0dense_1/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:	*
shared_name 
±
dense_1/kernel/AssignAssigndense_1/kernel+dense_1/kernel/Initializer/truncated_normal*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
w
dense_1/MatMulMatMulmain_graph_0/hidden_1/Muldense_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

1dense_2/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"      *
dtype0

0dense_2/kernel/Initializer/truncated_normal/meanConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *    

2dense_2/kernel/Initializer/truncated_normal/stddevConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *é;
Ō
;dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_2/kernel/Initializer/truncated_normal/shape*
dtype0*
seed2_*
seed±*
T0*!
_class
loc:@dense_2/kernel
Ó
/dense_2/kernel/Initializer/truncated_normal/mulMul;dense_2/kernel/Initializer/truncated_normal/TruncatedNormal2dense_2/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_2/kernel
Į
+dense_2/kernel/Initializer/truncated_normalAdd/dense_2/kernel/Initializer/truncated_normal/mul0dense_2/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:	*
shared_name 
±
dense_2/kernel/AssignAssigndense_2/kernel+dense_2/kernel/Initializer/truncated_normal*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
w
dense_2/MatMulMatMulmain_graph_0/hidden_1/Muldense_2/kernel/read*
T0*
transpose_a( *
transpose_b( 
;
action_probs/axisConst*
value	B :*
dtype0
w
action_probsConcatV2dense/MatMuldense_1/MatMuldense_2/MatMulaction_probs/axis*

Tidx0*
T0*
N
F
action_masksPlaceholder*
dtype0*
shape:’’’’’’’’’
H
strided_slice/stackConst*
valueB"        *
dtype0
J
strided_slice/stack_1Const*
valueB"       *
dtype0
J
strided_slice/stack_2Const*
dtype0*
valueB"      
č
strided_sliceStridedSliceaction_probsstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
J
strided_slice_1/stackConst*
valueB"       *
dtype0
L
strided_slice_1/stack_1Const*
dtype0*
valueB"       
L
strided_slice_1/stack_2Const*
valueB"      *
dtype0
š
strided_slice_1StridedSliceaction_probsstrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
J
strided_slice_2/stackConst*
valueB"       *
dtype0
L
strided_slice_2/stack_1Const*
valueB"       *
dtype0
L
strided_slice_2/stack_2Const*
valueB"      *
dtype0
š
strided_slice_2StridedSliceaction_probsstrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
J
strided_slice_3/stackConst*
valueB"        *
dtype0
L
strided_slice_3/stack_1Const*
valueB"       *
dtype0
L
strided_slice_3/stack_2Const*
valueB"      *
dtype0
š
strided_slice_3StridedSliceaction_masksstrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
J
strided_slice_4/stackConst*
valueB"       *
dtype0
L
strided_slice_4/stack_1Const*
valueB"       *
dtype0
L
strided_slice_4/stack_2Const*
valueB"      *
dtype0
š
strided_slice_4StridedSliceaction_masksstrided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
J
strided_slice_5/stackConst*
valueB"       *
dtype0
L
strided_slice_5/stack_1Const*
valueB"       *
dtype0
L
strided_slice_5/stack_2Const*
valueB"      *
dtype0
š
strided_slice_5StridedSliceaction_masksstrided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
*
SoftmaxSoftmaxstrided_slice*
T0
2
add/yConst*
valueB
 *’ęŪ.*
dtype0
#
addAddSoftmaxadd/y*
T0
)
MulMuladdstrided_slice_3*
T0
.
	Softmax_1Softmaxstrided_slice_1*
T0
4
add_1/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_1Add	Softmax_1add_1/y*
T0
-
Mul_1Muladd_1strided_slice_4*
T0
.
	Softmax_2Softmaxstrided_slice_2*
T0
4
add_2/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_2Add	Softmax_2add_2/y*
T0
-
Mul_2Muladd_2strided_slice_5*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
L
SumSumMulSum/reduction_indices*
	keep_dims(*

Tidx0*
T0
%
truedivRealDivMulSum*
T0
A
Sum_1/reduction_indicesConst*
dtype0*
value	B :
R
Sum_1SumMul_1Sum_1/reduction_indices*
	keep_dims(*

Tidx0*
T0
+
	truediv_1RealDivMul_1Sum_1*
T0
A
Sum_2/reduction_indicesConst*
dtype0*
value	B :
R
Sum_2SumMul_2Sum_2/reduction_indices*
	keep_dims(*

Tidx0*
T0
+
	truediv_2RealDivMul_2Sum_2*
T0

LogLogtruediv*
T0
M
#multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial/MultinomialMultinomialLog#multinomial/Multinomial/num_samples*
T0*
seed2*
seed±*
output_dtype0	
 
Log_1Log	truediv_1*
T0
O
%multinomial_1/Multinomial/num_samplesConst*
dtype0*
value	B :

multinomial_1/MultinomialMultinomialLog_1%multinomial_1/Multinomial/num_samples*
seed±*
output_dtype0	*
T0*
seed2
 
Log_2Log	truediv_2*
T0
O
%multinomial_2/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_2/MultinomialMultinomialLog_2%multinomial_2/Multinomial/num_samples*
seed±*
output_dtype0	*
T0*
seed2
5
concat/axisConst*
dtype0*
value	B :

concatConcatV2multinomial/Multinomialmultinomial_1/Multinomialmultinomial_2/Multinomialconcat/axis*
N*

Tidx0*
T0	
4
add_3/yConst*
valueB
 *’ęŪ.*
dtype0
'
add_3Addtruedivadd_3/y*
T0

Log_3Logadd_3*
T0
4
add_4/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_4Add	truediv_1add_4/y*
T0

Log_4Logadd_4*
T0
4
add_5/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_5Add	truediv_2add_5/y*
T0

Log_5Logadd_5*
T0
7
concat_1/axisConst*
value	B :*
dtype0
V
concat_1ConcatV2Log_3Log_4Log_5concat_1/axis*

Tidx0*
T0*
N
%
IdentityIdentityconcat*
T0	
%
actionIdentityconcat_1*
T0

/dense_3/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0
}
-dense_3/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_3/kernel*
valueB
 *Iv¾*
dtype0
}
-dense_3/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_3/kernel*
valueB
 *Iv>*
dtype0
Ķ
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
dtype0*
seed2±*
seed±*
T0*!
_class
loc:@dense_3/kernel
¾
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel
Č
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel
ŗ
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel

dense_3/kernel
VariableV2*
dtype0*
	container *
shape:	*
shared_name *!
_class
loc:@dense_3/kernel
Æ
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
}
.dense_3/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_3/bias*
valueB:*
dtype0
r
$dense_3/bias/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_3/bias*
valueB
 *    
ø
dense_3/bias/Initializer/zerosFill.dense_3/bias/Initializer/zeros/shape_as_tensor$dense_3/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_3/bias*

index_type0
}
dense_3/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_3/bias

dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(
U
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias
w
dense_3/MatMulMatMulmain_graph_0/hidden_1/Muldense_3/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC
4
value_estimateIdentitydense_3/BiasAdd*
T0
G
action_holderPlaceholder*
shape:’’’’’’’’’*
dtype0
J
strided_slice_6/stackConst*
valueB"        *
dtype0
L
strided_slice_6/stack_1Const*
valueB"       *
dtype0
L
strided_slice_6/stack_2Const*
valueB"      *
dtype0
ń
strided_slice_6StridedSliceaction_holderstrided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
=
one_hot/on_valueConst*
valueB
 *  ?*
dtype0
>
one_hot/off_valueConst*
dtype0*
valueB
 *    
7
one_hot/depthConst*
dtype0*
value	B :
~
one_hotOneHotstrided_slice_6one_hot/depthone_hot/on_valueone_hot/off_value*
T0*
axis’’’’’’’’’*
TI0
J
strided_slice_7/stackConst*
dtype0*
valueB"       
L
strided_slice_7/stack_1Const*
valueB"       *
dtype0
L
strided_slice_7/stack_2Const*
valueB"      *
dtype0
ń
strided_slice_7StridedSliceaction_holderstrided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
?
one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0
@
one_hot_1/off_valueConst*
valueB
 *    *
dtype0
9
one_hot_1/depthConst*
value	B :*
dtype0

	one_hot_1OneHotstrided_slice_7one_hot_1/depthone_hot_1/on_valueone_hot_1/off_value*
T0*
axis’’’’’’’’’*
TI0
J
strided_slice_8/stackConst*
valueB"       *
dtype0
L
strided_slice_8/stack_1Const*
valueB"       *
dtype0
L
strided_slice_8/stack_2Const*
dtype0*
valueB"      
ń
strided_slice_8StridedSliceaction_holderstrided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
?
one_hot_2/on_valueConst*
dtype0*
valueB
 *  ?
@
one_hot_2/off_valueConst*
valueB
 *    *
dtype0
9
one_hot_2/depthConst*
value	B :*
dtype0

	one_hot_2OneHotstrided_slice_8one_hot_2/depthone_hot_2/on_valueone_hot_2/off_value*
T0*
axis’’’’’’’’’*
TI0
7
concat_2/axisConst*
value	B :*
dtype0
`
concat_2ConcatV2one_hot	one_hot_1	one_hot_2concat_2/axis*

Tidx0*
T0*
N
/
StopGradientStopGradientconcat_2*
T0
K
old_probabilitiesPlaceholder*
dtype0*
shape:’’’’’’’’’
J
strided_slice_9/stackConst*
valueB"        *
dtype0
L
strided_slice_9/stack_1Const*
valueB"       *
dtype0
L
strided_slice_9/stack_2Const*
valueB"      *
dtype0
õ
strided_slice_9StridedSliceold_probabilitiesstrided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_10/stackConst*
valueB"       *
dtype0
M
strided_slice_10/stack_1Const*
valueB"       *
dtype0
M
strided_slice_10/stack_2Const*
dtype0*
valueB"      
ł
strided_slice_10StridedSliceold_probabilitiesstrided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_11/stackConst*
valueB"       *
dtype0
M
strided_slice_11/stack_1Const*
valueB"       *
dtype0
M
strided_slice_11/stack_2Const*
valueB"      *
dtype0
ł
strided_slice_11StridedSliceold_probabilitiesstrided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
K
strided_slice_12/stackConst*
dtype0*
valueB"        
M
strided_slice_12/stack_1Const*
valueB"       *
dtype0
M
strided_slice_12/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_12StridedSliceaction_masksstrided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
K
strided_slice_13/stackConst*
valueB"       *
dtype0
M
strided_slice_13/stack_1Const*
valueB"       *
dtype0
M
strided_slice_13/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_13StridedSliceaction_masksstrided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
K
strided_slice_14/stackConst*
valueB"       *
dtype0
M
strided_slice_14/stack_1Const*
valueB"       *
dtype0
M
strided_slice_14/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_14StridedSliceaction_masksstrided_slice_14/stackstrided_slice_14/stack_1strided_slice_14/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
.
	Softmax_3Softmaxstrided_slice_9*
T0
4
add_6/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_6Add	Softmax_3add_6/y*
T0
.
Mul_3Muladd_6strided_slice_12*
T0
/
	Softmax_4Softmaxstrided_slice_10*
T0
4
add_7/yConst*
dtype0*
valueB
 *’ęŪ.
)
add_7Add	Softmax_4add_7/y*
T0
.
Mul_4Muladd_7strided_slice_13*
T0
/
	Softmax_5Softmaxstrided_slice_11*
T0
4
add_8/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_8Add	Softmax_5add_8/y*
T0
.
Mul_5Muladd_8strided_slice_14*
T0
A
Sum_3/reduction_indicesConst*
dtype0*
value	B :
R
Sum_3SumMul_3Sum_3/reduction_indices*
	keep_dims(*

Tidx0*
T0
+
	truediv_3RealDivMul_3Sum_3*
T0
A
Sum_4/reduction_indicesConst*
value	B :*
dtype0
R
Sum_4SumMul_4Sum_4/reduction_indices*
	keep_dims(*

Tidx0*
T0
+
	truediv_4RealDivMul_4Sum_4*
T0
A
Sum_5/reduction_indicesConst*
value	B :*
dtype0
R
Sum_5SumMul_5Sum_5/reduction_indices*
	keep_dims(*

Tidx0*
T0
+
	truediv_5RealDivMul_5Sum_5*
T0
 
Log_6Log	truediv_3*
T0
O
%multinomial_3/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_3/MultinomialMultinomialLog_6%multinomial_3/Multinomial/num_samples*
seed±*
output_dtype0	*
T0*
seed2
 
Log_7Log	truediv_4*
T0
O
%multinomial_4/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_4/MultinomialMultinomialLog_7%multinomial_4/Multinomial/num_samples*
seed±*
output_dtype0	*
T0*
seed2
 
Log_8Log	truediv_5*
T0
O
%multinomial_5/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_5/MultinomialMultinomialLog_8%multinomial_5/Multinomial/num_samples*
seed2*
seed±*
output_dtype0	*
T0
7
concat_3/axisConst*
dtype0*
value	B :

concat_3ConcatV2multinomial_3/Multinomialmultinomial_4/Multinomialmultinomial_5/Multinomialconcat_3/axis*
T0	*
N*

Tidx0
4
add_9/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_9Add	truediv_3add_9/y*
T0

Log_9Logadd_9*
T0
5
add_10/yConst*
valueB
 *’ęŪ.*
dtype0
+
add_10Add	truediv_4add_10/y*
T0

Log_10Logadd_10*
T0
5
add_11/yConst*
valueB
 *’ęŪ.*
dtype0
+
add_11Add	truediv_5add_11/y*
T0

Log_11Logadd_11*
T0
7
concat_4/axisConst*
dtype0*
value	B :
X
concat_4ConcatV2Log_9Log_10Log_11concat_4/axis*
N*

Tidx0*
T0
K
strided_slice_15/stackConst*
valueB"        *
dtype0
M
strided_slice_15/stack_1Const*
valueB"       *
dtype0
M
strided_slice_15/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_15StridedSliceaction_probsstrided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
/
	Softmax_6Softmaxstrided_slice_15*
T0
K
strided_slice_16/stackConst*
valueB"        *
dtype0
M
strided_slice_16/stack_1Const*
valueB"       *
dtype0
M
strided_slice_16/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_16StridedSliceaction_probsstrided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
P
&softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0
[
'softmax_cross_entropy_with_logits/ShapeShapestrided_slice_16*
T0*
out_type0
R
(softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits/Shape_1Shapestrided_slice_16*
T0*
out_type0
Q
'softmax_cross_entropy_with_logits/Sub/yConst*
dtype0*
value	B :

%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
T0
z
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N
Z
,softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0
Ī
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
T0*
Index0
h
1softmax_cross_entropy_with_logits/concat/values_0Const*
dtype0*
valueB:
’’’’’’’’’
W
-softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0
Ż
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*
T0*
N*

Tidx0

)softmax_cross_entropy_with_logits/ReshapeReshapestrided_slice_16(softmax_cross_entropy_with_logits/concat*
T0*
Tshape0
R
(softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0
V
)softmax_cross_entropy_with_logits/Shape_2Shape	Softmax_6*
T0*
out_type0
S
)softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0
~
/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0
Ō
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*
N*

Tidx0*
T0

+softmax_cross_entropy_with_logits/Reshape_1Reshape	Softmax_6*softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0
£
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*
T0
S
)softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0
]
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
dtype0*
valueB: 
}
.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N
Ņ
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
T0*
Index0

+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0
K
strided_slice_17/stackConst*
valueB"       *
dtype0
M
strided_slice_17/stack_1Const*
valueB"       *
dtype0
M
strided_slice_17/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_17StridedSliceaction_probsstrided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
/
	Softmax_7Softmaxstrided_slice_17*
T0
K
strided_slice_18/stackConst*
valueB"       *
dtype0
M
strided_slice_18/stack_1Const*
valueB"       *
dtype0
M
strided_slice_18/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_18StridedSliceaction_probsstrided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_1/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_1/ShapeShapestrided_slice_18*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_1/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_1/Shape_1Shapestrided_slice_18*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_1/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_1/SubSub*softmax_cross_entropy_with_logits_1/Rank_1)softmax_cross_entropy_with_logits_1/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_1/Slice/beginPack'softmax_cross_entropy_with_logits_1/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_1/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_1/SliceSlice+softmax_cross_entropy_with_logits_1/Shape_1/softmax_cross_entropy_with_logits_1/Slice/begin.softmax_cross_entropy_with_logits_1/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_1/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_1/concat/axisConst*
dtype0*
value	B : 
å
*softmax_cross_entropy_with_logits_1/concatConcatV23softmax_cross_entropy_with_logits_1/concat/values_0)softmax_cross_entropy_with_logits_1/Slice/softmax_cross_entropy_with_logits_1/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_1/ReshapeReshapestrided_slice_18*softmax_cross_entropy_with_logits_1/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_1/Rank_2Const*
value	B :*
dtype0
X
+softmax_cross_entropy_with_logits_1/Shape_2Shape	Softmax_7*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_1/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_1/Sub_1Sub*softmax_cross_entropy_with_logits_1/Rank_2+softmax_cross_entropy_with_logits_1/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_1/Slice_1/beginPack)softmax_cross_entropy_with_logits_1/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_1/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_1/Slice_1Slice+softmax_cross_entropy_with_logits_1/Shape_21softmax_cross_entropy_with_logits_1/Slice_1/begin0softmax_cross_entropy_with_logits_1/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_1/concat_1/values_0Const*
dtype0*
valueB:
’’’’’’’’’
[
1softmax_cross_entropy_with_logits_1/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_1/concat_1ConcatV25softmax_cross_entropy_with_logits_1/concat_1/values_0+softmax_cross_entropy_with_logits_1/Slice_11softmax_cross_entropy_with_logits_1/concat_1/axis*

Tidx0*
T0*
N

-softmax_cross_entropy_with_logits_1/Reshape_1Reshape	Softmax_7,softmax_cross_entropy_with_logits_1/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_1SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_1/Reshape-softmax_cross_entropy_with_logits_1/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_1/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_1/Sub_2Sub(softmax_cross_entropy_with_logits_1/Rank+softmax_cross_entropy_with_logits_1/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_1/Slice_2/beginConst*
dtype0*
valueB: 

0softmax_cross_entropy_with_logits_1/Slice_2/sizePack)softmax_cross_entropy_with_logits_1/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_1/Slice_2Slice)softmax_cross_entropy_with_logits_1/Shape1softmax_cross_entropy_with_logits_1/Slice_2/begin0softmax_cross_entropy_with_logits_1/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_1/Reshape_2Reshape#softmax_cross_entropy_with_logits_1+softmax_cross_entropy_with_logits_1/Slice_2*
T0*
Tshape0
K
strided_slice_19/stackConst*
valueB"       *
dtype0
M
strided_slice_19/stack_1Const*
dtype0*
valueB"       
M
strided_slice_19/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_19StridedSliceaction_probsstrided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
/
	Softmax_8Softmaxstrided_slice_19*
T0
K
strided_slice_20/stackConst*
valueB"       *
dtype0
M
strided_slice_20/stack_1Const*
valueB"       *
dtype0
M
strided_slice_20/stack_2Const*
dtype0*
valueB"      
ō
strided_slice_20StridedSliceaction_probsstrided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
R
(softmax_cross_entropy_with_logits_2/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_2/ShapeShapestrided_slice_20*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_2/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_2/Shape_1Shapestrided_slice_20*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_2/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_2/SubSub*softmax_cross_entropy_with_logits_2/Rank_1)softmax_cross_entropy_with_logits_2/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_2/Slice/beginPack'softmax_cross_entropy_with_logits_2/Sub*
N*
T0*

axis 
\
.softmax_cross_entropy_with_logits_2/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_2/SliceSlice+softmax_cross_entropy_with_logits_2/Shape_1/softmax_cross_entropy_with_logits_2/Slice/begin.softmax_cross_entropy_with_logits_2/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_2/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_2/concat/axisConst*
dtype0*
value	B : 
å
*softmax_cross_entropy_with_logits_2/concatConcatV23softmax_cross_entropy_with_logits_2/concat/values_0)softmax_cross_entropy_with_logits_2/Slice/softmax_cross_entropy_with_logits_2/concat/axis*
N*

Tidx0*
T0

+softmax_cross_entropy_with_logits_2/ReshapeReshapestrided_slice_20*softmax_cross_entropy_with_logits_2/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_2/Rank_2Const*
dtype0*
value	B :
X
+softmax_cross_entropy_with_logits_2/Shape_2Shape	Softmax_8*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_2/Sub_1/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_2/Sub_1Sub*softmax_cross_entropy_with_logits_2/Rank_2+softmax_cross_entropy_with_logits_2/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_2/Slice_1/beginPack)softmax_cross_entropy_with_logits_2/Sub_1*
N*
T0*

axis 
^
0softmax_cross_entropy_with_logits_2/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_2/Slice_1Slice+softmax_cross_entropy_with_logits_2/Shape_21softmax_cross_entropy_with_logits_2/Slice_1/begin0softmax_cross_entropy_with_logits_2/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_2/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_2/concat_1/axisConst*
dtype0*
value	B : 
ķ
,softmax_cross_entropy_with_logits_2/concat_1ConcatV25softmax_cross_entropy_with_logits_2/concat_1/values_0+softmax_cross_entropy_with_logits_2/Slice_11softmax_cross_entropy_with_logits_2/concat_1/axis*
N*

Tidx0*
T0

-softmax_cross_entropy_with_logits_2/Reshape_1Reshape	Softmax_8,softmax_cross_entropy_with_logits_2/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_2SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_2/Reshape-softmax_cross_entropy_with_logits_2/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_2/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_2/Sub_2Sub(softmax_cross_entropy_with_logits_2/Rank+softmax_cross_entropy_with_logits_2/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_2/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_2/Slice_2/sizePack)softmax_cross_entropy_with_logits_2/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_2/Slice_2Slice)softmax_cross_entropy_with_logits_2/Shape1softmax_cross_entropy_with_logits_2/Slice_2/begin0softmax_cross_entropy_with_logits_2/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_2/Reshape_2Reshape#softmax_cross_entropy_with_logits_2+softmax_cross_entropy_with_logits_2/Slice_2*
T0*
Tshape0
¶
stackPack+softmax_cross_entropy_with_logits/Reshape_2-softmax_cross_entropy_with_logits_1/Reshape_2-softmax_cross_entropy_with_logits_2/Reshape_2*
T0*

axis*
N
A
Sum_6/reduction_indicesConst*
dtype0*
value	B :
R
Sum_6SumstackSum_6/reduction_indices*
	keep_dims( *

Tidx0*
T0
K
strided_slice_21/stackConst*
dtype0*
valueB"        
M
strided_slice_21/stack_1Const*
valueB"       *
dtype0
M
strided_slice_21/stack_2Const*
valueB"      *
dtype0
š
strided_slice_21StridedSliceconcat_2strided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
K
strided_slice_22/stackConst*
dtype0*
valueB"        
M
strided_slice_22/stack_1Const*
valueB"       *
dtype0
M
strided_slice_22/stack_2Const*
valueB"      *
dtype0
š
strided_slice_22StridedSliceconcat_1strided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
R
(softmax_cross_entropy_with_logits_3/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_3/ShapeShapestrided_slice_22*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_3/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_3/Shape_1Shapestrided_slice_22*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_3/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_3/SubSub*softmax_cross_entropy_with_logits_3/Rank_1)softmax_cross_entropy_with_logits_3/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_3/Slice/beginPack'softmax_cross_entropy_with_logits_3/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_3/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_3/SliceSlice+softmax_cross_entropy_with_logits_3/Shape_1/softmax_cross_entropy_with_logits_3/Slice/begin.softmax_cross_entropy_with_logits_3/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_3/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_3/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_3/concatConcatV23softmax_cross_entropy_with_logits_3/concat/values_0)softmax_cross_entropy_with_logits_3/Slice/softmax_cross_entropy_with_logits_3/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_3/ReshapeReshapestrided_slice_22*softmax_cross_entropy_with_logits_3/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_3/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_3/Shape_2Shapestrided_slice_21*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_3/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_3/Sub_1Sub*softmax_cross_entropy_with_logits_3/Rank_2+softmax_cross_entropy_with_logits_3/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_3/Slice_1/beginPack)softmax_cross_entropy_with_logits_3/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_3/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_3/Slice_1Slice+softmax_cross_entropy_with_logits_3/Shape_21softmax_cross_entropy_with_logits_3/Slice_1/begin0softmax_cross_entropy_with_logits_3/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_3/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_3/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_3/concat_1ConcatV25softmax_cross_entropy_with_logits_3/concat_1/values_0+softmax_cross_entropy_with_logits_3/Slice_11softmax_cross_entropy_with_logits_3/concat_1/axis*
N*

Tidx0*
T0

-softmax_cross_entropy_with_logits_3/Reshape_1Reshapestrided_slice_21,softmax_cross_entropy_with_logits_3/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_3SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_3/Reshape-softmax_cross_entropy_with_logits_3/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_3/Sub_2/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_3/Sub_2Sub(softmax_cross_entropy_with_logits_3/Rank+softmax_cross_entropy_with_logits_3/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_3/Slice_2/beginConst*
dtype0*
valueB: 

0softmax_cross_entropy_with_logits_3/Slice_2/sizePack)softmax_cross_entropy_with_logits_3/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_3/Slice_2Slice)softmax_cross_entropy_with_logits_3/Shape1softmax_cross_entropy_with_logits_3/Slice_2/begin0softmax_cross_entropy_with_logits_3/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_3/Reshape_2Reshape#softmax_cross_entropy_with_logits_3+softmax_cross_entropy_with_logits_3/Slice_2*
T0*
Tshape0
B
NegNeg-softmax_cross_entropy_with_logits_3/Reshape_2*
T0
K
strided_slice_23/stackConst*
valueB"       *
dtype0
M
strided_slice_23/stack_1Const*
valueB"       *
dtype0
M
strided_slice_23/stack_2Const*
valueB"      *
dtype0
š
strided_slice_23StridedSliceconcat_2strided_slice_23/stackstrided_slice_23/stack_1strided_slice_23/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
K
strided_slice_24/stackConst*
valueB"       *
dtype0
M
strided_slice_24/stack_1Const*
valueB"       *
dtype0
M
strided_slice_24/stack_2Const*
dtype0*
valueB"      
š
strided_slice_24StridedSliceconcat_1strided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_4/RankConst*
dtype0*
value	B :
]
)softmax_cross_entropy_with_logits_4/ShapeShapestrided_slice_24*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_4/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_4/Shape_1Shapestrided_slice_24*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_4/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_4/SubSub*softmax_cross_entropy_with_logits_4/Rank_1)softmax_cross_entropy_with_logits_4/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_4/Slice/beginPack'softmax_cross_entropy_with_logits_4/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_4/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_4/SliceSlice+softmax_cross_entropy_with_logits_4/Shape_1/softmax_cross_entropy_with_logits_4/Slice/begin.softmax_cross_entropy_with_logits_4/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_4/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_4/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_4/concatConcatV23softmax_cross_entropy_with_logits_4/concat/values_0)softmax_cross_entropy_with_logits_4/Slice/softmax_cross_entropy_with_logits_4/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_4/ReshapeReshapestrided_slice_24*softmax_cross_entropy_with_logits_4/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_4/Rank_2Const*
dtype0*
value	B :
_
+softmax_cross_entropy_with_logits_4/Shape_2Shapestrided_slice_23*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_4/Sub_1/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_4/Sub_1Sub*softmax_cross_entropy_with_logits_4/Rank_2+softmax_cross_entropy_with_logits_4/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_4/Slice_1/beginPack)softmax_cross_entropy_with_logits_4/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_4/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_4/Slice_1Slice+softmax_cross_entropy_with_logits_4/Shape_21softmax_cross_entropy_with_logits_4/Slice_1/begin0softmax_cross_entropy_with_logits_4/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_4/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_4/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_4/concat_1ConcatV25softmax_cross_entropy_with_logits_4/concat_1/values_0+softmax_cross_entropy_with_logits_4/Slice_11softmax_cross_entropy_with_logits_4/concat_1/axis*

Tidx0*
T0*
N

-softmax_cross_entropy_with_logits_4/Reshape_1Reshapestrided_slice_23,softmax_cross_entropy_with_logits_4/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_4SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_4/Reshape-softmax_cross_entropy_with_logits_4/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_4/Sub_2/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_4/Sub_2Sub(softmax_cross_entropy_with_logits_4/Rank+softmax_cross_entropy_with_logits_4/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_4/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_4/Slice_2/sizePack)softmax_cross_entropy_with_logits_4/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_4/Slice_2Slice)softmax_cross_entropy_with_logits_4/Shape1softmax_cross_entropy_with_logits_4/Slice_2/begin0softmax_cross_entropy_with_logits_4/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_4/Reshape_2Reshape#softmax_cross_entropy_with_logits_4+softmax_cross_entropy_with_logits_4/Slice_2*
T0*
Tshape0
D
Neg_1Neg-softmax_cross_entropy_with_logits_4/Reshape_2*
T0
K
strided_slice_25/stackConst*
valueB"       *
dtype0
M
strided_slice_25/stack_1Const*
valueB"       *
dtype0
M
strided_slice_25/stack_2Const*
valueB"      *
dtype0
š
strided_slice_25StridedSliceconcat_2strided_slice_25/stackstrided_slice_25/stack_1strided_slice_25/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
K
strided_slice_26/stackConst*
valueB"       *
dtype0
M
strided_slice_26/stack_1Const*
valueB"       *
dtype0
M
strided_slice_26/stack_2Const*
valueB"      *
dtype0
š
strided_slice_26StridedSliceconcat_1strided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_5/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_5/ShapeShapestrided_slice_26*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_5/Rank_1Const*
dtype0*
value	B :
_
+softmax_cross_entropy_with_logits_5/Shape_1Shapestrided_slice_26*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_5/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_5/SubSub*softmax_cross_entropy_with_logits_5/Rank_1)softmax_cross_entropy_with_logits_5/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_5/Slice/beginPack'softmax_cross_entropy_with_logits_5/Sub*
N*
T0*

axis 
\
.softmax_cross_entropy_with_logits_5/Slice/sizeConst*
dtype0*
valueB:
Ö
)softmax_cross_entropy_with_logits_5/SliceSlice+softmax_cross_entropy_with_logits_5/Shape_1/softmax_cross_entropy_with_logits_5/Slice/begin.softmax_cross_entropy_with_logits_5/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_5/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_5/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_5/concatConcatV23softmax_cross_entropy_with_logits_5/concat/values_0)softmax_cross_entropy_with_logits_5/Slice/softmax_cross_entropy_with_logits_5/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_5/ReshapeReshapestrided_slice_26*softmax_cross_entropy_with_logits_5/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_5/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_5/Shape_2Shapestrided_slice_25*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_5/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_5/Sub_1Sub*softmax_cross_entropy_with_logits_5/Rank_2+softmax_cross_entropy_with_logits_5/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_5/Slice_1/beginPack)softmax_cross_entropy_with_logits_5/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_5/Slice_1/sizeConst*
dtype0*
valueB:
Ü
+softmax_cross_entropy_with_logits_5/Slice_1Slice+softmax_cross_entropy_with_logits_5/Shape_21softmax_cross_entropy_with_logits_5/Slice_1/begin0softmax_cross_entropy_with_logits_5/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_5/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_5/concat_1/axisConst*
dtype0*
value	B : 
ķ
,softmax_cross_entropy_with_logits_5/concat_1ConcatV25softmax_cross_entropy_with_logits_5/concat_1/values_0+softmax_cross_entropy_with_logits_5/Slice_11softmax_cross_entropy_with_logits_5/concat_1/axis*
N*

Tidx0*
T0

-softmax_cross_entropy_with_logits_5/Reshape_1Reshapestrided_slice_25,softmax_cross_entropy_with_logits_5/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_5SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_5/Reshape-softmax_cross_entropy_with_logits_5/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_5/Sub_2/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_5/Sub_2Sub(softmax_cross_entropy_with_logits_5/Rank+softmax_cross_entropy_with_logits_5/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_5/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_5/Slice_2/sizePack)softmax_cross_entropy_with_logits_5/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_5/Slice_2Slice)softmax_cross_entropy_with_logits_5/Shape1softmax_cross_entropy_with_logits_5/Slice_2/begin0softmax_cross_entropy_with_logits_5/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_5/Reshape_2Reshape#softmax_cross_entropy_with_logits_5+softmax_cross_entropy_with_logits_5/Slice_2*
T0*
Tshape0
D
Neg_2Neg-softmax_cross_entropy_with_logits_5/Reshape_2*
T0
@
stack_1PackNegNeg_1Neg_2*
T0*

axis*
N
A
Sum_7/reduction_indicesConst*
dtype0*
value	B :
T
Sum_7Sumstack_1Sum_7/reduction_indices*
T0*
	keep_dims(*

Tidx0
K
strided_slice_27/stackConst*
valueB"        *
dtype0
M
strided_slice_27/stack_1Const*
valueB"       *
dtype0
M
strided_slice_27/stack_2Const*
valueB"      *
dtype0
š
strided_slice_27StridedSliceconcat_2strided_slice_27/stackstrided_slice_27/stack_1strided_slice_27/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
K
strided_slice_28/stackConst*
valueB"        *
dtype0
M
strided_slice_28/stack_1Const*
dtype0*
valueB"       
M
strided_slice_28/stack_2Const*
valueB"      *
dtype0
š
strided_slice_28StridedSliceconcat_4strided_slice_28/stackstrided_slice_28/stack_1strided_slice_28/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_6/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_6/ShapeShapestrided_slice_28*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_6/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_6/Shape_1Shapestrided_slice_28*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_6/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_6/SubSub*softmax_cross_entropy_with_logits_6/Rank_1)softmax_cross_entropy_with_logits_6/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_6/Slice/beginPack'softmax_cross_entropy_with_logits_6/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_6/Slice/sizeConst*
dtype0*
valueB:
Ö
)softmax_cross_entropy_with_logits_6/SliceSlice+softmax_cross_entropy_with_logits_6/Shape_1/softmax_cross_entropy_with_logits_6/Slice/begin.softmax_cross_entropy_with_logits_6/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_6/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_6/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_6/concatConcatV23softmax_cross_entropy_with_logits_6/concat/values_0)softmax_cross_entropy_with_logits_6/Slice/softmax_cross_entropy_with_logits_6/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_6/ReshapeReshapestrided_slice_28*softmax_cross_entropy_with_logits_6/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_6/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_6/Shape_2Shapestrided_slice_27*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_6/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_6/Sub_1Sub*softmax_cross_entropy_with_logits_6/Rank_2+softmax_cross_entropy_with_logits_6/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_6/Slice_1/beginPack)softmax_cross_entropy_with_logits_6/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_6/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_6/Slice_1Slice+softmax_cross_entropy_with_logits_6/Shape_21softmax_cross_entropy_with_logits_6/Slice_1/begin0softmax_cross_entropy_with_logits_6/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_6/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_6/concat_1/axisConst*
dtype0*
value	B : 
ķ
,softmax_cross_entropy_with_logits_6/concat_1ConcatV25softmax_cross_entropy_with_logits_6/concat_1/values_0+softmax_cross_entropy_with_logits_6/Slice_11softmax_cross_entropy_with_logits_6/concat_1/axis*
N*

Tidx0*
T0

-softmax_cross_entropy_with_logits_6/Reshape_1Reshapestrided_slice_27,softmax_cross_entropy_with_logits_6/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_6SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_6/Reshape-softmax_cross_entropy_with_logits_6/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_6/Sub_2/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_6/Sub_2Sub(softmax_cross_entropy_with_logits_6/Rank+softmax_cross_entropy_with_logits_6/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_6/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_6/Slice_2/sizePack)softmax_cross_entropy_with_logits_6/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_6/Slice_2Slice)softmax_cross_entropy_with_logits_6/Shape1softmax_cross_entropy_with_logits_6/Slice_2/begin0softmax_cross_entropy_with_logits_6/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_6/Reshape_2Reshape#softmax_cross_entropy_with_logits_6+softmax_cross_entropy_with_logits_6/Slice_2*
T0*
Tshape0
D
Neg_3Neg-softmax_cross_entropy_with_logits_6/Reshape_2*
T0
K
strided_slice_29/stackConst*
valueB"       *
dtype0
M
strided_slice_29/stack_1Const*
valueB"       *
dtype0
M
strided_slice_29/stack_2Const*
dtype0*
valueB"      
š
strided_slice_29StridedSliceconcat_2strided_slice_29/stackstrided_slice_29/stack_1strided_slice_29/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
K
strided_slice_30/stackConst*
dtype0*
valueB"       
M
strided_slice_30/stack_1Const*
dtype0*
valueB"       
M
strided_slice_30/stack_2Const*
valueB"      *
dtype0
š
strided_slice_30StridedSliceconcat_4strided_slice_30/stackstrided_slice_30/stack_1strided_slice_30/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
R
(softmax_cross_entropy_with_logits_7/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_7/ShapeShapestrided_slice_30*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_7/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_7/Shape_1Shapestrided_slice_30*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_7/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_7/SubSub*softmax_cross_entropy_with_logits_7/Rank_1)softmax_cross_entropy_with_logits_7/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_7/Slice/beginPack'softmax_cross_entropy_with_logits_7/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_7/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_7/SliceSlice+softmax_cross_entropy_with_logits_7/Shape_1/softmax_cross_entropy_with_logits_7/Slice/begin.softmax_cross_entropy_with_logits_7/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_7/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_7/concat/axisConst*
dtype0*
value	B : 
å
*softmax_cross_entropy_with_logits_7/concatConcatV23softmax_cross_entropy_with_logits_7/concat/values_0)softmax_cross_entropy_with_logits_7/Slice/softmax_cross_entropy_with_logits_7/concat/axis*
N*

Tidx0*
T0

+softmax_cross_entropy_with_logits_7/ReshapeReshapestrided_slice_30*softmax_cross_entropy_with_logits_7/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_7/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_7/Shape_2Shapestrided_slice_29*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_7/Sub_1/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_7/Sub_1Sub*softmax_cross_entropy_with_logits_7/Rank_2+softmax_cross_entropy_with_logits_7/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_7/Slice_1/beginPack)softmax_cross_entropy_with_logits_7/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_7/Slice_1/sizeConst*
dtype0*
valueB:
Ü
+softmax_cross_entropy_with_logits_7/Slice_1Slice+softmax_cross_entropy_with_logits_7/Shape_21softmax_cross_entropy_with_logits_7/Slice_1/begin0softmax_cross_entropy_with_logits_7/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_7/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_7/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_7/concat_1ConcatV25softmax_cross_entropy_with_logits_7/concat_1/values_0+softmax_cross_entropy_with_logits_7/Slice_11softmax_cross_entropy_with_logits_7/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_7/Reshape_1Reshapestrided_slice_29,softmax_cross_entropy_with_logits_7/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_7SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_7/Reshape-softmax_cross_entropy_with_logits_7/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_7/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_7/Sub_2Sub(softmax_cross_entropy_with_logits_7/Rank+softmax_cross_entropy_with_logits_7/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_7/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_7/Slice_2/sizePack)softmax_cross_entropy_with_logits_7/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_7/Slice_2Slice)softmax_cross_entropy_with_logits_7/Shape1softmax_cross_entropy_with_logits_7/Slice_2/begin0softmax_cross_entropy_with_logits_7/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_7/Reshape_2Reshape#softmax_cross_entropy_with_logits_7+softmax_cross_entropy_with_logits_7/Slice_2*
T0*
Tshape0
D
Neg_4Neg-softmax_cross_entropy_with_logits_7/Reshape_2*
T0
K
strided_slice_31/stackConst*
dtype0*
valueB"       
M
strided_slice_31/stack_1Const*
valueB"       *
dtype0
M
strided_slice_31/stack_2Const*
dtype0*
valueB"      
š
strided_slice_31StridedSliceconcat_2strided_slice_31/stackstrided_slice_31/stack_1strided_slice_31/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_32/stackConst*
valueB"       *
dtype0
M
strided_slice_32/stack_1Const*
valueB"       *
dtype0
M
strided_slice_32/stack_2Const*
valueB"      *
dtype0
š
strided_slice_32StridedSliceconcat_4strided_slice_32/stackstrided_slice_32/stack_1strided_slice_32/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_8/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_8/ShapeShapestrided_slice_32*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_8/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_8/Shape_1Shapestrided_slice_32*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_8/Sub/yConst*
dtype0*
value	B :

'softmax_cross_entropy_with_logits_8/SubSub*softmax_cross_entropy_with_logits_8/Rank_1)softmax_cross_entropy_with_logits_8/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_8/Slice/beginPack'softmax_cross_entropy_with_logits_8/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_8/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_8/SliceSlice+softmax_cross_entropy_with_logits_8/Shape_1/softmax_cross_entropy_with_logits_8/Slice/begin.softmax_cross_entropy_with_logits_8/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_8/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_8/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_8/concatConcatV23softmax_cross_entropy_with_logits_8/concat/values_0)softmax_cross_entropy_with_logits_8/Slice/softmax_cross_entropy_with_logits_8/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_8/ReshapeReshapestrided_slice_32*softmax_cross_entropy_with_logits_8/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_8/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_8/Shape_2Shapestrided_slice_31*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_8/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_8/Sub_1Sub*softmax_cross_entropy_with_logits_8/Rank_2+softmax_cross_entropy_with_logits_8/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_8/Slice_1/beginPack)softmax_cross_entropy_with_logits_8/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_8/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_8/Slice_1Slice+softmax_cross_entropy_with_logits_8/Shape_21softmax_cross_entropy_with_logits_8/Slice_1/begin0softmax_cross_entropy_with_logits_8/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_8/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_8/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_8/concat_1ConcatV25softmax_cross_entropy_with_logits_8/concat_1/values_0+softmax_cross_entropy_with_logits_8/Slice_11softmax_cross_entropy_with_logits_8/concat_1/axis*
N*

Tidx0*
T0

-softmax_cross_entropy_with_logits_8/Reshape_1Reshapestrided_slice_31,softmax_cross_entropy_with_logits_8/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_8SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_8/Reshape-softmax_cross_entropy_with_logits_8/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_8/Sub_2/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_8/Sub_2Sub(softmax_cross_entropy_with_logits_8/Rank+softmax_cross_entropy_with_logits_8/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_8/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_8/Slice_2/sizePack)softmax_cross_entropy_with_logits_8/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_8/Slice_2Slice)softmax_cross_entropy_with_logits_8/Shape1softmax_cross_entropy_with_logits_8/Slice_2/begin0softmax_cross_entropy_with_logits_8/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_8/Reshape_2Reshape#softmax_cross_entropy_with_logits_8+softmax_cross_entropy_with_logits_8/Slice_2*
T0*
Tshape0
D
Neg_5Neg-softmax_cross_entropy_with_logits_8/Reshape_2*
T0
B
stack_2PackNeg_3Neg_4Neg_5*
T0*

axis*
N
A
Sum_8/reduction_indicesConst*
value	B :*
dtype0
T
Sum_8Sumstack_2Sum_8/reduction_indices*
T0*
	keep_dims(*

Tidx0
Q
next_vector_observationPlaceholder*
dtype0*
shape:’’’’’’’’’	
±
Evector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB"	      *
dtype0
Ø
Dvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB
 *    *
dtype0
Ŗ
Fvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB
 *Ā>*
dtype0

Ovector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
seed±*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
dtype0*
seed2
£
Cvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/mulMulOvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalFvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

?vector_obs_encoder/hidden_0/kernel/Initializer/truncated_normalAddCvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/mulDvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
®
"vector_obs_encoder/hidden_0/kernel
VariableV2*
dtype0*
	container *
shape:		*
shared_name *5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

)vector_obs_encoder/hidden_0/kernel/AssignAssign"vector_obs_encoder/hidden_0/kernel?vector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(

'vector_obs_encoder/hidden_0/kernel/readIdentity"vector_obs_encoder/hidden_0/kernel*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¦
Bvector_obs_encoder/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB:*
dtype0

8vector_obs_encoder/hidden_0/bias/Initializer/zeros/ConstConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB
 *    *
dtype0

2vector_obs_encoder/hidden_0/bias/Initializer/zerosFillBvector_obs_encoder/hidden_0/bias/Initializer/zeros/shape_as_tensor8vector_obs_encoder/hidden_0/bias/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*

index_type0
¦
 vector_obs_encoder/hidden_0/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
ī
'vector_obs_encoder/hidden_0/bias/AssignAssign vector_obs_encoder/hidden_0/bias2vector_obs_encoder/hidden_0/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

%vector_obs_encoder/hidden_0/bias/readIdentity vector_obs_encoder/hidden_0/bias*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

"vector_obs_encoder/hidden_0/MatMulMatMulvector_observation'vector_obs_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 

#vector_obs_encoder/hidden_0/BiasAddBiasAdd"vector_obs_encoder/hidden_0/MatMul%vector_obs_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
\
#vector_obs_encoder/hidden_0/SigmoidSigmoid#vector_obs_encoder/hidden_0/BiasAdd*
T0
y
vector_obs_encoder/hidden_0/MulMul#vector_obs_encoder/hidden_0/BiasAdd#vector_obs_encoder/hidden_0/Sigmoid*
T0
±
Evector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB"      
Ø
Dvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB
 *    *
dtype0
Ŗ
Fvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB
 *ŠdĪ=

Ovector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
seed±*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
dtype0*
seed2©
£
Cvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/mulMulOvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalFvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

?vector_obs_encoder/hidden_1/kernel/Initializer/truncated_normalAddCvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/mulDvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
Æ
"vector_obs_encoder/hidden_1/kernel
VariableV2*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
dtype0*
	container *
shape:
*
shared_name 

)vector_obs_encoder/hidden_1/kernel/AssignAssign"vector_obs_encoder/hidden_1/kernel?vector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal*
validate_shape(*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

'vector_obs_encoder/hidden_1/kernel/readIdentity"vector_obs_encoder/hidden_1/kernel*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¦
Bvector_obs_encoder/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB:

8vector_obs_encoder/hidden_1/bias/Initializer/zeros/ConstConst*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB
 *    *
dtype0

2vector_obs_encoder/hidden_1/bias/Initializer/zerosFillBvector_obs_encoder/hidden_1/bias/Initializer/zeros/shape_as_tensor8vector_obs_encoder/hidden_1/bias/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*

index_type0
¦
 vector_obs_encoder/hidden_1/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
ī
'vector_obs_encoder/hidden_1/bias/AssignAssign vector_obs_encoder/hidden_1/bias2vector_obs_encoder/hidden_1/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

%vector_obs_encoder/hidden_1/bias/readIdentity vector_obs_encoder/hidden_1/bias*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
„
"vector_obs_encoder/hidden_1/MatMulMatMulvector_obs_encoder/hidden_0/Mul'vector_obs_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 

#vector_obs_encoder/hidden_1/BiasAddBiasAdd"vector_obs_encoder/hidden_1/MatMul%vector_obs_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
\
#vector_obs_encoder/hidden_1/SigmoidSigmoid#vector_obs_encoder/hidden_1/BiasAdd*
T0
y
vector_obs_encoder/hidden_1/MulMul#vector_obs_encoder/hidden_1/BiasAdd#vector_obs_encoder/hidden_1/Sigmoid*
T0

$vector_obs_encoder_1/hidden_0/MatMulMatMulnext_vector_observation'vector_obs_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 

%vector_obs_encoder_1/hidden_0/BiasAddBiasAdd$vector_obs_encoder_1/hidden_0/MatMul%vector_obs_encoder/hidden_0/bias/read*
data_formatNHWC*
T0
`
%vector_obs_encoder_1/hidden_0/SigmoidSigmoid%vector_obs_encoder_1/hidden_0/BiasAdd*
T0

!vector_obs_encoder_1/hidden_0/MulMul%vector_obs_encoder_1/hidden_0/BiasAdd%vector_obs_encoder_1/hidden_0/Sigmoid*
T0
©
$vector_obs_encoder_1/hidden_1/MatMulMatMul!vector_obs_encoder_1/hidden_0/Mul'vector_obs_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 

%vector_obs_encoder_1/hidden_1/BiasAddBiasAdd$vector_obs_encoder_1/hidden_1/MatMul%vector_obs_encoder/hidden_1/bias/read*
data_formatNHWC*
T0
`
%vector_obs_encoder_1/hidden_1/SigmoidSigmoid%vector_obs_encoder_1/hidden_1/BiasAdd*
T0

!vector_obs_encoder_1/hidden_1/MulMul%vector_obs_encoder_1/hidden_1/BiasAdd%vector_obs_encoder_1/hidden_1/Sigmoid*
T0
=
concat_5/concat_dimConst*
dtype0*
value	B :
>
concat_5Identityvector_obs_encoder/hidden_1/Mul*
T0
=
concat_6/concat_dimConst*
dtype0*
value	B :
@
concat_6Identity!vector_obs_encoder_1/hidden_1/Mul*
T0
7
concat_7/axisConst*
value	B :*
dtype0
U
concat_7ConcatV2concat_5concat_6concat_7/axis*
N*

Tidx0*
T0

/dense_4/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_4/kernel*
valueB"      *
dtype0
}
-dense_4/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_4/kernel*
valueB
 *×³Ż½*
dtype0
}
-dense_4/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_4/kernel*
valueB
 *×³Ż=*
dtype0
Ķ
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_4/kernel*
dtype0*
seed2Ź*
seed±
¾
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel
Č
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_4/kernel
ŗ
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel

dense_4/kernel
VariableV2*
dtype0*
	container *
shape:
*
shared_name *!
_class
loc:@dense_4/kernel
Æ
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(
[
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel
~
.dense_4/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@dense_4/bias*
valueB:
r
$dense_4/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_4/bias*
valueB
 *    *
dtype0
ø
dense_4/bias/Initializer/zerosFill.dense_4/bias/Initializer/zeros/shape_as_tensor$dense_4/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_4/bias*

index_type0
~
dense_4/bias
VariableV2*
_class
loc:@dense_4/bias*
dtype0*
	container *
shape:*
shared_name 

dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(
U
dense_4/bias/readIdentitydense_4/bias*
T0*
_class
loc:@dense_4/bias
f
dense_4/MatMulMatMulconcat_7dense_4/kernel/read*
transpose_a( *
transpose_b( *
T0
]
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
T0*
data_formatNHWC
4
dense_4/SigmoidSigmoiddense_4/BiasAdd*
T0
=
dense_4/MulMuldense_4/BiasAdddense_4/Sigmoid*
T0

/dense_5/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_5/kernel*
valueB"      *
dtype0
}
-dense_5/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_5/kernel*
valueB
 *VŪ¾*
dtype0
}
-dense_5/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_5/kernel*
valueB
 *VŪ>
Ķ
7dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_5/kernel/Initializer/random_uniform/shape*
dtype0*
seed2Ž*
seed±*
T0*!
_class
loc:@dense_5/kernel
¾
-dense_5/kernel/Initializer/random_uniform/subSub-dense_5/kernel/Initializer/random_uniform/max-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel
Č
-dense_5/kernel/Initializer/random_uniform/mulMul7dense_5/kernel/Initializer/random_uniform/RandomUniform-dense_5/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_5/kernel
ŗ
)dense_5/kernel/Initializer/random_uniformAdd-dense_5/kernel/Initializer/random_uniform/mul-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel

dense_5/kernel
VariableV2*
shared_name *!
_class
loc:@dense_5/kernel*
dtype0*
	container *
shape:	
Æ
dense_5/kernel/AssignAssigndense_5/kernel)dense_5/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(
[
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel
}
.dense_5/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@dense_5/bias*
valueB:
r
$dense_5/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_5/bias*
valueB
 *    *
dtype0
ø
dense_5/bias/Initializer/zerosFill.dense_5/bias/Initializer/zeros/shape_as_tensor$dense_5/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_5/bias*

index_type0
}
dense_5/bias
VariableV2*
shared_name *
_class
loc:@dense_5/bias*
dtype0*
	container *
shape:

dense_5/bias/AssignAssigndense_5/biasdense_5/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(
U
dense_5/bias/readIdentitydense_5/bias*
T0*
_class
loc:@dense_5/bias
i
dense_5/MatMulMatMuldense_4/Muldense_5/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*
T0*
data_formatNHWC
4
dense_5/SoftmaxSoftmaxdense_5/BiasAdd*
T0

/dense_6/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_6/kernel*
valueB"      *
dtype0
}
-dense_6/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_6/kernel*
valueB
 *VŪ¾*
dtype0
}
-dense_6/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_6/kernel*
valueB
 *VŪ>*
dtype0
Ķ
7dense_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_6/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_6/kernel*
dtype0*
seed2ń*
seed±
¾
-dense_6/kernel/Initializer/random_uniform/subSub-dense_6/kernel/Initializer/random_uniform/max-dense_6/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_6/kernel
Č
-dense_6/kernel/Initializer/random_uniform/mulMul7dense_6/kernel/Initializer/random_uniform/RandomUniform-dense_6/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_6/kernel
ŗ
)dense_6/kernel/Initializer/random_uniformAdd-dense_6/kernel/Initializer/random_uniform/mul-dense_6/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_6/kernel

dense_6/kernel
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_6/kernel*
dtype0*
	container 
Æ
dense_6/kernel/AssignAssigndense_6/kernel)dense_6/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_6/kernel*
validate_shape(
[
dense_6/kernel/readIdentitydense_6/kernel*
T0*!
_class
loc:@dense_6/kernel
}
.dense_6/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_6/bias*
valueB:*
dtype0
r
$dense_6/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_6/bias*
valueB
 *    *
dtype0
ø
dense_6/bias/Initializer/zerosFill.dense_6/bias/Initializer/zeros/shape_as_tensor$dense_6/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_6/bias*

index_type0
}
dense_6/bias
VariableV2*
_class
loc:@dense_6/bias*
dtype0*
	container *
shape:*
shared_name 

dense_6/bias/AssignAssigndense_6/biasdense_6/bias/Initializer/zeros*
T0*
_class
loc:@dense_6/bias*
validate_shape(*
use_locking(
U
dense_6/bias/readIdentitydense_6/bias*
T0*
_class
loc:@dense_6/bias
i
dense_6/MatMulMatMuldense_4/Muldense_6/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_6/BiasAddBiasAdddense_6/MatMuldense_6/bias/read*
data_formatNHWC*
T0
4
dense_6/SoftmaxSoftmaxdense_6/BiasAdd*
T0

/dense_7/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_7/kernel*
valueB"      *
dtype0
}
-dense_7/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_7/kernel*
valueB
 *(¾
}
-dense_7/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_7/kernel*
valueB
 *(>
Ķ
7dense_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_7/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_7/kernel*
dtype0*
seed2*
seed±
¾
-dense_7/kernel/Initializer/random_uniform/subSub-dense_7/kernel/Initializer/random_uniform/max-dense_7/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_7/kernel
Č
-dense_7/kernel/Initializer/random_uniform/mulMul7dense_7/kernel/Initializer/random_uniform/RandomUniform-dense_7/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_7/kernel
ŗ
)dense_7/kernel/Initializer/random_uniformAdd-dense_7/kernel/Initializer/random_uniform/mul-dense_7/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_7/kernel

dense_7/kernel
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_7/kernel*
dtype0*
	container 
Æ
dense_7/kernel/AssignAssigndense_7/kernel)dense_7/kernel/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_7/kernel
[
dense_7/kernel/readIdentitydense_7/kernel*
T0*!
_class
loc:@dense_7/kernel
}
.dense_7/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_7/bias*
valueB:*
dtype0
r
$dense_7/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_7/bias*
valueB
 *    *
dtype0
ø
dense_7/bias/Initializer/zerosFill.dense_7/bias/Initializer/zeros/shape_as_tensor$dense_7/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_7/bias*

index_type0
}
dense_7/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense_7/bias*
dtype0*
	container 

dense_7/bias/AssignAssigndense_7/biasdense_7/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_7/bias*
validate_shape(
U
dense_7/bias/readIdentitydense_7/bias*
T0*
_class
loc:@dense_7/bias
i
dense_7/MatMulMatMuldense_4/Muldense_7/kernel/read*
transpose_a( *
transpose_b( *
T0
]
dense_7/BiasAddBiasAdddense_7/MatMuldense_7/bias/read*
T0*
data_formatNHWC
4
dense_7/SoftmaxSoftmaxdense_7/BiasAdd*
T0
7
concat_8/axisConst*
value	B :*
dtype0
t
concat_8ConcatV2dense_5/Softmaxdense_6/Softmaxdense_7/Softmaxconcat_8/axis*

Tidx0*
T0*
N
5
add_12/yConst*
valueB
 *’ęŪ.*
dtype0
*
add_12Addconcat_8add_12/y*
T0

Log_12Logadd_12*
T0

Neg_6NegLog_12*
T0
(
mulMulNeg_6StopGradient*
T0
A
Sum_9/reduction_indicesConst*
value	B :*
dtype0
P
Sum_9SummulSum_9/reduction_indices*
	keep_dims( *

Tidx0*
T0
P
DynamicPartitionDynamicPartitionSum_9Cast*
T0*
num_partitions
3
ConstConst*
valueB: *
dtype0
M
MeanMeanDynamicPartition:1Const*
T0*
	keep_dims( *

Tidx0
7
concat_9/axisConst*
dtype0*
value	B :
Y
concat_9ConcatV2concat_5StopGradientconcat_9/axis*
T0*
N*

Tidx0

/dense_8/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_8/kernel*
valueB"      *
dtype0
}
-dense_8/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_8/kernel*
valueB
 *Ń_ż½
}
-dense_8/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_8/kernel*
valueB
 *Ń_ż=*
dtype0
Ķ
7dense_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_8/kernel/Initializer/random_uniform/shape*
seed±*
T0*!
_class
loc:@dense_8/kernel*
dtype0*
seed2„
¾
-dense_8/kernel/Initializer/random_uniform/subSub-dense_8/kernel/Initializer/random_uniform/max-dense_8/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_8/kernel
Č
-dense_8/kernel/Initializer/random_uniform/mulMul7dense_8/kernel/Initializer/random_uniform/RandomUniform-dense_8/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_8/kernel
ŗ
)dense_8/kernel/Initializer/random_uniformAdd-dense_8/kernel/Initializer/random_uniform/mul-dense_8/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_8/kernel

dense_8/kernel
VariableV2*!
_class
loc:@dense_8/kernel*
dtype0*
	container *
shape:
*
shared_name 
Æ
dense_8/kernel/AssignAssigndense_8/kernel)dense_8/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_8/kernel*
validate_shape(*
use_locking(
[
dense_8/kernel/readIdentitydense_8/kernel*
T0*!
_class
loc:@dense_8/kernel
~
.dense_8/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_8/bias*
valueB:*
dtype0
r
$dense_8/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_8/bias*
valueB
 *    *
dtype0
ø
dense_8/bias/Initializer/zerosFill.dense_8/bias/Initializer/zeros/shape_as_tensor$dense_8/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_8/bias*

index_type0
~
dense_8/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_8/bias

dense_8/bias/AssignAssigndense_8/biasdense_8/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_8/bias*
validate_shape(
U
dense_8/bias/readIdentitydense_8/bias*
T0*
_class
loc:@dense_8/bias
f
dense_8/MatMulMatMulconcat_9dense_8/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_8/BiasAddBiasAdddense_8/MatMuldense_8/bias/read*
data_formatNHWC*
T0
4
dense_8/SigmoidSigmoiddense_8/BiasAdd*
T0
=
dense_8/MulMuldense_8/BiasAdddense_8/Sigmoid*
T0

/dense_9/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_9/kernel*
valueB"      
}
-dense_9/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_9/kernel*
valueB
 *   ¾*
dtype0
}
-dense_9/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_9/kernel*
valueB
 *   >*
dtype0
Ķ
7dense_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_9/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_9/kernel*
dtype0*
seed2¹*
seed±
¾
-dense_9/kernel/Initializer/random_uniform/subSub-dense_9/kernel/Initializer/random_uniform/max-dense_9/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_9/kernel
Č
-dense_9/kernel/Initializer/random_uniform/mulMul7dense_9/kernel/Initializer/random_uniform/RandomUniform-dense_9/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_9/kernel
ŗ
)dense_9/kernel/Initializer/random_uniformAdd-dense_9/kernel/Initializer/random_uniform/mul-dense_9/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_9/kernel

dense_9/kernel
VariableV2*!
_class
loc:@dense_9/kernel*
dtype0*
	container *
shape:
*
shared_name 
Æ
dense_9/kernel/AssignAssigndense_9/kernel)dense_9/kernel/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_9/kernel
[
dense_9/kernel/readIdentitydense_9/kernel*
T0*!
_class
loc:@dense_9/kernel
~
.dense_9/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@dense_9/bias*
valueB:
r
$dense_9/bias/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_9/bias*
valueB
 *    
ø
dense_9/bias/Initializer/zerosFill.dense_9/bias/Initializer/zeros/shape_as_tensor$dense_9/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_9/bias*

index_type0
~
dense_9/bias
VariableV2*
shared_name *
_class
loc:@dense_9/bias*
dtype0*
	container *
shape:

dense_9/bias/AssignAssigndense_9/biasdense_9/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_9/bias*
validate_shape(
U
dense_9/bias/readIdentitydense_9/bias*
T0*
_class
loc:@dense_9/bias
i
dense_9/MatMulMatMuldense_8/Muldense_9/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_9/BiasAddBiasAdddense_9/MatMuldense_9/bias/read*
data_formatNHWC*
T0
J
SquaredDifferenceSquaredDifferencedense_9/BiasAddconcat_6*
T0
B
Sum_10/reduction_indicesConst*
dtype0*
value	B :
`
Sum_10SumSquaredDifferenceSum_10/reduction_indices*
T0*
	keep_dims( *

Tidx0
4
mul_1/xConst*
valueB
 *   ?*
dtype0
&
mul_1Mulmul_1/xSum_10*
T0
4
mul_2/xConst*
valueB
 *
×#<*
dtype0
%
mul_2Mulmul_2/xmul_1*
T0
D
clip_by_value/Minimum/yConst*
dtype0*
valueB
 *  ?
I
clip_by_value/MinimumMinimummul_2clip_by_value/Minimum/y*
T0
<
clip_by_value/yConst*
valueB
 *    *
dtype0
I
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0
R
DynamicPartition_1DynamicPartitionmul_1Cast*
T0*
num_partitions
5
Const_1Const*
valueB: *
dtype0
S
Mean_1MeanDynamicPartition_1:1Const_1*
	keep_dims( *

Tidx0*
T0
H
discounted_rewardsPlaceholder*
dtype0*
shape:’’’’’’’’’
D

advantagesPlaceholder*
dtype0*
shape:’’’’’’’’’
J
PolynomialDecay/learning_rateConst*
valueB
 *RI9*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

SrcT0*

DstT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * $ōI*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *’ęŪ.*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
I
old_value_estimatesPlaceholder*
dtype0*
shape:’’’’’’’’’
L
PolynomialDecay_1/learning_rateConst*
valueB
 *ĶĢL>*
dtype0
H
PolynomialDecay_1/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 * $ōI*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *ĶĢĢ=*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *
×£;*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * $ōI*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
dtype0*
valueB
 *  ?
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
B
Sum_11/reduction_indicesConst*
dtype0*
value	B :
]
Sum_11Sumvalue_estimateSum_11/reduction_indices*
	keep_dims( *

Tidx0*
T0
0
subSubSum_11old_value_estimates*
T0
(
Neg_7NegPolynomialDecay_1*
T0
C
clip_by_value_1/MinimumMinimumsubPolynomialDecay_1*
T0
C
clip_by_value_1Maximumclip_by_value_1/MinimumNeg_7*
T0
<
add_13Addold_value_estimatesclip_by_value_1*
T0
B
Sum_12/reduction_indicesConst*
value	B :*
dtype0
]
Sum_12Sumvalue_estimateSum_12/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
SquaredDifference_1SquaredDifferencediscounted_rewardsSum_12*
T0
M
SquaredDifference_2SquaredDifferencediscounted_rewardsadd_13*
T0
E
MaximumMaximumSquaredDifference_1SquaredDifference_2*
T0
T
DynamicPartition_2DynamicPartitionMaximumCast*
num_partitions*
T0
5
Const_2Const*
dtype0*
valueB: 
S
Mean_2MeanDynamicPartition_2:1Const_2*
	keep_dims( *

Tidx0*
T0
#
sub_1SubSum_7Sum_8*
T0

ExpExpsub_1*
T0
&
mul_3MulExp
advantages*
T0
4
sub_2/xConst*
valueB
 *  ?*
dtype0
1
sub_2Subsub_2/xPolynomialDecay_1*
T0
5
add_14/xConst*
valueB
 *  ?*
dtype0
3
add_14Addadd_14/xPolynomialDecay_1*
T0
8
clip_by_value_2/MinimumMinimumExpadd_14*
T0
C
clip_by_value_2Maximumclip_by_value_2/Minimumsub_2*
T0
2
mul_4Mulclip_by_value_2
advantages*
T0
)
MinimumMinimummul_3mul_4*
T0
T
DynamicPartition_3DynamicPartitionMinimumCast*
num_partitions*
T0
<
Const_3Const*
valueB"       *
dtype0
S
Mean_3MeanDynamicPartition_3:1Const_3*
	keep_dims( *

Tidx0*
T0

Neg_8NegMean_3*
T0
4
mul_5/xConst*
valueB
 *   ?*
dtype0
&
mul_5Mulmul_5/xMean_2*
T0
$
add_15AddNeg_8mul_5*
T0
R
DynamicPartition_4DynamicPartitionSum_6Cast*
T0*
num_partitions
5
Const_4Const*
valueB: *
dtype0
S
Mean_4MeanDynamicPartition_4:1Const_4*
	keep_dims( *

Tidx0*
T0
0
mul_6MulPolynomialDecay_2Mean_4*
T0
$
sub_3Subadd_15mul_6*
T0
4
mul_7/xConst*
dtype0*
valueB
 *ĶĢL>
&
mul_7Mulmul_7/xMean_1*
T0
4
mul_8/xConst*
valueB
 *ĶĢL?*
dtype0
$
mul_8Mulmul_8/xMean*
T0
$
add_16Addmul_7mul_8*
T0
4
mul_9/xConst*
dtype0*
valueB
 *   A
&
mul_9Mulmul_9/xadd_16*
T0
$
add_17Addsub_3mul_9*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
dtype0*
valueB
 *  ?
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
?
&gradients/add_17_grad/tuple/group_depsNoOp^gradients/Fill

.gradients/add_17_grad/tuple/control_dependencyIdentitygradients/Fill'^gradients/add_17_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
”
0gradients/add_17_grad/tuple/control_dependency_1Identitygradients/Fill'^gradients/add_17_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
X
gradients/sub_3_grad/NegNeg.gradients/add_17_grad/tuple/control_dependency*
T0
y
%gradients/sub_3_grad/tuple/group_depsNoOp/^gradients/add_17_grad/tuple/control_dependency^gradients/sub_3_grad/Neg
½
-gradients/sub_3_grad/tuple/control_dependencyIdentity.gradients/add_17_grad/tuple/control_dependency&^gradients/sub_3_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
³
/gradients/sub_3_grad/tuple/control_dependency_1Identitygradients/sub_3_grad/Neg&^gradients/sub_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_3_grad/Neg
b
gradients/mul_9_grad/MulMul0gradients/add_17_grad/tuple/control_dependency_1add_16*
T0
e
gradients/mul_9_grad/Mul_1Mul0gradients/add_17_grad/tuple/control_dependency_1mul_9/x*
T0
e
%gradients/mul_9_grad/tuple/group_depsNoOp^gradients/mul_9_grad/Mul^gradients/mul_9_grad/Mul_1
±
-gradients/mul_9_grad/tuple/control_dependencyIdentitygradients/mul_9_grad/Mul&^gradients/mul_9_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_9_grad/Mul
·
/gradients/mul_9_grad/tuple/control_dependency_1Identitygradients/mul_9_grad/Mul_1&^gradients/mul_9_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_9_grad/Mul_1
^
&gradients/add_15_grad/tuple/group_depsNoOp.^gradients/sub_3_grad/tuple/control_dependency
¾
.gradients/add_15_grad/tuple/control_dependencyIdentity-gradients/sub_3_grad/tuple/control_dependency'^gradients/add_15_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Ą
0gradients/add_15_grad/tuple/control_dependency_1Identity-gradients/sub_3_grad/tuple/control_dependency'^gradients/add_15_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
a
gradients/mul_6_grad/MulMul/gradients/sub_3_grad/tuple/control_dependency_1Mean_4*
T0
n
gradients/mul_6_grad/Mul_1Mul/gradients/sub_3_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
e
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Mul^gradients/mul_6_grad/Mul_1
±
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Mul&^gradients/mul_6_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_6_grad/Mul
·
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Mul_1&^gradients/mul_6_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_6_grad/Mul_1
`
&gradients/add_16_grad/tuple/group_depsNoOp0^gradients/mul_9_grad/tuple/control_dependency_1
Ģ
.gradients/add_16_grad/tuple/control_dependencyIdentity/gradients/mul_9_grad/tuple/control_dependency_1'^gradients/add_16_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_9_grad/Mul_1
Ī
0gradients/add_16_grad/tuple/control_dependency_1Identity/gradients/mul_9_grad/tuple/control_dependency_1'^gradients/add_16_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_9_grad/Mul_1
X
gradients/Neg_8_grad/NegNeg.gradients/add_15_grad/tuple/control_dependency*
T0
b
gradients/mul_5_grad/MulMul0gradients/add_15_grad/tuple/control_dependency_1Mean_2*
T0
e
gradients/mul_5_grad/Mul_1Mul0gradients/add_15_grad/tuple/control_dependency_1mul_5/x*
T0
e
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Mul^gradients/mul_5_grad/Mul_1
±
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Mul&^gradients/mul_5_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_5_grad/Mul
·
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Mul_1&^gradients/mul_5_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_5_grad/Mul_1
Q
#gradients/Mean_4_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_4_grad/ReshapeReshape/gradients/mul_6_grad/tuple/control_dependency_1#gradients/Mean_4_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_4_grad/ShapeShapeDynamicPartition_4:1*
T0*
out_type0
y
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_4_grad/Shape_1ShapeDynamicPartition_4:1*
T0*
out_type0
F
gradients/Mean_4_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_4_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_1gradients/Mean_4_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_4_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_4_grad/Maximum/yConst*
dtype0*
value	B :
p
gradients/Mean_4_grad/MaximumMaximumgradients/Mean_4_grad/Prod_1gradients/Mean_4_grad/Maximum/y*
T0
n
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum*
T0
Z
gradients/Mean_4_grad/CastCastgradients/Mean_4_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0
`
gradients/mul_7_grad/MulMul.gradients/add_16_grad/tuple/control_dependencyMean_1*
T0
c
gradients/mul_7_grad/Mul_1Mul.gradients/add_16_grad/tuple/control_dependencymul_7/x*
T0
e
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Mul^gradients/mul_7_grad/Mul_1
±
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Mul&^gradients/mul_7_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_7_grad/Mul
·
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Mul_1&^gradients/mul_7_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_7_grad/Mul_1
`
gradients/mul_8_grad/MulMul0gradients/add_16_grad/tuple/control_dependency_1Mean*
T0
e
gradients/mul_8_grad/Mul_1Mul0gradients/add_16_grad/tuple/control_dependency_1mul_8/x*
T0
e
%gradients/mul_8_grad/tuple/group_depsNoOp^gradients/mul_8_grad/Mul^gradients/mul_8_grad/Mul_1
±
-gradients/mul_8_grad/tuple/control_dependencyIdentitygradients/mul_8_grad/Mul&^gradients/mul_8_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_8_grad/Mul
·
/gradients/mul_8_grad/tuple/control_dependency_1Identitygradients/mul_8_grad/Mul_1&^gradients/mul_8_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_8_grad/Mul_1
X
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB"      *
dtype0
~
gradients/Mean_3_grad/ReshapeReshapegradients/Neg_8_grad/Neg#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_3_grad/ShapeShapeDynamicPartition_3:1*
T0*
out_type0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_3_grad/Shape_1ShapeDynamicPartition_3:1*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_3_grad/ConstConst*
dtype0*
valueB: 

gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_3_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*
T0*
	keep_dims( *

Tidx0
I
gradients/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0
n
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
T0
Z
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0
Q
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_2_grad/ReshapeReshape/gradients/mul_5_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_2_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_2_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0
n
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
>
gradients/zeros_like	ZerosLikeDynamicPartition_4*
T0
O
'gradients/DynamicPartition_4_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_4_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_4_grad/ProdProd'gradients/DynamicPartition_4_grad/Shape'gradients/DynamicPartition_4_grad/Const*
	keep_dims( *

Tidx0*
T0
W
-gradients/DynamicPartition_4_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_4_grad/range/deltaConst*
value	B :*
dtype0
Ā
'gradients/DynamicPartition_4_grad/rangeRange-gradients/DynamicPartition_4_grad/range/start&gradients/DynamicPartition_4_grad/Prod-gradients/DynamicPartition_4_grad/range/delta*

Tidx0

)gradients/DynamicPartition_4_grad/ReshapeReshape'gradients/DynamicPartition_4_grad/range'gradients/DynamicPartition_4_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_4_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_4_grad/ReshapeCast*
num_partitions*
T0
ń
/gradients/DynamicPartition_4_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_4_grad/DynamicPartition4gradients/DynamicPartition_4_grad/DynamicPartition:1gradients/zeros_likegradients/Mean_4_grad/truediv*
T0*
N
R
)gradients/DynamicPartition_4_grad/Shape_1ShapeSum_6*
T0*
out_type0
©
+gradients/DynamicPartition_4_grad/Reshape_1Reshape/gradients/DynamicPartition_4_grad/DynamicStitch)gradients/DynamicPartition_4_grad/Shape_1*
T0*
Tshape0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
dtype0*
valueB:

gradients/Mean_1_grad/ReshapeReshape/gradients/mul_7_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_1_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0
U
gradients/Mean_1_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_1_grad/ConstConst*
dtype0*
valueB: 

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_1_grad/Const_1Const*
dtype0*
valueB: 

gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0
n
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_grad/ReshapeReshape/gradients/mul_8_grad/tuple/control_dependency_1!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
O
gradients/Mean_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0
Q
gradients/Mean_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
	keep_dims( *

Tidx0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
@
gradients/zeros_like_1	ZerosLikeDynamicPartition_3*
T0
O
'gradients/DynamicPartition_3_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_3_grad/ConstConst*
dtype0*
valueB: 
¦
&gradients/DynamicPartition_3_grad/ProdProd'gradients/DynamicPartition_3_grad/Shape'gradients/DynamicPartition_3_grad/Const*
T0*
	keep_dims( *

Tidx0
W
-gradients/DynamicPartition_3_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_3_grad/range/deltaConst*
value	B :*
dtype0
Ā
'gradients/DynamicPartition_3_grad/rangeRange-gradients/DynamicPartition_3_grad/range/start&gradients/DynamicPartition_3_grad/Prod-gradients/DynamicPartition_3_grad/range/delta*

Tidx0

)gradients/DynamicPartition_3_grad/ReshapeReshape'gradients/DynamicPartition_3_grad/range'gradients/DynamicPartition_3_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_3_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_3_grad/ReshapeCast*
T0*
num_partitions
ó
/gradients/DynamicPartition_3_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_3_grad/DynamicPartition4gradients/DynamicPartition_3_grad/DynamicPartition:1gradients/zeros_like_1gradients/Mean_3_grad/truediv*
T0*
N
T
)gradients/DynamicPartition_3_grad/Shape_1ShapeMinimum*
T0*
out_type0
©
+gradients/DynamicPartition_3_grad/Reshape_1Reshape/gradients/DynamicPartition_3_grad/DynamicStitch)gradients/DynamicPartition_3_grad/Shape_1*
T0*
Tshape0
@
gradients/zeros_like_2	ZerosLikeDynamicPartition_2*
T0
O
'gradients/DynamicPartition_2_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_2_grad/ConstConst*
dtype0*
valueB: 
¦
&gradients/DynamicPartition_2_grad/ProdProd'gradients/DynamicPartition_2_grad/Shape'gradients/DynamicPartition_2_grad/Const*
	keep_dims( *

Tidx0*
T0
W
-gradients/DynamicPartition_2_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_2_grad/range/deltaConst*
value	B :*
dtype0
Ā
'gradients/DynamicPartition_2_grad/rangeRange-gradients/DynamicPartition_2_grad/range/start&gradients/DynamicPartition_2_grad/Prod-gradients/DynamicPartition_2_grad/range/delta*

Tidx0

)gradients/DynamicPartition_2_grad/ReshapeReshape'gradients/DynamicPartition_2_grad/range'gradients/DynamicPartition_2_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_2_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_2_grad/ReshapeCast*
T0*
num_partitions
ó
/gradients/DynamicPartition_2_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_2_grad/DynamicPartition4gradients/DynamicPartition_2_grad/DynamicPartition:1gradients/zeros_like_2gradients/Mean_2_grad/truediv*
T0*
N
T
)gradients/DynamicPartition_2_grad/Shape_1ShapeMaximum*
T0*
out_type0
©
+gradients/DynamicPartition_2_grad/Reshape_1Reshape/gradients/DynamicPartition_2_grad/DynamicStitch)gradients/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
C
gradients/Sum_6_grad/ShapeShapestack*
T0*
out_type0
r
gradients/Sum_6_grad/SizeConst*-
_class#
!loc:@gradients/Sum_6_grad/Shape*
value	B :*
dtype0

gradients/Sum_6_grad/addAddSum_6/reduction_indicesgradients/Sum_6_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/modFloorModgradients/Sum_6_grad/addgradients/Sum_6_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
t
gradients/Sum_6_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_6_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_6_grad/range/startConst*
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape*
value	B : 
y
 gradients/Sum_6_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_6_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_6_grad/rangeRange gradients/Sum_6_grad/range/startgradients/Sum_6_grad/Size gradients/Sum_6_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
x
gradients/Sum_6_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_6_grad/Shape*
value	B :*
dtype0
Ŗ
gradients/Sum_6_grad/FillFillgradients/Sum_6_grad/Shape_1gradients/Sum_6_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape*

index_type0
į
"gradients/Sum_6_grad/DynamicStitchDynamicStitchgradients/Sum_6_grad/rangegradients/Sum_6_grad/modgradients/Sum_6_grad/Shapegradients/Sum_6_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape*
N
w
gradients/Sum_6_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_6_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_6_grad/MaximumMaximum"gradients/Sum_6_grad/DynamicStitchgradients/Sum_6_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/floordivFloorDivgradients/Sum_6_grad/Shapegradients/Sum_6_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/ReshapeReshape+gradients/DynamicPartition_4_grad/Reshape_1"gradients/Sum_6_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_6_grad/TileTilegradients/Sum_6_grad/Reshapegradients/Sum_6_grad/floordiv*

Tmultiples0*
T0
@
gradients/zeros_like_3	ZerosLikeDynamicPartition_1*
T0
O
'gradients/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_1_grad/ConstConst*
dtype0*
valueB: 
¦
&gradients/DynamicPartition_1_grad/ProdProd'gradients/DynamicPartition_1_grad/Shape'gradients/DynamicPartition_1_grad/Const*
T0*
	keep_dims( *

Tidx0
W
-gradients/DynamicPartition_1_grad/range/startConst*
dtype0*
value	B : 
W
-gradients/DynamicPartition_1_grad/range/deltaConst*
value	B :*
dtype0
Ā
'gradients/DynamicPartition_1_grad/rangeRange-gradients/DynamicPartition_1_grad/range/start&gradients/DynamicPartition_1_grad/Prod-gradients/DynamicPartition_1_grad/range/delta*

Tidx0

)gradients/DynamicPartition_1_grad/ReshapeReshape'gradients/DynamicPartition_1_grad/range'gradients/DynamicPartition_1_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_1_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_1_grad/ReshapeCast*
T0*
num_partitions
ó
/gradients/DynamicPartition_1_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_1_grad/DynamicPartition4gradients/DynamicPartition_1_grad/DynamicPartition:1gradients/zeros_like_3gradients/Mean_1_grad/truediv*
N*
T0
R
)gradients/DynamicPartition_1_grad/Shape_1Shapemul_1*
T0*
out_type0
©
+gradients/DynamicPartition_1_grad/Reshape_1Reshape/gradients/DynamicPartition_1_grad/DynamicStitch)gradients/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
>
gradients/zeros_like_4	ZerosLikeDynamicPartition*
T0
M
%gradients/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
S
%gradients/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
 
$gradients/DynamicPartition_grad/ProdProd%gradients/DynamicPartition_grad/Shape%gradients/DynamicPartition_grad/Const*
T0*
	keep_dims( *

Tidx0
U
+gradients/DynamicPartition_grad/range/startConst*
dtype0*
value	B : 
U
+gradients/DynamicPartition_grad/range/deltaConst*
value	B :*
dtype0
ŗ
%gradients/DynamicPartition_grad/rangeRange+gradients/DynamicPartition_grad/range/start$gradients/DynamicPartition_grad/Prod+gradients/DynamicPartition_grad/range/delta*

Tidx0

'gradients/DynamicPartition_grad/ReshapeReshape%gradients/DynamicPartition_grad/range%gradients/DynamicPartition_grad/Shape*
T0*
Tshape0

0gradients/DynamicPartition_grad/DynamicPartitionDynamicPartition'gradients/DynamicPartition_grad/ReshapeCast*
num_partitions*
T0
ė
-gradients/DynamicPartition_grad/DynamicStitchDynamicStitch0gradients/DynamicPartition_grad/DynamicPartition2gradients/DynamicPartition_grad/DynamicPartition:1gradients/zeros_like_4gradients/Mean_grad/truediv*
T0*
N
P
'gradients/DynamicPartition_grad/Shape_1ShapeSum_9*
T0*
out_type0
£
)gradients/DynamicPartition_grad/Reshape_1Reshape-gradients/DynamicPartition_grad/DynamicStitch'gradients/DynamicPartition_grad/Shape_1*
T0*
Tshape0
E
gradients/Minimum_grad/ShapeShapemul_3*
T0*
out_type0
G
gradients/Minimum_grad/Shape_1Shapemul_4*
T0*
out_type0
m
gradients/Minimum_grad/Shape_2Shape+gradients/DynamicPartition_3_grad/Reshape_1*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0*

index_type0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_3mul_4*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual+gradients/DynamicPartition_3_grad/Reshape_1gradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros+gradients/DynamicPartition_3_grad/Reshape_1*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Į
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Ē
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
S
gradients/Maximum_grad/ShapeShapeSquaredDifference_1*
T0*
out_type0
U
gradients/Maximum_grad/Shape_1ShapeSquaredDifference_2*
T0*
out_type0
m
gradients/Maximum_grad/Shape_2Shape+gradients/DynamicPartition_2_grad/Reshape_1*
T0*
out_type0
O
"gradients/Maximum_grad/zeros/ConstConst*
dtype0*
valueB
 *    

gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
T0*

index_type0
f
#gradients/Maximum_grad/GreaterEqualGreaterEqualSquaredDifference_1SquaredDifference_2*
T0

,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
T0
 
gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqual+gradients/DynamicPartition_2_grad/Reshape_1gradients/Maximum_grad/zeros*
T0
¢
gradients/Maximum_grad/Select_1Select#gradients/Maximum_grad/GreaterEqualgradients/Maximum_grad/zeros+gradients/DynamicPartition_2_grad/Reshape_1*
T0

gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
z
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
T0*
Tshape0

gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Maximum_grad/tuple/group_depsNoOp^gradients/Maximum_grad/Reshape!^gradients/Maximum_grad/Reshape_1
Į
/gradients/Maximum_grad/tuple/control_dependencyIdentitygradients/Maximum_grad/Reshape(^gradients/Maximum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Maximum_grad/Reshape
Ē
1gradients/Maximum_grad/tuple/control_dependency_1Identity gradients/Maximum_grad/Reshape_1(^gradients/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Maximum_grad/Reshape_1
a
gradients/stack_grad/unstackUnpackgradients/Sum_6_grad/Tile*	
num*
T0*

axis
L
%gradients/stack_grad/tuple/group_depsNoOp^gradients/stack_grad/unstack
¹
-gradients/stack_grad/tuple/control_dependencyIdentitygradients/stack_grad/unstack&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
½
/gradients/stack_grad/tuple/control_dependency_1Identitygradients/stack_grad/unstack:1&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
½
/gradients/stack_grad/tuple/control_dependency_2Identitygradients/stack_grad/unstack:2&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
C
gradients/mul_1_grad/ShapeConst*
valueB *
dtype0
F
gradients/mul_1_grad/Shape_1ShapeSum_10*
T0*
out_type0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
]
gradients/mul_1_grad/MulMul+gradients/DynamicPartition_1_grad/Reshape_1Sum_10*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
`
gradients/mul_1_grad/Mul_1Mulmul_1/x+gradients/DynamicPartition_1_grad/Reshape_1*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
æ
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1
A
gradients/Sum_9_grad/ShapeShapemul*
T0*
out_type0
r
gradients/Sum_9_grad/SizeConst*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B :*
dtype0

gradients/Sum_9_grad/addAddSum_9/reduction_indicesgradients/Sum_9_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/modFloorModgradients/Sum_9_grad/addgradients/Sum_9_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
t
gradients/Sum_9_grad/Shape_1Const*
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
valueB 
y
 gradients/Sum_9_grad/range/startConst*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_9_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_9_grad/rangeRange gradients/Sum_9_grad/range/startgradients/Sum_9_grad/Size gradients/Sum_9_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
x
gradients/Sum_9_grad/Fill/valueConst*
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B :
Ŗ
gradients/Sum_9_grad/FillFillgradients/Sum_9_grad/Shape_1gradients/Sum_9_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape*

index_type0
į
"gradients/Sum_9_grad/DynamicStitchDynamicStitchgradients/Sum_9_grad/rangegradients/Sum_9_grad/modgradients/Sum_9_grad/Shapegradients/Sum_9_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
N
w
gradients/Sum_9_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_9_grad/MaximumMaximum"gradients/Sum_9_grad/DynamicStitchgradients/Sum_9_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/floordivFloorDivgradients/Sum_9_grad/Shapegradients/Sum_9_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/ReshapeReshape)gradients/DynamicPartition_grad/Reshape_1"gradients/Sum_9_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_9_grad/TileTilegradients/Sum_9_grad/Reshapegradients/Sum_9_grad/floordiv*
T0*

Tmultiples0
A
gradients/mul_3_grad/ShapeShapeExp*
T0*
out_type0
J
gradients/mul_3_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0
e
gradients/mul_3_grad/MulMul/gradients/Minimum_grad/tuple/control_dependency
advantages*
T0

gradients/mul_3_grad/SumSumgradients/mul_3_grad/Mul*gradients/mul_3_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0
`
gradients/mul_3_grad/Mul_1MulExp/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/Mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
¹
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
æ
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1
M
gradients/mul_4_grad/ShapeShapeclip_by_value_2*
T0*
out_type0
J
gradients/mul_4_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
g
gradients/mul_4_grad/MulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_4_grad/SumSumgradients/mul_4_grad/Mul*gradients/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0
n
gradients/mul_4_grad/Mul_1Mulclip_by_value_21gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/Mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
¹
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape
æ
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1
^
(gradients/SquaredDifference_1_grad/ShapeShapediscounted_rewards*
T0*
out_type0
T
*gradients/SquaredDifference_1_grad/Shape_1ShapeSum_12*
T0*
out_type0
°
8gradients/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_1_grad/Shape*gradients/SquaredDifference_1_grad/Shape_1*
T0

)gradients/SquaredDifference_1_grad/scalarConst0^gradients/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_1_grad/mulMul)gradients/SquaredDifference_1_grad/scalar/gradients/Maximum_grad/tuple/control_dependency*
T0

&gradients/SquaredDifference_1_grad/subSubdiscounted_rewardsSum_120^gradients/Maximum_grad/tuple/control_dependency*
T0

(gradients/SquaredDifference_1_grad/mul_1Mul&gradients/SquaredDifference_1_grad/mul&gradients/SquaredDifference_1_grad/sub*
T0
·
&gradients/SquaredDifference_1_grad/SumSum(gradients/SquaredDifference_1_grad/mul_18gradients/SquaredDifference_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

*gradients/SquaredDifference_1_grad/ReshapeReshape&gradients/SquaredDifference_1_grad/Sum(gradients/SquaredDifference_1_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_1_grad/Sum_1Sum(gradients/SquaredDifference_1_grad/mul_1:gradients/SquaredDifference_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
¤
,gradients/SquaredDifference_1_grad/Reshape_1Reshape(gradients/SquaredDifference_1_grad/Sum_1*gradients/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_1_grad/NegNeg,gradients/SquaredDifference_1_grad/Reshape_1*
T0

3gradients/SquaredDifference_1_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_1_grad/Reshape'^gradients/SquaredDifference_1_grad/Neg
ń
;gradients/SquaredDifference_1_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_1_grad/Reshape4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape
ė
=gradients/SquaredDifference_1_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_1_grad/Neg4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg
^
(gradients/SquaredDifference_2_grad/ShapeShapediscounted_rewards*
T0*
out_type0
T
*gradients/SquaredDifference_2_grad/Shape_1Shapeadd_13*
T0*
out_type0
°
8gradients/SquaredDifference_2_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_2_grad/Shape*gradients/SquaredDifference_2_grad/Shape_1*
T0

)gradients/SquaredDifference_2_grad/scalarConst2^gradients/Maximum_grad/tuple/control_dependency_1*
dtype0*
valueB
 *   @

&gradients/SquaredDifference_2_grad/mulMul)gradients/SquaredDifference_2_grad/scalar1gradients/Maximum_grad/tuple/control_dependency_1*
T0

&gradients/SquaredDifference_2_grad/subSubdiscounted_rewardsadd_132^gradients/Maximum_grad/tuple/control_dependency_1*
T0

(gradients/SquaredDifference_2_grad/mul_1Mul&gradients/SquaredDifference_2_grad/mul&gradients/SquaredDifference_2_grad/sub*
T0
·
&gradients/SquaredDifference_2_grad/SumSum(gradients/SquaredDifference_2_grad/mul_18gradients/SquaredDifference_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

*gradients/SquaredDifference_2_grad/ReshapeReshape&gradients/SquaredDifference_2_grad/Sum(gradients/SquaredDifference_2_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_2_grad/Sum_1Sum(gradients/SquaredDifference_2_grad/mul_1:gradients/SquaredDifference_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
¤
,gradients/SquaredDifference_2_grad/Reshape_1Reshape(gradients/SquaredDifference_2_grad/Sum_1*gradients/SquaredDifference_2_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_2_grad/NegNeg,gradients/SquaredDifference_2_grad/Reshape_1*
T0

3gradients/SquaredDifference_2_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_2_grad/Reshape'^gradients/SquaredDifference_2_grad/Neg
ń
;gradients/SquaredDifference_2_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_2_grad/Reshape4^gradients/SquaredDifference_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_2_grad/Reshape
ė
=gradients/SquaredDifference_2_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_2_grad/Neg4^gradients/SquaredDifference_2_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_2_grad/Neg

@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0
Õ
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape-gradients/stack_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_1*
T0*
out_type0
Ū
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshape/gradients/stack_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_2*
T0*
out_type0
Ū
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeReshape/gradients/stack_grad/tuple/control_dependency_2Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/Shape*
T0*
Tshape0
P
gradients/Sum_10_grad/ShapeShapeSquaredDifference*
T0*
out_type0
t
gradients/Sum_10_grad/SizeConst*.
_class$
" loc:@gradients/Sum_10_grad/Shape*
value	B :*
dtype0

gradients/Sum_10_grad/addAddSum_10/reduction_indicesgradients/Sum_10_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape

gradients/Sum_10_grad/modFloorModgradients/Sum_10_grad/addgradients/Sum_10_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
v
gradients/Sum_10_grad/Shape_1Const*
dtype0*.
_class$
" loc:@gradients/Sum_10_grad/Shape*
valueB 
{
!gradients/Sum_10_grad/range/startConst*.
_class$
" loc:@gradients/Sum_10_grad/Shape*
value	B : *
dtype0
{
!gradients/Sum_10_grad/range/deltaConst*
dtype0*.
_class$
" loc:@gradients/Sum_10_grad/Shape*
value	B :
Ā
gradients/Sum_10_grad/rangeRange!gradients/Sum_10_grad/range/startgradients/Sum_10_grad/Size!gradients/Sum_10_grad/range/delta*.
_class$
" loc:@gradients/Sum_10_grad/Shape*

Tidx0
z
 gradients/Sum_10_grad/Fill/valueConst*.
_class$
" loc:@gradients/Sum_10_grad/Shape*
value	B :*
dtype0
®
gradients/Sum_10_grad/FillFillgradients/Sum_10_grad/Shape_1 gradients/Sum_10_grad/Fill/value*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape*

index_type0
ē
#gradients/Sum_10_grad/DynamicStitchDynamicStitchgradients/Sum_10_grad/rangegradients/Sum_10_grad/modgradients/Sum_10_grad/Shapegradients/Sum_10_grad/Fill*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape*
N
y
gradients/Sum_10_grad/Maximum/yConst*.
_class$
" loc:@gradients/Sum_10_grad/Shape*
value	B :*
dtype0
§
gradients/Sum_10_grad/MaximumMaximum#gradients/Sum_10_grad/DynamicStitchgradients/Sum_10_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape

gradients/Sum_10_grad/floordivFloorDivgradients/Sum_10_grad/Shapegradients/Sum_10_grad/Maximum*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape

gradients/Sum_10_grad/ReshapeReshape/gradients/mul_1_grad/tuple/control_dependency_1#gradients/Sum_10_grad/DynamicStitch*
T0*
Tshape0
|
gradients/Sum_10_grad/TileTilegradients/Sum_10_grad/Reshapegradients/Sum_10_grad/floordiv*

Tmultiples0*
T0
A
gradients/mul_grad/ShapeShapeNeg_6*
T0*
out_type0
J
gradients/mul_grad/Shape_1ShapeStopGradient*
T0*
out_type0

(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0
O
gradients/mul_grad/MulMulgradients/Sum_9_grad/TileStopGradient*
T0

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0
J
gradients/mul_grad/Mul_1MulNeg_6gradients/Sum_9_grad/Tile*
T0

gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
±
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape
·
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
_
$gradients/clip_by_value_2_grad/ShapeShapeclip_by_value_2/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_2_grad/Shape_1Const*
dtype0*
valueB 
w
&gradients/clip_by_value_2_grad/Shape_2Shape-gradients/mul_4_grad/tuple/control_dependency*
T0*
out_type0
W
*gradients/clip_by_value_2_grad/zeros/ConstConst*
dtype0*
valueB
 *    

$gradients/clip_by_value_2_grad/zerosFill&gradients/clip_by_value_2_grad/Shape_2*gradients/clip_by_value_2_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_2_grad/GreaterEqualGreaterEqualclip_by_value_2/Minimumsub_2*
T0
¤
4gradients/clip_by_value_2_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_2_grad/Shape&gradients/clip_by_value_2_grad/Shape_1*
T0
ŗ
%gradients/clip_by_value_2_grad/SelectSelect+gradients/clip_by_value_2_grad/GreaterEqual-gradients/mul_4_grad/tuple/control_dependency$gradients/clip_by_value_2_grad/zeros*
T0
¼
'gradients/clip_by_value_2_grad/Select_1Select+gradients/clip_by_value_2_grad/GreaterEqual$gradients/clip_by_value_2_grad/zeros-gradients/mul_4_grad/tuple/control_dependency*
T0
¬
"gradients/clip_by_value_2_grad/SumSum%gradients/clip_by_value_2_grad/Select4gradients/clip_by_value_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

&gradients/clip_by_value_2_grad/ReshapeReshape"gradients/clip_by_value_2_grad/Sum$gradients/clip_by_value_2_grad/Shape*
T0*
Tshape0
²
$gradients/clip_by_value_2_grad/Sum_1Sum'gradients/clip_by_value_2_grad/Select_16gradients/clip_by_value_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

(gradients/clip_by_value_2_grad/Reshape_1Reshape$gradients/clip_by_value_2_grad/Sum_1&gradients/clip_by_value_2_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_2_grad/tuple/group_depsNoOp'^gradients/clip_by_value_2_grad/Reshape)^gradients/clip_by_value_2_grad/Reshape_1
į
7gradients/clip_by_value_2_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_2_grad/Reshape0^gradients/clip_by_value_2_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_2_grad/Reshape
ē
9gradients/clip_by_value_2_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_2_grad/Reshape_10^gradients/clip_by_value_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_2_grad/Reshape_1
M
gradients/Sum_12_grad/ShapeShapevalue_estimate*
T0*
out_type0
t
gradients/Sum_12_grad/SizeConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B :*
dtype0

gradients/Sum_12_grad/addAddSum_12/reduction_indicesgradients/Sum_12_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape

gradients/Sum_12_grad/modFloorModgradients/Sum_12_grad/addgradients/Sum_12_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape
v
gradients/Sum_12_grad/Shape_1Const*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
valueB *
dtype0
{
!gradients/Sum_12_grad/range/startConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B : *
dtype0
{
!gradients/Sum_12_grad/range/deltaConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B :*
dtype0
Ā
gradients/Sum_12_grad/rangeRange!gradients/Sum_12_grad/range/startgradients/Sum_12_grad/Size!gradients/Sum_12_grad/range/delta*

Tidx0*.
_class$
" loc:@gradients/Sum_12_grad/Shape
z
 gradients/Sum_12_grad/Fill/valueConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B :*
dtype0
®
gradients/Sum_12_grad/FillFillgradients/Sum_12_grad/Shape_1 gradients/Sum_12_grad/Fill/value*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape*

index_type0
ē
#gradients/Sum_12_grad/DynamicStitchDynamicStitchgradients/Sum_12_grad/rangegradients/Sum_12_grad/modgradients/Sum_12_grad/Shapegradients/Sum_12_grad/Fill*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
N
y
gradients/Sum_12_grad/Maximum/yConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B :*
dtype0
§
gradients/Sum_12_grad/MaximumMaximum#gradients/Sum_12_grad/DynamicStitchgradients/Sum_12_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape

gradients/Sum_12_grad/floordivFloorDivgradients/Sum_12_grad/Shapegradients/Sum_12_grad/Maximum*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape
£
gradients/Sum_12_grad/ReshapeReshape=gradients/SquaredDifference_1_grad/tuple/control_dependency_1#gradients/Sum_12_grad/DynamicStitch*
T0*
Tshape0
|
gradients/Sum_12_grad/TileTilegradients/Sum_12_grad/Reshapegradients/Sum_12_grad/floordiv*

Tmultiples0*
T0
R
gradients/add_13_grad/ShapeShapeold_value_estimates*
T0*
out_type0
P
gradients/add_13_grad/Shape_1Shapeclip_by_value_1*
T0*
out_type0

+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*
T0
²
gradients/add_13_grad/SumSum=gradients/SquaredDifference_2_grad/tuple/control_dependency_1+gradients/add_13_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
w
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
T0*
Tshape0
¶
gradients/add_13_grad/Sum_1Sum=gradients/SquaredDifference_2_grad/tuple/control_dependency_1-gradients/add_13_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
}
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
T0*
Tshape0
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
½
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/add_13_grad/Reshape
Ć
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1
Q
gradients/zeros_like_5	ZerosLike#softmax_cross_entropy_with_logits:1*
T0
r
?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
ć
;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0
¦
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0
}
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0

4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0
t
Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ē
=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*

Tdim0*
T0
»
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0
¹
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
”
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/softmax_cross_entropy_with_logits_grad/mul
§
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1
S
gradients/zeros_like_6	ZerosLike%softmax_cross_entropy_with_logits_1:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_1_grad/mulMul=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims%softmax_cross_entropy_with_logits_1:1*
T0

=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_1/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_1_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_1_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_1_grad/mul9^gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_1_grad/mulD^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
S
gradients/zeros_like_7	ZerosLike%softmax_cross_entropy_with_logits_2:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_2_grad/mulMul=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims%softmax_cross_entropy_with_logits_2:1*
T0

=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_2/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_2_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_2_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_2_grad/mul9^gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_2_grad/mulD^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
Y
&gradients/SquaredDifference_grad/ShapeShapedense_9/BiasAdd*
T0*
out_type0
T
(gradients/SquaredDifference_grad/Shape_1Shapeconcat_6*
T0*
out_type0
Ŗ
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
q
'gradients/SquaredDifference_grad/scalarConst^gradients/Sum_10_grad/Tile*
valueB
 *   @*
dtype0
y
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/Sum_10_grad/Tile*
T0
l
$gradients/SquaredDifference_grad/subSubdense_9/BiasAddconcat_6^gradients/Sum_10_grad/Tile*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ć
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
U
gradients/Neg_6_grad/NegNeg+gradients/mul_grad/tuple/control_dependency*
T0
S
,gradients/clip_by_value_2/Minimum_grad/ShapeShapeExp*
T0*
out_type0
W
.gradients/clip_by_value_2/Minimum_grad/Shape_1Const*
dtype0*
valueB 

.gradients/clip_by_value_2/Minimum_grad/Shape_2Shape7gradients/clip_by_value_2_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_2/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_2/Minimum_grad/zerosFill.gradients/clip_by_value_2/Minimum_grad/Shape_22gradients/clip_by_value_2/Minimum_grad/zeros/Const*
T0*

index_type0
S
0gradients/clip_by_value_2/Minimum_grad/LessEqual	LessEqualExpadd_14*
T0
¼
<gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_2/Minimum_grad/Shape.gradients/clip_by_value_2/Minimum_grad/Shape_1*
T0
Ł
-gradients/clip_by_value_2/Minimum_grad/SelectSelect0gradients/clip_by_value_2/Minimum_grad/LessEqual7gradients/clip_by_value_2_grad/tuple/control_dependency,gradients/clip_by_value_2/Minimum_grad/zeros*
T0
Ū
/gradients/clip_by_value_2/Minimum_grad/Select_1Select0gradients/clip_by_value_2/Minimum_grad/LessEqual,gradients/clip_by_value_2/Minimum_grad/zeros7gradients/clip_by_value_2_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_2/Minimum_grad/SumSum-gradients/clip_by_value_2/Minimum_grad/Select<gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
Ŗ
.gradients/clip_by_value_2/Minimum_grad/ReshapeReshape*gradients/clip_by_value_2/Minimum_grad/Sum,gradients/clip_by_value_2/Minimum_grad/Shape*
T0*
Tshape0
Ź
,gradients/clip_by_value_2/Minimum_grad/Sum_1Sum/gradients/clip_by_value_2/Minimum_grad/Select_1>gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
°
0gradients/clip_by_value_2/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_2/Minimum_grad/Sum_1.gradients/clip_by_value_2/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_2/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_2/Minimum_grad/Reshape1^gradients/clip_by_value_2/Minimum_grad/Reshape_1

?gradients/clip_by_value_2/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_2/Minimum_grad/Reshape8^gradients/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_2/Minimum_grad/Reshape

Agradients/clip_by_value_2/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_2/Minimum_grad/Reshape_18^gradients/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_2/Minimum_grad/Reshape_1
_
$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
z
&gradients/clip_by_value_1_grad/Shape_2Shape0gradients/add_13_grad/tuple/control_dependency_1*
T0*
out_type0
W
*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumNeg_7*
T0
¤
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0
½
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqual0gradients/add_13_grad/tuple/control_dependency_1$gradients/clip_by_value_1_grad/zeros*
T0
æ
'gradients/clip_by_value_1_grad/Select_1Select+gradients/clip_by_value_1_grad/GreaterEqual$gradients/clip_by_value_1_grad/zeros0gradients/add_13_grad/tuple/control_dependency_1*
T0
¬
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*
Tshape0
²
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_1_grad/tuple/group_depsNoOp'^gradients/clip_by_value_1_grad/Reshape)^gradients/clip_by_value_1_grad/Reshape_1
į
7gradients/clip_by_value_1_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_1_grad/Reshape0^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_1_grad/Reshape
ē
9gradients/clip_by_value_1_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_1_grad/Reshape_10^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_1_grad/Reshape_1
r
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapestrided_slice_16*
T0*
out_type0
ķ
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
m
@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ShapeShape	Softmax_6*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShapestrided_slice_18*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*
T0*
Tshape0
o
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ShapeShape	Softmax_7*
T0*
out_type0
ł
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ReshapeReshapeMgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ShapeShapestrided_slice_20*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Shape*
T0*
Tshape0
o
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/ShapeShape	Softmax_8*
T0*
out_type0
ł
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/ReshapeReshapeMgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Shape*
T0*
Tshape0

*gradients/dense_9/BiasAdd_grad/BiasAddGradBiasAddGrad9gradients/SquaredDifference_grad/tuple/control_dependency*
T0*
data_formatNHWC
 
/gradients/dense_9/BiasAdd_grad/tuple/group_depsNoOp:^gradients/SquaredDifference_grad/tuple/control_dependency+^gradients/dense_9/BiasAdd_grad/BiasAddGrad
ö
7gradients/dense_9/BiasAdd_grad/tuple/control_dependencyIdentity9gradients/SquaredDifference_grad/tuple/control_dependency0^gradients/dense_9/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ė
9gradients/dense_9/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_9/BiasAdd_grad/BiasAddGrad0^gradients/dense_9/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_9/BiasAdd_grad/BiasAddGrad
Z
 gradients/Log_12_grad/Reciprocal
Reciprocaladd_12^gradients/Neg_6_grad/Neg*
T0
e
gradients/Log_12_grad/mulMulgradients/Neg_6_grad/Neg gradients/Log_12_grad/Reciprocal*
T0
É
gradients/AddNAddN-gradients/mul_3_grad/tuple/control_dependency?gradients/clip_by_value_2/Minimum_grad/tuple/control_dependency*
N*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
;
gradients/Exp_grad/mulMulgradients/AddNExp*
T0
S
,gradients/clip_by_value_1/Minimum_grad/ShapeShapesub*
T0*
out_type0
W
.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
^
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqualsubPolynomialDecay_1*
T0
¼
<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0
Ł
-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual7gradients/clip_by_value_1_grad/tuple/control_dependency,gradients/clip_by_value_1/Minimum_grad/zeros*
T0
Ū
/gradients/clip_by_value_1/Minimum_grad/Select_1Select0gradients/clip_by_value_1/Minimum_grad/LessEqual,gradients/clip_by_value_1/Minimum_grad/zeros7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
Ŗ
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
Ź
,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
°
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_1/Minimum_grad/Reshape1^gradients/clip_by_value_1/Minimum_grad/Reshape_1

?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_1/Minimum_grad/Reshape8^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_1/Minimum_grad/Reshape

Agradients/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_1/Minimum_grad/Reshape_18^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_1/Minimum_grad/Reshape_1
«
$gradients/dense_9/MatMul_grad/MatMulMatMul7gradients/dense_9/BiasAdd_grad/tuple/control_dependencydense_9/kernel/read*
transpose_a( *
transpose_b(*
T0
„
&gradients/dense_9/MatMul_grad/MatMul_1MatMuldense_8/Mul7gradients/dense_9/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_9/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_9/MatMul_grad/MatMul'^gradients/dense_9/MatMul_grad/MatMul_1
Ū
6gradients/dense_9/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_9/MatMul_grad/MatMul/^gradients/dense_9/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_9/MatMul_grad/MatMul
į
8gradients/dense_9/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_9/MatMul_grad/MatMul_1/^gradients/dense_9/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_9/MatMul_grad/MatMul_1
G
gradients/add_12_grad/ShapeShapeconcat_8*
T0*
out_type0
F
gradients/add_12_grad/Shape_1Const*
valueB *
dtype0

+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*
T0

gradients/add_12_grad/SumSumgradients/Log_12_grad/mul+gradients/add_12_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
w
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
T0*
Tshape0

gradients/add_12_grad/Sum_1Sumgradients/Log_12_grad/mul-gradients/add_12_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
}
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
T0*
Tshape0
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
½
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/add_12_grad/Reshape
Ć
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1
C
gradients/sub_1_grad/ShapeShapeSum_7*
T0*
out_type0
E
gradients/sub_1_grad/Shape_1ShapeSum_8*
T0*
out_type0

*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0

gradients/sub_1_grad/SumSumgradients/Exp_grad/mul*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0

gradients/sub_1_grad/Sum_1Sumgradients/Exp_grad/mul,gradients/sub_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
x
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
¹
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
æ
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
B
gradients/sub_grad/ShapeShapeSum_11*
T0*
out_type0
Q
gradients/sub_grad/Shape_1Shapeold_value_estimates*
T0*
out_type0

(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
®
gradients/sub_grad/SumSum?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0
²
gradients/sub_grad/Sum_1Sum?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
r
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
±
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
·
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
S
 gradients/dense_8/Mul_grad/ShapeShapedense_8/BiasAdd*
T0*
out_type0
U
"gradients/dense_8/Mul_grad/Shape_1Shapedense_8/Sigmoid*
T0*
out_type0

0gradients/dense_8/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dense_8/Mul_grad/Shape"gradients/dense_8/Mul_grad/Shape_1*
T0
w
gradients/dense_8/Mul_grad/MulMul6gradients/dense_9/MatMul_grad/tuple/control_dependencydense_8/Sigmoid*
T0

gradients/dense_8/Mul_grad/SumSumgradients/dense_8/Mul_grad/Mul0gradients/dense_8/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

"gradients/dense_8/Mul_grad/ReshapeReshapegradients/dense_8/Mul_grad/Sum gradients/dense_8/Mul_grad/Shape*
T0*
Tshape0
y
 gradients/dense_8/Mul_grad/Mul_1Muldense_8/BiasAdd6gradients/dense_9/MatMul_grad/tuple/control_dependency*
T0
£
 gradients/dense_8/Mul_grad/Sum_1Sum gradients/dense_8/Mul_grad/Mul_12gradients/dense_8/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

$gradients/dense_8/Mul_grad/Reshape_1Reshape gradients/dense_8/Mul_grad/Sum_1"gradients/dense_8/Mul_grad/Shape_1*
T0*
Tshape0

+gradients/dense_8/Mul_grad/tuple/group_depsNoOp#^gradients/dense_8/Mul_grad/Reshape%^gradients/dense_8/Mul_grad/Reshape_1
Ń
3gradients/dense_8/Mul_grad/tuple/control_dependencyIdentity"gradients/dense_8/Mul_grad/Reshape,^gradients/dense_8/Mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_8/Mul_grad/Reshape
×
5gradients/dense_8/Mul_grad/tuple/control_dependency_1Identity$gradients/dense_8/Mul_grad/Reshape_1,^gradients/dense_8/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_8/Mul_grad/Reshape_1
F
gradients/concat_8_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_8_grad/modFloorModconcat_8/axisgradients/concat_8_grad/Rank*
T0
P
gradients/concat_8_grad/ShapeShapedense_5/Softmax*
T0*
out_type0
}
gradients/concat_8_grad/ShapeNShapeNdense_5/Softmaxdense_6/Softmaxdense_7/Softmax*
N*
T0*
out_type0
¾
$gradients/concat_8_grad/ConcatOffsetConcatOffsetgradients/concat_8_grad/modgradients/concat_8_grad/ShapeN gradients/concat_8_grad/ShapeN:1 gradients/concat_8_grad/ShapeN:2*
N
²
gradients/concat_8_grad/SliceSlice.gradients/add_12_grad/tuple/control_dependency$gradients/concat_8_grad/ConcatOffsetgradients/concat_8_grad/ShapeN*
T0*
Index0
ø
gradients/concat_8_grad/Slice_1Slice.gradients/add_12_grad/tuple/control_dependency&gradients/concat_8_grad/ConcatOffset:1 gradients/concat_8_grad/ShapeN:1*
T0*
Index0
ø
gradients/concat_8_grad/Slice_2Slice.gradients/add_12_grad/tuple/control_dependency&gradients/concat_8_grad/ConcatOffset:2 gradients/concat_8_grad/ShapeN:2*
T0*
Index0

(gradients/concat_8_grad/tuple/group_depsNoOp^gradients/concat_8_grad/Slice ^gradients/concat_8_grad/Slice_1 ^gradients/concat_8_grad/Slice_2
Į
0gradients/concat_8_grad/tuple/control_dependencyIdentitygradients/concat_8_grad/Slice)^gradients/concat_8_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_8_grad/Slice
Ē
2gradients/concat_8_grad/tuple/control_dependency_1Identitygradients/concat_8_grad/Slice_1)^gradients/concat_8_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_8_grad/Slice_1
Ē
2gradients/concat_8_grad/tuple/control_dependency_2Identitygradients/concat_8_grad/Slice_2)^gradients/concat_8_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_8_grad/Slice_2
E
gradients/Sum_7_grad/ShapeShapestack_1*
T0*
out_type0
r
gradients/Sum_7_grad/SizeConst*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B :

gradients/Sum_7_grad/addAddSum_7/reduction_indicesgradients/Sum_7_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/modFloorModgradients/Sum_7_grad/addgradients/Sum_7_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
t
gradients/Sum_7_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_7_grad/range/startConst*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_7_grad/range/deltaConst*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B :
½
gradients/Sum_7_grad/rangeRange gradients/Sum_7_grad/range/startgradients/Sum_7_grad/Size gradients/Sum_7_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
x
gradients/Sum_7_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B :*
dtype0
Ŗ
gradients/Sum_7_grad/FillFillgradients/Sum_7_grad/Shape_1gradients/Sum_7_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape*

index_type0
į
"gradients/Sum_7_grad/DynamicStitchDynamicStitchgradients/Sum_7_grad/rangegradients/Sum_7_grad/modgradients/Sum_7_grad/Shapegradients/Sum_7_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
N
w
gradients/Sum_7_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_7_grad/MaximumMaximum"gradients/Sum_7_grad/DynamicStitchgradients/Sum_7_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/floordivFloorDivgradients/Sum_7_grad/Shapegradients/Sum_7_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/ReshapeReshape-gradients/sub_1_grad/tuple/control_dependency"gradients/Sum_7_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_7_grad/TileTilegradients/Sum_7_grad/Reshapegradients/Sum_7_grad/floordiv*
T0*

Tmultiples0
M
gradients/Sum_11_grad/ShapeShapevalue_estimate*
T0*
out_type0
t
gradients/Sum_11_grad/SizeConst*
dtype0*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B :

gradients/Sum_11_grad/addAddSum_11/reduction_indicesgradients/Sum_11_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape

gradients/Sum_11_grad/modFloorModgradients/Sum_11_grad/addgradients/Sum_11_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape
v
gradients/Sum_11_grad/Shape_1Const*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
valueB *
dtype0
{
!gradients/Sum_11_grad/range/startConst*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B : *
dtype0
{
!gradients/Sum_11_grad/range/deltaConst*
dtype0*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B :
Ā
gradients/Sum_11_grad/rangeRange!gradients/Sum_11_grad/range/startgradients/Sum_11_grad/Size!gradients/Sum_11_grad/range/delta*.
_class$
" loc:@gradients/Sum_11_grad/Shape*

Tidx0
z
 gradients/Sum_11_grad/Fill/valueConst*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B :*
dtype0
®
gradients/Sum_11_grad/FillFillgradients/Sum_11_grad/Shape_1 gradients/Sum_11_grad/Fill/value*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape*

index_type0
ē
#gradients/Sum_11_grad/DynamicStitchDynamicStitchgradients/Sum_11_grad/rangegradients/Sum_11_grad/modgradients/Sum_11_grad/Shapegradients/Sum_11_grad/Fill*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
N
y
gradients/Sum_11_grad/Maximum/yConst*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B :*
dtype0
§
gradients/Sum_11_grad/MaximumMaximum#gradients/Sum_11_grad/DynamicStitchgradients/Sum_11_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape

gradients/Sum_11_grad/floordivFloorDivgradients/Sum_11_grad/Shapegradients/Sum_11_grad/Maximum*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape

gradients/Sum_11_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependency#gradients/Sum_11_grad/DynamicStitch*
T0*
Tshape0
|
gradients/Sum_11_grad/TileTilegradients/Sum_11_grad/Reshapegradients/Sum_11_grad/floordiv*

Tmultiples0*
T0

*gradients/dense_8/Sigmoid_grad/SigmoidGradSigmoidGraddense_8/Sigmoid5gradients/dense_8/Mul_grad/tuple/control_dependency_1*
T0
u
"gradients/dense_5/Softmax_grad/mulMul0gradients/concat_8_grad/tuple/control_dependencydense_5/Softmax*
T0
b
4gradients/dense_5/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
©
"gradients/dense_5/Softmax_grad/SumSum"gradients/dense_5/Softmax_grad/mul4gradients/dense_5/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0
a
,gradients/dense_5/Softmax_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

&gradients/dense_5/Softmax_grad/ReshapeReshape"gradients/dense_5/Softmax_grad/Sum,gradients/dense_5/Softmax_grad/Reshape/shape*
T0*
Tshape0

"gradients/dense_5/Softmax_grad/subSub0gradients/concat_8_grad/tuple/control_dependency&gradients/dense_5/Softmax_grad/Reshape*
T0
i
$gradients/dense_5/Softmax_grad/mul_1Mul"gradients/dense_5/Softmax_grad/subdense_5/Softmax*
T0
w
"gradients/dense_6/Softmax_grad/mulMul2gradients/concat_8_grad/tuple/control_dependency_1dense_6/Softmax*
T0
b
4gradients/dense_6/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
©
"gradients/dense_6/Softmax_grad/SumSum"gradients/dense_6/Softmax_grad/mul4gradients/dense_6/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0
a
,gradients/dense_6/Softmax_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

&gradients/dense_6/Softmax_grad/ReshapeReshape"gradients/dense_6/Softmax_grad/Sum,gradients/dense_6/Softmax_grad/Reshape/shape*
T0*
Tshape0

"gradients/dense_6/Softmax_grad/subSub2gradients/concat_8_grad/tuple/control_dependency_1&gradients/dense_6/Softmax_grad/Reshape*
T0
i
$gradients/dense_6/Softmax_grad/mul_1Mul"gradients/dense_6/Softmax_grad/subdense_6/Softmax*
T0
w
"gradients/dense_7/Softmax_grad/mulMul2gradients/concat_8_grad/tuple/control_dependency_2dense_7/Softmax*
T0
b
4gradients/dense_7/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
©
"gradients/dense_7/Softmax_grad/SumSum"gradients/dense_7/Softmax_grad/mul4gradients/dense_7/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0
a
,gradients/dense_7/Softmax_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

&gradients/dense_7/Softmax_grad/ReshapeReshape"gradients/dense_7/Softmax_grad/Sum,gradients/dense_7/Softmax_grad/Reshape/shape*
T0*
Tshape0

"gradients/dense_7/Softmax_grad/subSub2gradients/concat_8_grad/tuple/control_dependency_2&gradients/dense_7/Softmax_grad/Reshape*
T0
i
$gradients/dense_7/Softmax_grad/mul_1Mul"gradients/dense_7/Softmax_grad/subdense_7/Softmax*
T0
c
gradients/stack_1_grad/unstackUnpackgradients/Sum_7_grad/Tile*	
num*
T0*

axis
P
'gradients/stack_1_grad/tuple/group_depsNoOp^gradients/stack_1_grad/unstack
Į
/gradients/stack_1_grad/tuple/control_dependencyIdentitygradients/stack_1_grad/unstack(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
Å
1gradients/stack_1_grad/tuple/control_dependency_1Identity gradients/stack_1_grad/unstack:1(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
Å
1gradients/stack_1_grad/tuple/control_dependency_2Identity gradients/stack_1_grad/unstack:2(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack

gradients/AddN_1AddNgradients/Sum_12_grad/Tilegradients/Sum_11_grad/Tile*
T0*-
_class#
!loc:@gradients/Sum_12_grad/Tile*
N
U
%gradients/strided_slice_16_grad/ShapeShapeaction_probs*
T0*
out_type0
ó
0gradients/strided_slice_16_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_16_grad/Shapestrided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
{
gradients/Softmax_6_grad/mulMulBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape	Softmax_6*
T0
\
.gradients/Softmax_6_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_6_grad/SumSumgradients/Softmax_6_grad/mul.gradients/Softmax_6_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0
[
&gradients/Softmax_6_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

 gradients/Softmax_6_grad/ReshapeReshapegradients/Softmax_6_grad/Sum&gradients/Softmax_6_grad/Reshape/shape*
T0*
Tshape0

gradients/Softmax_6_grad/subSubBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape gradients/Softmax_6_grad/Reshape*
T0
W
gradients/Softmax_6_grad/mul_1Mulgradients/Softmax_6_grad/sub	Softmax_6*
T0
U
%gradients/strided_slice_18_grad/ShapeShapeaction_probs*
T0*
out_type0
õ
0gradients/strided_slice_18_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_18_grad/Shapestrided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
}
gradients/Softmax_7_grad/mulMulDgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshape	Softmax_7*
T0
\
.gradients/Softmax_7_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_7_grad/SumSumgradients/Softmax_7_grad/mul.gradients/Softmax_7_grad/Sum/reduction_indices*
T0*
	keep_dims( *

Tidx0
[
&gradients/Softmax_7_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

 gradients/Softmax_7_grad/ReshapeReshapegradients/Softmax_7_grad/Sum&gradients/Softmax_7_grad/Reshape/shape*
T0*
Tshape0

gradients/Softmax_7_grad/subSubDgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshape gradients/Softmax_7_grad/Reshape*
T0
W
gradients/Softmax_7_grad/mul_1Mulgradients/Softmax_7_grad/sub	Softmax_7*
T0
U
%gradients/strided_slice_20_grad/ShapeShapeaction_probs*
T0*
out_type0
õ
0gradients/strided_slice_20_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_20_grad/Shapestrided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
}
gradients/Softmax_8_grad/mulMulDgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Reshape	Softmax_8*
T0
\
.gradients/Softmax_8_grad/Sum/reduction_indicesConst*
dtype0*
valueB:

gradients/Softmax_8_grad/SumSumgradients/Softmax_8_grad/mul.gradients/Softmax_8_grad/Sum/reduction_indices*
T0*
	keep_dims( *

Tidx0
[
&gradients/Softmax_8_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

 gradients/Softmax_8_grad/ReshapeReshapegradients/Softmax_8_grad/Sum&gradients/Softmax_8_grad/Reshape/shape*
T0*
Tshape0

gradients/Softmax_8_grad/subSubDgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Reshape gradients/Softmax_8_grad/Reshape*
T0
W
gradients/Softmax_8_grad/mul_1Mulgradients/Softmax_8_grad/sub	Softmax_8*
T0
Ā
gradients/AddN_2AddN3gradients/dense_8/Mul_grad/tuple/control_dependency*gradients/dense_8/Sigmoid_grad/SigmoidGrad*
T0*5
_class+
)'loc:@gradients/dense_8/Mul_grad/Reshape*
N
k
*gradients/dense_8/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_2*
T0*
data_formatNHWC
w
/gradients/dense_8/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_2+^gradients/dense_8/BiasAdd_grad/BiasAddGrad
Ē
7gradients/dense_8/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_20^gradients/dense_8/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_8/Mul_grad/Reshape
ė
9gradients/dense_8/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_8/BiasAdd_grad/BiasAddGrad0^gradients/dense_8/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_8/BiasAdd_grad/BiasAddGrad

*gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_5/Softmax_grad/mul_1*
T0*
data_formatNHWC

/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_5/Softmax_grad/mul_1+^gradients/dense_5/BiasAdd_grad/BiasAddGrad
Ż
7gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_5/Softmax_grad/mul_10^gradients/dense_5/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_5/Softmax_grad/mul_1
ė
9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_5/BiasAdd_grad/BiasAddGrad0^gradients/dense_5/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_5/BiasAdd_grad/BiasAddGrad

*gradients/dense_6/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_6/Softmax_grad/mul_1*
T0*
data_formatNHWC

/gradients/dense_6/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_6/Softmax_grad/mul_1+^gradients/dense_6/BiasAdd_grad/BiasAddGrad
Ż
7gradients/dense_6/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_6/Softmax_grad/mul_10^gradients/dense_6/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_6/Softmax_grad/mul_1
ė
9gradients/dense_6/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_6/BiasAdd_grad/BiasAddGrad0^gradients/dense_6/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_6/BiasAdd_grad/BiasAddGrad

*gradients/dense_7/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_7/Softmax_grad/mul_1*
T0*
data_formatNHWC

/gradients/dense_7/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_7/Softmax_grad/mul_1+^gradients/dense_7/BiasAdd_grad/BiasAddGrad
Ż
7gradients/dense_7/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_7/Softmax_grad/mul_10^gradients/dense_7/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_7/Softmax_grad/mul_1
ė
9gradients/dense_7/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_7/BiasAdd_grad/BiasAddGrad0^gradients/dense_7/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_7/BiasAdd_grad/BiasAddGrad
W
gradients/Neg_grad/NegNeg/gradients/stack_1_grad/tuple/control_dependency*
T0
[
gradients/Neg_1_grad/NegNeg1gradients/stack_1_grad/tuple/control_dependency_1*
T0
[
gradients/Neg_2_grad/NegNeg1gradients/stack_1_grad/tuple/control_dependency_2*
T0
k
*gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC
w
/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1+^gradients/dense_3/BiasAdd_grad/BiasAddGrad
æ
7gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_10^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Sum_12_grad/Tile
ė
9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_3/BiasAdd_grad/BiasAddGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_3/BiasAdd_grad/BiasAddGrad
U
%gradients/strided_slice_15_grad/ShapeShapeaction_probs*
T0*
out_type0
Ń
0gradients/strided_slice_15_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_15_grad/Shapestrided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2gradients/Softmax_6_grad/mul_1*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
U
%gradients/strided_slice_17_grad/ShapeShapeaction_probs*
T0*
out_type0
Ń
0gradients/strided_slice_17_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_17_grad/Shapestrided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2gradients/Softmax_7_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
U
%gradients/strided_slice_19_grad/ShapeShapeaction_probs*
T0*
out_type0
Ń
0gradients/strided_slice_19_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_19_grad/Shapestrided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2gradients/Softmax_8_grad/mul_1*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
«
$gradients/dense_8/MatMul_grad/MatMulMatMul7gradients/dense_8/BiasAdd_grad/tuple/control_dependencydense_8/kernel/read*
T0*
transpose_a( *
transpose_b(
¢
&gradients/dense_8/MatMul_grad/MatMul_1MatMulconcat_97gradients/dense_8/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_8/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_8/MatMul_grad/MatMul'^gradients/dense_8/MatMul_grad/MatMul_1
Ū
6gradients/dense_8/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_8/MatMul_grad/MatMul/^gradients/dense_8/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_8/MatMul_grad/MatMul
į
8gradients/dense_8/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_8/MatMul_grad/MatMul_1/^gradients/dense_8/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_8/MatMul_grad/MatMul_1
«
$gradients/dense_5/MatMul_grad/MatMulMatMul7gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_5/kernel/read*
transpose_a( *
transpose_b(*
T0
„
&gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/Mul7gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_5/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_5/MatMul_grad/MatMul'^gradients/dense_5/MatMul_grad/MatMul_1
Ū
6gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_5/MatMul_grad/MatMul/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_5/MatMul_grad/MatMul
į
8gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_5/MatMul_grad/MatMul_1/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_5/MatMul_grad/MatMul_1
«
$gradients/dense_6/MatMul_grad/MatMulMatMul7gradients/dense_6/BiasAdd_grad/tuple/control_dependencydense_6/kernel/read*
T0*
transpose_a( *
transpose_b(
„
&gradients/dense_6/MatMul_grad/MatMul_1MatMuldense_4/Mul7gradients/dense_6/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_6/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_6/MatMul_grad/MatMul'^gradients/dense_6/MatMul_grad/MatMul_1
Ū
6gradients/dense_6/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_6/MatMul_grad/MatMul/^gradients/dense_6/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_6/MatMul_grad/MatMul
į
8gradients/dense_6/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_6/MatMul_grad/MatMul_1/^gradients/dense_6/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_6/MatMul_grad/MatMul_1
«
$gradients/dense_7/MatMul_grad/MatMulMatMul7gradients/dense_7/BiasAdd_grad/tuple/control_dependencydense_7/kernel/read*
T0*
transpose_a( *
transpose_b(
„
&gradients/dense_7/MatMul_grad/MatMul_1MatMuldense_4/Mul7gradients/dense_7/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_7/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_7/MatMul_grad/MatMul'^gradients/dense_7/MatMul_grad/MatMul_1
Ū
6gradients/dense_7/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_7/MatMul_grad/MatMul/^gradients/dense_7/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_7/MatMul_grad/MatMul
į
8gradients/dense_7/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_7/MatMul_grad/MatMul_1/^gradients/dense_7/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_7/MatMul_grad/MatMul_1

Bgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_3*
T0*
out_type0
Ā
Dgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeReshapegradients/Neg_grad/NegBgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_4*
T0*
out_type0
Ä
Dgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeReshapegradients/Neg_1_grad/NegBgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_5*
T0*
out_type0
Ä
Dgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeReshapegradients/Neg_2_grad/NegBgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/Shape*
T0*
Tshape0
«
$gradients/dense_3/MatMul_grad/MatMulMatMul7gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
T0*
transpose_a( *
transpose_b(
³
&gradients/dense_3/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul7gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Ū
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
į
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1
F
gradients/concat_9_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_9_grad/modFloorModconcat_9/axisgradients/concat_9_grad/Rank*
T0
I
gradients/concat_9_grad/ShapeShapeconcat_5*
T0*
out_type0
b
gradients/concat_9_grad/ShapeNShapeNconcat_5StopGradient*
T0*
out_type0*
N

$gradients/concat_9_grad/ConcatOffsetConcatOffsetgradients/concat_9_grad/modgradients/concat_9_grad/ShapeN gradients/concat_9_grad/ShapeN:1*
N
ŗ
gradients/concat_9_grad/SliceSlice6gradients/dense_8/MatMul_grad/tuple/control_dependency$gradients/concat_9_grad/ConcatOffsetgradients/concat_9_grad/ShapeN*
T0*
Index0
Ą
gradients/concat_9_grad/Slice_1Slice6gradients/dense_8/MatMul_grad/tuple/control_dependency&gradients/concat_9_grad/ConcatOffset:1 gradients/concat_9_grad/ShapeN:1*
T0*
Index0
r
(gradients/concat_9_grad/tuple/group_depsNoOp^gradients/concat_9_grad/Slice ^gradients/concat_9_grad/Slice_1
Į
0gradients/concat_9_grad/tuple/control_dependencyIdentitygradients/concat_9_grad/Slice)^gradients/concat_9_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_9_grad/Slice
Ē
2gradients/concat_9_grad/tuple/control_dependency_1Identitygradients/concat_9_grad/Slice_1)^gradients/concat_9_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_9_grad/Slice_1

gradients/AddN_3AddN6gradients/dense_5/MatMul_grad/tuple/control_dependency6gradients/dense_6/MatMul_grad/tuple/control_dependency6gradients/dense_7/MatMul_grad/tuple/control_dependency*
T0*7
_class-
+)loc:@gradients/dense_5/MatMul_grad/MatMul*
N
S
 gradients/dense_4/Mul_grad/ShapeShapedense_4/BiasAdd*
T0*
out_type0
U
"gradients/dense_4/Mul_grad/Shape_1Shapedense_4/Sigmoid*
T0*
out_type0

0gradients/dense_4/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dense_4/Mul_grad/Shape"gradients/dense_4/Mul_grad/Shape_1*
T0
Q
gradients/dense_4/Mul_grad/MulMulgradients/AddN_3dense_4/Sigmoid*
T0

gradients/dense_4/Mul_grad/SumSumgradients/dense_4/Mul_grad/Mul0gradients/dense_4/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

"gradients/dense_4/Mul_grad/ReshapeReshapegradients/dense_4/Mul_grad/Sum gradients/dense_4/Mul_grad/Shape*
T0*
Tshape0
S
 gradients/dense_4/Mul_grad/Mul_1Muldense_4/BiasAddgradients/AddN_3*
T0
£
 gradients/dense_4/Mul_grad/Sum_1Sum gradients/dense_4/Mul_grad/Mul_12gradients/dense_4/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

$gradients/dense_4/Mul_grad/Reshape_1Reshape gradients/dense_4/Mul_grad/Sum_1"gradients/dense_4/Mul_grad/Shape_1*
T0*
Tshape0

+gradients/dense_4/Mul_grad/tuple/group_depsNoOp#^gradients/dense_4/Mul_grad/Reshape%^gradients/dense_4/Mul_grad/Reshape_1
Ń
3gradients/dense_4/Mul_grad/tuple/control_dependencyIdentity"gradients/dense_4/Mul_grad/Reshape,^gradients/dense_4/Mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_4/Mul_grad/Reshape
×
5gradients/dense_4/Mul_grad/tuple/control_dependency_1Identity$gradients/dense_4/Mul_grad/Reshape_1,^gradients/dense_4/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/Mul_grad/Reshape_1
S
gradients/zeros_like_8	ZerosLike%softmax_cross_entropy_with_logits_3:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dim*
T0*

Tdim0
¬
6gradients/softmax_cross_entropy_with_logits_3_grad/mulMul=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims%softmax_cross_entropy_with_logits_3:1*
T0

=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_3/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_3_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_3_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_3_grad/mul9^gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_3_grad/mulD^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
S
gradients/zeros_like_9	ZerosLike%softmax_cross_entropy_with_logits_4:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_4_grad/mulMul=gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims%softmax_cross_entropy_with_logits_4:1*
T0

=gradients/softmax_cross_entropy_with_logits_4_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_4/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_4_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_4_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_4_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_4_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_4_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_4_grad/mul9^gradients/softmax_cross_entropy_with_logits_4_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_4_grad/mulD^gradients/softmax_cross_entropy_with_logits_4_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_4_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_4_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_4_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_4_grad/mul_1
T
gradients/zeros_like_10	ZerosLike%softmax_cross_entropy_with_logits_5:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_5_grad/mulMul=gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims%softmax_cross_entropy_with_logits_5:1*
T0

=gradients/softmax_cross_entropy_with_logits_5_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_5/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_5_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_5_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_5_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_5_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_5_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_5_grad/mul9^gradients/softmax_cross_entropy_with_logits_5_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_5_grad/mulD^gradients/softmax_cross_entropy_with_logits_5_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_5_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_5_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_5_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_5_grad/mul_1

*gradients/dense_4/Sigmoid_grad/SigmoidGradSigmoidGraddense_4/Sigmoid5gradients/dense_4/Mul_grad/tuple/control_dependency_1*
T0
t
@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ShapeShapestrided_slice_22*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_4/Reshape_grad/ShapeShapestrided_slice_24*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_4/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_4/Reshape_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_5/Reshape_grad/ShapeShapestrided_slice_26*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_5/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_5/Reshape_grad/Shape*
T0*
Tshape0
Ā
gradients/AddN_4AddN3gradients/dense_4/Mul_grad/tuple/control_dependency*gradients/dense_4/Sigmoid_grad/SigmoidGrad*
T0*5
_class+
)'loc:@gradients/dense_4/Mul_grad/Reshape*
N
k
*gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_4*
data_formatNHWC*
T0
w
/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_4+^gradients/dense_4/BiasAdd_grad/BiasAddGrad
Ē
7gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_40^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_4/Mul_grad/Reshape
ė
9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_4/BiasAdd_grad/BiasAddGrad0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_4/BiasAdd_grad/BiasAddGrad
«
$gradients/dense_4/MatMul_grad/MatMulMatMul7gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_a( *
transpose_b(*
T0
¢
&gradients/dense_4/MatMul_grad/MatMul_1MatMulconcat_77gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1
Ū
6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul
į
8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1
F
gradients/concat_7_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_7_grad/modFloorModconcat_7/axisgradients/concat_7_grad/Rank*
T0
I
gradients/concat_7_grad/ShapeShapeconcat_5*
T0*
out_type0
^
gradients/concat_7_grad/ShapeNShapeNconcat_5concat_6*
T0*
out_type0*
N

$gradients/concat_7_grad/ConcatOffsetConcatOffsetgradients/concat_7_grad/modgradients/concat_7_grad/ShapeN gradients/concat_7_grad/ShapeN:1*
N
ŗ
gradients/concat_7_grad/SliceSlice6gradients/dense_4/MatMul_grad/tuple/control_dependency$gradients/concat_7_grad/ConcatOffsetgradients/concat_7_grad/ShapeN*
T0*
Index0
Ą
gradients/concat_7_grad/Slice_1Slice6gradients/dense_4/MatMul_grad/tuple/control_dependency&gradients/concat_7_grad/ConcatOffset:1 gradients/concat_7_grad/ShapeN:1*
T0*
Index0
r
(gradients/concat_7_grad/tuple/group_depsNoOp^gradients/concat_7_grad/Slice ^gradients/concat_7_grad/Slice_1
Į
0gradients/concat_7_grad/tuple/control_dependencyIdentitygradients/concat_7_grad/Slice)^gradients/concat_7_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_7_grad/Slice
Ē
2gradients/concat_7_grad/tuple/control_dependency_1Identitygradients/concat_7_grad/Slice_1)^gradients/concat_7_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_7_grad/Slice_1
Ą
gradients/AddN_5AddN0gradients/concat_9_grad/tuple/control_dependency0gradients/concat_7_grad/tuple/control_dependency*
T0*0
_class&
$"loc:@gradients/concat_9_grad/Slice*
N
Ō
gradients/AddN_6AddN;gradients/SquaredDifference_grad/tuple/control_dependency_12gradients/concat_7_grad/tuple/control_dependency_1*
N*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
Q
%gradients/strided_slice_22_grad/ShapeShapeconcat_1*
T0*
out_type0
õ
0gradients/strided_slice_22_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_22_grad/Shapestrided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
Q
%gradients/strided_slice_24_grad/ShapeShapeconcat_1*
T0*
out_type0
õ
0gradients/strided_slice_24_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_24_grad/Shapestrided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2Bgradients/softmax_cross_entropy_with_logits_4/Reshape_grad/Reshape*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
Q
%gradients/strided_slice_26_grad/ShapeShapeconcat_1*
T0*
out_type0
õ
0gradients/strided_slice_26_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_26_grad/Shapestrided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2Bgradients/softmax_cross_entropy_with_logits_5/Reshape_grad/Reshape*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
{
4gradients/vector_obs_encoder/hidden_1/Mul_grad/ShapeShape#vector_obs_encoder/hidden_1/BiasAdd*
T0*
out_type0
}
6gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape_1Shape#vector_obs_encoder/hidden_1/Sigmoid*
T0*
out_type0
Ō
Dgradients/vector_obs_encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape6gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape_1*
T0
y
2gradients/vector_obs_encoder/hidden_1/Mul_grad/MulMulgradients/AddN_5#vector_obs_encoder/hidden_1/Sigmoid*
T0
Ł
2gradients/vector_obs_encoder/hidden_1/Mul_grad/SumSum2gradients/vector_obs_encoder/hidden_1/Mul_grad/MulDgradients/vector_obs_encoder/hidden_1/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
Ā
6gradients/vector_obs_encoder/hidden_1/Mul_grad/ReshapeReshape2gradients/vector_obs_encoder/hidden_1/Mul_grad/Sum4gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
{
4gradients/vector_obs_encoder/hidden_1/Mul_grad/Mul_1Mul#vector_obs_encoder/hidden_1/BiasAddgradients/AddN_5*
T0
ß
4gradients/vector_obs_encoder/hidden_1/Mul_grad/Sum_1Sum4gradients/vector_obs_encoder/hidden_1/Mul_grad/Mul_1Fgradients/vector_obs_encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
Č
8gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1Reshape4gradients/vector_obs_encoder/hidden_1/Mul_grad/Sum_16gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
»
?gradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/group_depsNoOp7^gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape9^gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1
”
Ggradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentity6gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape@^gradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape
§
Igradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependency_1Identity8gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1@^gradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1

6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/ShapeShape%vector_obs_encoder_1/hidden_1/BiasAdd*
T0*
out_type0

8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape_1Shape%vector_obs_encoder_1/hidden_1/Sigmoid*
T0*
out_type0
Ś
Fgradients/vector_obs_encoder_1/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape_1*
T0
}
4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/MulMulgradients/AddN_6%vector_obs_encoder_1/hidden_1/Sigmoid*
T0
ß
4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/SumSum4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/MulFgradients/vector_obs_encoder_1/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
Č
8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/ReshapeReshape4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Sum6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape*
T0*
Tshape0

6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Mul_1Mul%vector_obs_encoder_1/hidden_1/BiasAddgradients/AddN_6*
T0
å
6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Sum_1Sum6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Mul_1Hgradients/vector_obs_encoder_1/hidden_1/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
Ī
:gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1Reshape6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Sum_18gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
Į
Agradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape;^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1
©
Igradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/ReshapeB^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape
Æ
Kgradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1B^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1

gradients/AddN_7AddN0gradients/strided_slice_22_grad/StridedSliceGrad0gradients/strided_slice_24_grad/StridedSliceGrad0gradients/strided_slice_26_grad/StridedSliceGrad*
T0*C
_class9
75loc:@gradients/strided_slice_22_grad/StridedSliceGrad*
N
F
gradients/concat_1_grad/RankConst*
dtype0*
value	B :
]
gradients/concat_1_grad/modFloorModconcat_1/axisgradients/concat_1_grad/Rank*
T0
F
gradients/concat_1_grad/ShapeShapeLog_3*
T0*
out_type0
_
gradients/concat_1_grad/ShapeNShapeNLog_3Log_4Log_5*
T0*
out_type0*
N
¾
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/modgradients/concat_1_grad/ShapeN gradients/concat_1_grad/ShapeN:1 gradients/concat_1_grad/ShapeN:2*
N

gradients/concat_1_grad/SliceSlicegradients/AddN_7$gradients/concat_1_grad/ConcatOffsetgradients/concat_1_grad/ShapeN*
T0*
Index0

gradients/concat_1_grad/Slice_1Slicegradients/AddN_7&gradients/concat_1_grad/ConcatOffset:1 gradients/concat_1_grad/ShapeN:1*
T0*
Index0

gradients/concat_1_grad/Slice_2Slicegradients/AddN_7&gradients/concat_1_grad/ConcatOffset:2 gradients/concat_1_grad/ShapeN:2*
T0*
Index0

(gradients/concat_1_grad/tuple/group_depsNoOp^gradients/concat_1_grad/Slice ^gradients/concat_1_grad/Slice_1 ^gradients/concat_1_grad/Slice_2
Į
0gradients/concat_1_grad/tuple/control_dependencyIdentitygradients/concat_1_grad/Slice)^gradients/concat_1_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_1_grad/Slice
Ē
2gradients/concat_1_grad/tuple/control_dependency_1Identitygradients/concat_1_grad/Slice_1)^gradients/concat_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_1_grad/Slice_1
Ē
2gradients/concat_1_grad/tuple/control_dependency_2Identitygradients/concat_1_grad/Slice_2)^gradients/concat_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_1_grad/Slice_2
Ę
>gradients/vector_obs_encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad#vector_obs_encoder/hidden_1/SigmoidIgradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
Ģ
@gradients/vector_obs_encoder_1/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad%vector_obs_encoder_1/hidden_1/SigmoidKgradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
p
gradients/Log_3_grad/Reciprocal
Reciprocaladd_31^gradients/concat_1_grad/tuple/control_dependency*
T0
{
gradients/Log_3_grad/mulMul0gradients/concat_1_grad/tuple/control_dependencygradients/Log_3_grad/Reciprocal*
T0
r
gradients/Log_4_grad/Reciprocal
Reciprocaladd_43^gradients/concat_1_grad/tuple/control_dependency_1*
T0
}
gradients/Log_4_grad/mulMul2gradients/concat_1_grad/tuple/control_dependency_1gradients/Log_4_grad/Reciprocal*
T0
r
gradients/Log_5_grad/Reciprocal
Reciprocaladd_53^gradients/concat_1_grad/tuple/control_dependency_2*
T0
}
gradients/Log_5_grad/mulMul2gradients/concat_1_grad/tuple/control_dependency_2gradients/Log_5_grad/Reciprocal*
T0
ž
gradients/AddN_8AddNGgradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependency>gradients/vector_obs_encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape*
N

>gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_8*
T0*
data_formatNHWC

Cgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_8?^gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGrad

Kgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_8D^gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape
»
Mgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity>gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGradD^gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGrad

gradients/AddN_9AddNIgradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependency@gradients/vector_obs_encoder_1/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape*
N

@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_9*
T0*
data_formatNHWC
£
Egradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_9A^gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGrad

Mgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_9F^gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape
Ć
Ogradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGradF^gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGrad
E
gradients/add_3_grad/ShapeShapetruediv*
T0*
out_type0
E
gradients/add_3_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0

gradients/add_3_grad/SumSumgradients/Log_3_grad/mul*gradients/add_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
Tshape0

gradients/add_3_grad/Sum_1Sumgradients/Log_3_grad/mul,gradients/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
¹
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape
æ
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
G
gradients/add_4_grad/ShapeShape	truediv_1*
T0*
out_type0
E
gradients/add_4_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0

gradients/add_4_grad/SumSumgradients/Log_4_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0

gradients/add_4_grad/Sum_1Sumgradients/Log_4_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
¹
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape
æ
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
G
gradients/add_5_grad/ShapeShape	truediv_2*
T0*
out_type0
E
gradients/add_5_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0

gradients/add_5_grad/SumSumgradients/Log_5_grad/mul*gradients/add_5_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
Tshape0

gradients/add_5_grad/Sum_1Sumgradients/Log_5_grad/mul,gradients/add_5_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
¹
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_5_grad/Reshape
æ
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
ē
8gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMulMatMulKgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
į
:gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1MatMulvector_obs_encoder/hidden_0/MulKgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
Ā
Bgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul;^gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1
«
Jgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMulC^gradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul
±
Lgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1C^gradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1
ė
:gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMulMatMulMgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_1/kernel/read*
transpose_a( *
transpose_b(*
T0
ē
<gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1MatMul!vector_obs_encoder_1/hidden_0/MulMgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
Č
Dgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/group_depsNoOp;^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul=^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1
³
Lgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependencyIdentity:gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMulE^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul
¹
Ngradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency_1Identity<gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1E^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1

gradients/AddN_10AddNMgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1Ogradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGrad*
N
C
gradients/truediv_grad/ShapeShapeMul*
T0*
out_type0
E
gradients/truediv_grad/Shape_1ShapeSum*
T0*
out_type0

,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
f
gradients/truediv_grad/RealDivRealDiv-gradients/add_3_grad/tuple/control_dependencySum*
T0

gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
/
gradients/truediv_grad/NegNegMul*
T0
U
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/NegSum*
T0
[
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1Sum*
T0
{
gradients/truediv_grad/mulMul-gradients/add_3_grad/tuple/control_dependency gradients/truediv_grad/RealDiv_2*
T0

gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
Į
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape
Ē
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
G
gradients/truediv_1_grad/ShapeShapeMul_1*
T0*
out_type0
I
 gradients/truediv_1_grad/Shape_1ShapeSum_1*
T0*
out_type0

.gradients/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_1_grad/Shape gradients/truediv_1_grad/Shape_1*
T0
j
 gradients/truediv_1_grad/RealDivRealDiv-gradients/add_4_grad/tuple/control_dependencySum_1*
T0

gradients/truediv_1_grad/SumSum gradients/truediv_1_grad/RealDiv.gradients/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

 gradients/truediv_1_grad/ReshapeReshapegradients/truediv_1_grad/Sumgradients/truediv_1_grad/Shape*
T0*
Tshape0
3
gradients/truediv_1_grad/NegNegMul_1*
T0
[
"gradients/truediv_1_grad/RealDiv_1RealDivgradients/truediv_1_grad/NegSum_1*
T0
a
"gradients/truediv_1_grad/RealDiv_2RealDiv"gradients/truediv_1_grad/RealDiv_1Sum_1*
T0

gradients/truediv_1_grad/mulMul-gradients/add_4_grad/tuple/control_dependency"gradients/truediv_1_grad/RealDiv_2*
T0

gradients/truediv_1_grad/Sum_1Sumgradients/truediv_1_grad/mul0gradients/truediv_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

"gradients/truediv_1_grad/Reshape_1Reshapegradients/truediv_1_grad/Sum_1 gradients/truediv_1_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_1_grad/tuple/group_depsNoOp!^gradients/truediv_1_grad/Reshape#^gradients/truediv_1_grad/Reshape_1
É
1gradients/truediv_1_grad/tuple/control_dependencyIdentity gradients/truediv_1_grad/Reshape*^gradients/truediv_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape
Ļ
3gradients/truediv_1_grad/tuple/control_dependency_1Identity"gradients/truediv_1_grad/Reshape_1*^gradients/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_1_grad/Reshape_1
G
gradients/truediv_2_grad/ShapeShapeMul_2*
T0*
out_type0
I
 gradients/truediv_2_grad/Shape_1ShapeSum_2*
T0*
out_type0

.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
T0
j
 gradients/truediv_2_grad/RealDivRealDiv-gradients/add_5_grad/tuple/control_dependencySum_2*
T0

gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*
Tshape0
3
gradients/truediv_2_grad/NegNegMul_2*
T0
[
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/NegSum_2*
T0
a
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1Sum_2*
T0

gradients/truediv_2_grad/mulMul-gradients/add_5_grad/tuple/control_dependency"gradients/truediv_2_grad/RealDiv_2*
T0

gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_2_grad/tuple/group_depsNoOp!^gradients/truediv_2_grad/Reshape#^gradients/truediv_2_grad/Reshape_1
É
1gradients/truediv_2_grad/tuple/control_dependencyIdentity gradients/truediv_2_grad/Reshape*^gradients/truediv_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_2_grad/Reshape
Ļ
3gradients/truediv_2_grad/tuple/control_dependency_1Identity"gradients/truediv_2_grad/Reshape_1*^gradients/truediv_2_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_2_grad/Reshape_1
{
4gradients/vector_obs_encoder/hidden_0/Mul_grad/ShapeShape#vector_obs_encoder/hidden_0/BiasAdd*
T0*
out_type0
}
6gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape_1Shape#vector_obs_encoder/hidden_0/Sigmoid*
T0*
out_type0
Ō
Dgradients/vector_obs_encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape6gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape_1*
T0
³
2gradients/vector_obs_encoder/hidden_0/Mul_grad/MulMulJgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency#vector_obs_encoder/hidden_0/Sigmoid*
T0
Ł
2gradients/vector_obs_encoder/hidden_0/Mul_grad/SumSum2gradients/vector_obs_encoder/hidden_0/Mul_grad/MulDgradients/vector_obs_encoder/hidden_0/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
Ā
6gradients/vector_obs_encoder/hidden_0/Mul_grad/ReshapeReshape2gradients/vector_obs_encoder/hidden_0/Mul_grad/Sum4gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
µ
4gradients/vector_obs_encoder/hidden_0/Mul_grad/Mul_1Mul#vector_obs_encoder/hidden_0/BiasAddJgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
ß
4gradients/vector_obs_encoder/hidden_0/Mul_grad/Sum_1Sum4gradients/vector_obs_encoder/hidden_0/Mul_grad/Mul_1Fgradients/vector_obs_encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
Č
8gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1Reshape4gradients/vector_obs_encoder/hidden_0/Mul_grad/Sum_16gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
»
?gradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/group_depsNoOp7^gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape9^gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1
”
Ggradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentity6gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape@^gradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape
§
Igradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependency_1Identity8gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1@^gradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1

6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/ShapeShape%vector_obs_encoder_1/hidden_0/BiasAdd*
T0*
out_type0

8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape_1Shape%vector_obs_encoder_1/hidden_0/Sigmoid*
T0*
out_type0
Ś
Fgradients/vector_obs_encoder_1/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape_1*
T0
¹
4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/MulMulLgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency%vector_obs_encoder_1/hidden_0/Sigmoid*
T0
ß
4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/SumSum4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/MulFgradients/vector_obs_encoder_1/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
Č
8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/ReshapeReshape4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Sum6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape*
T0*
Tshape0
»
6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Mul_1Mul%vector_obs_encoder_1/hidden_0/BiasAddLgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency*
T0
å
6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Sum_1Sum6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Mul_1Hgradients/vector_obs_encoder_1/hidden_0/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
Ī
:gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1Reshape6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Sum_18gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
Į
Agradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape;^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1
©
Igradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/ReshapeB^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape
Æ
Kgradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1B^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1

gradients/AddN_11AddNLgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1Ngradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1*
N
?
gradients/Sum_grad/ShapeShapeMul*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
valueB 
u
gradients/Sum_grad/range/startConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B : *
dtype0
u
gradients/Sum_grad/range/deltaConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
³
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape
t
gradients/Sum_grad/Fill/valueConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
¢
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*

index_type0
Õ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N
s
gradients/Sum_grad/Maximum/yConst*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/ReshapeReshape1gradients/truediv_grad/tuple/control_dependency_1 gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0
C
gradients/Sum_1_grad/ShapeShapeMul_1*
T0*
out_type0
r
gradients/Sum_1_grad/SizeConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0

gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
t
gradients/Sum_1_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_1_grad/range/startConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_1_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
x
gradients/Sum_1_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
Ŗ
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*

index_type0
į
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
N
w
gradients/Sum_1_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/ReshapeReshape3gradients/truediv_1_grad/tuple/control_dependency_1"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*
T0*

Tmultiples0
C
gradients/Sum_2_grad/ShapeShapeMul_2*
T0*
out_type0
r
gradients/Sum_2_grad/SizeConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0

gradients/Sum_2_grad/addAddSum_2/reduction_indicesgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
t
gradients/Sum_2_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_2_grad/range/startConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_2_grad/range/deltaConst*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :
½
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*-
_class#
!loc:@gradients/Sum_2_grad/Shape*

Tidx0
x
gradients/Sum_2_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0
Ŗ
gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape*

index_type0
į
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
N
w
gradients/Sum_2_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/ReshapeReshape3gradients/truediv_2_grad/tuple/control_dependency_1"gradients/Sum_2_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*

Tmultiples0*
T0
Ę
>gradients/vector_obs_encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad#vector_obs_encoder/hidden_0/SigmoidIgradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
Ģ
@gradients/vector_obs_encoder_1/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad%vector_obs_encoder_1/hidden_0/SigmoidKgradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
Ø
gradients/AddN_12AddN/gradients/truediv_grad/tuple/control_dependencygradients/Sum_grad/Tile*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape*
N
?
gradients/Mul_grad/ShapeShapeadd*
T0*
out_type0
M
gradients/Mul_grad/Shape_1Shapestrided_slice_3*
T0*
out_type0

(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
J
gradients/Mul_grad/MulMulgradients/AddN_12strided_slice_3*
T0

gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
@
gradients/Mul_grad/Mul_1Muladdgradients/AddN_12*
T0

gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/Mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
t
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
±
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape
·
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1
®
gradients/AddN_13AddN1gradients/truediv_1_grad/tuple/control_dependencygradients/Sum_1_grad/Tile*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape*
N
C
gradients/Mul_1_grad/ShapeShapeadd_1*
T0*
out_type0
O
gradients/Mul_1_grad/Shape_1Shapestrided_slice_4*
T0*
out_type0

*gradients/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_1_grad/Shapegradients/Mul_1_grad/Shape_1*
T0
L
gradients/Mul_1_grad/MulMulgradients/AddN_13strided_slice_4*
T0

gradients/Mul_1_grad/SumSumgradients/Mul_1_grad/Mul*gradients/Mul_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/Mul_1_grad/ReshapeReshapegradients/Mul_1_grad/Sumgradients/Mul_1_grad/Shape*
T0*
Tshape0
D
gradients/Mul_1_grad/Mul_1Muladd_1gradients/AddN_13*
T0

gradients/Mul_1_grad/Sum_1Sumgradients/Mul_1_grad/Mul_1,gradients/Mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/Mul_1_grad/Reshape_1Reshapegradients/Mul_1_grad/Sum_1gradients/Mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_1_grad/tuple/group_depsNoOp^gradients/Mul_1_grad/Reshape^gradients/Mul_1_grad/Reshape_1
¹
-gradients/Mul_1_grad/tuple/control_dependencyIdentitygradients/Mul_1_grad/Reshape&^gradients/Mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_1_grad/Reshape
æ
/gradients/Mul_1_grad/tuple/control_dependency_1Identitygradients/Mul_1_grad/Reshape_1&^gradients/Mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_1_grad/Reshape_1
®
gradients/AddN_14AddN1gradients/truediv_2_grad/tuple/control_dependencygradients/Sum_2_grad/Tile*
N*
T0*3
_class)
'%loc:@gradients/truediv_2_grad/Reshape
C
gradients/Mul_2_grad/ShapeShapeadd_2*
T0*
out_type0
O
gradients/Mul_2_grad/Shape_1Shapestrided_slice_5*
T0*
out_type0

*gradients/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_2_grad/Shapegradients/Mul_2_grad/Shape_1*
T0
L
gradients/Mul_2_grad/MulMulgradients/AddN_14strided_slice_5*
T0

gradients/Mul_2_grad/SumSumgradients/Mul_2_grad/Mul*gradients/Mul_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/Mul_2_grad/ReshapeReshapegradients/Mul_2_grad/Sumgradients/Mul_2_grad/Shape*
T0*
Tshape0
D
gradients/Mul_2_grad/Mul_1Muladd_2gradients/AddN_14*
T0

gradients/Mul_2_grad/Sum_1Sumgradients/Mul_2_grad/Mul_1,gradients/Mul_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/Mul_2_grad/Reshape_1Reshapegradients/Mul_2_grad/Sum_1gradients/Mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_2_grad/tuple/group_depsNoOp^gradients/Mul_2_grad/Reshape^gradients/Mul_2_grad/Reshape_1
¹
-gradients/Mul_2_grad/tuple/control_dependencyIdentitygradients/Mul_2_grad/Reshape&^gradients/Mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_2_grad/Reshape
æ
/gradients/Mul_2_grad/tuple/control_dependency_1Identitygradients/Mul_2_grad/Reshape_1&^gradients/Mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_2_grad/Reshape_1
’
gradients/AddN_15AddNGgradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependency>gradients/vector_obs_encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
N*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape

>gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_15*
data_formatNHWC*
T0
 
Cgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_15?^gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGrad

Kgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_15D^gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape
»
Mgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity>gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGradD^gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGrad

gradients/AddN_16AddNIgradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependency@gradients/vector_obs_encoder_1/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape*
N

@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_16*
T0*
data_formatNHWC
¤
Egradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_16A^gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGrad

Mgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_16F^gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape
Ć
Ogradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGradF^gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGrad
C
gradients/add_grad/ShapeShapeSoftmax*
T0*
out_type0
C
gradients/add_grad/Shape_1Const*
valueB *
dtype0

(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0

gradients/add_grad/SumSum+gradients/Mul_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0

gradients/add_grad/Sum_1Sum+gradients/Mul_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
±
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
·
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
G
gradients/add_1_grad/ShapeShape	Softmax_1*
T0*
out_type0
E
gradients/add_1_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0
 
gradients/add_1_grad/SumSum-gradients/Mul_1_grad/tuple/control_dependency*gradients/add_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0
¤
gradients/add_1_grad/Sum_1Sum-gradients/Mul_1_grad/tuple/control_dependency,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
¹
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
æ
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
G
gradients/add_2_grad/ShapeShape	Softmax_2*
T0*
out_type0
E
gradients/add_2_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0
 
gradients/add_2_grad/SumSum-gradients/Mul_2_grad/tuple/control_dependency*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0
¤
gradients/add_2_grad/Sum_1Sum-gradients/Mul_2_grad/tuple/control_dependency,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
¹
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape
æ
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
ē
8gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMulMatMulKgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
Ō
:gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationKgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
Ā
Bgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul;^gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1
«
Jgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMulC^gradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul
±
Lgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1C^gradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1
ė
:gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMulMatMulMgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
Ż
<gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1MatMulnext_vector_observationMgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
Č
Dgradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/group_depsNoOp;^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul=^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1
³
Lgradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/control_dependencyIdentity:gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMulE^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul
¹
Ngradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/control_dependency_1Identity<gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1E^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1

gradients/AddN_17AddNMgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1Ogradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
T0*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGrad*
N
`
gradients/Softmax_grad/mulMul+gradients/add_grad/tuple/control_dependencySoftmax*
T0
Z
,gradients/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*
T0*
	keep_dims( *

Tidx0
Y
$gradients/Softmax_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*
T0*
Tshape0
w
gradients/Softmax_grad/subSub+gradients/add_grad/tuple/control_dependencygradients/Softmax_grad/Reshape*
T0
Q
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0
f
gradients/Softmax_1_grad/mulMul-gradients/add_1_grad/tuple/control_dependency	Softmax_1*
T0
\
.gradients/Softmax_1_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_1_grad/SumSumgradients/Softmax_1_grad/mul.gradients/Softmax_1_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0
[
&gradients/Softmax_1_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

 gradients/Softmax_1_grad/ReshapeReshapegradients/Softmax_1_grad/Sum&gradients/Softmax_1_grad/Reshape/shape*
T0*
Tshape0
}
gradients/Softmax_1_grad/subSub-gradients/add_1_grad/tuple/control_dependency gradients/Softmax_1_grad/Reshape*
T0
W
gradients/Softmax_1_grad/mul_1Mulgradients/Softmax_1_grad/sub	Softmax_1*
T0
f
gradients/Softmax_2_grad/mulMul-gradients/add_2_grad/tuple/control_dependency	Softmax_2*
T0
\
.gradients/Softmax_2_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_2_grad/SumSumgradients/Softmax_2_grad/mul.gradients/Softmax_2_grad/Sum/reduction_indices*
T0*
	keep_dims( *

Tidx0
[
&gradients/Softmax_2_grad/Reshape/shapeConst*
dtype0*
valueB"’’’’   

 gradients/Softmax_2_grad/ReshapeReshapegradients/Softmax_2_grad/Sum&gradients/Softmax_2_grad/Reshape/shape*
T0*
Tshape0
}
gradients/Softmax_2_grad/subSub-gradients/add_2_grad/tuple/control_dependency gradients/Softmax_2_grad/Reshape*
T0
W
gradients/Softmax_2_grad/mul_1Mulgradients/Softmax_2_grad/sub	Softmax_2*
T0

gradients/AddN_18AddNLgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1Ngradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/control_dependency_1*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1*
N
R
"gradients/strided_slice_grad/ShapeShapeaction_probs*
T0*
out_type0
Ą
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad"gradients/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2gradients/Softmax_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
T
$gradients/strided_slice_1_grad/ShapeShapeaction_probs*
T0*
out_type0
Ģ
/gradients/strided_slice_1_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_1_grad/Shapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2gradients/Softmax_1_grad/mul_1*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
T
$gradients/strided_slice_2_grad/ShapeShapeaction_probs*
T0*
out_type0
Ģ
/gradients/strided_slice_2_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_2_grad/Shapestrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2gradients/Softmax_2_grad/mul_1*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
­
gradients/AddN_19AddN0gradients/strided_slice_16_grad/StridedSliceGrad0gradients/strided_slice_18_grad/StridedSliceGrad0gradients/strided_slice_20_grad/StridedSliceGrad0gradients/strided_slice_15_grad/StridedSliceGrad0gradients/strided_slice_17_grad/StridedSliceGrad0gradients/strided_slice_19_grad/StridedSliceGrad-gradients/strided_slice_grad/StridedSliceGrad/gradients/strided_slice_1_grad/StridedSliceGrad/gradients/strided_slice_2_grad/StridedSliceGrad*
T0*C
_class9
75loc:@gradients/strided_slice_16_grad/StridedSliceGrad*
N	
J
 gradients/action_probs_grad/RankConst*
value	B :*
dtype0
i
gradients/action_probs_grad/modFloorModaction_probs/axis gradients/action_probs_grad/Rank*
T0
Q
!gradients/action_probs_grad/ShapeShapedense/MatMul*
T0*
out_type0
|
"gradients/action_probs_grad/ShapeNShapeNdense/MatMuldense_1/MatMuldense_2/MatMul*
N*
T0*
out_type0
Ņ
(gradients/action_probs_grad/ConcatOffsetConcatOffsetgradients/action_probs_grad/mod"gradients/action_probs_grad/ShapeN$gradients/action_probs_grad/ShapeN:1$gradients/action_probs_grad/ShapeN:2*
N
”
!gradients/action_probs_grad/SliceSlicegradients/AddN_19(gradients/action_probs_grad/ConcatOffset"gradients/action_probs_grad/ShapeN*
T0*
Index0
§
#gradients/action_probs_grad/Slice_1Slicegradients/AddN_19*gradients/action_probs_grad/ConcatOffset:1$gradients/action_probs_grad/ShapeN:1*
T0*
Index0
§
#gradients/action_probs_grad/Slice_2Slicegradients/AddN_19*gradients/action_probs_grad/ConcatOffset:2$gradients/action_probs_grad/ShapeN:2*
T0*
Index0
¤
,gradients/action_probs_grad/tuple/group_depsNoOp"^gradients/action_probs_grad/Slice$^gradients/action_probs_grad/Slice_1$^gradients/action_probs_grad/Slice_2
Ń
4gradients/action_probs_grad/tuple/control_dependencyIdentity!gradients/action_probs_grad/Slice-^gradients/action_probs_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/action_probs_grad/Slice
×
6gradients/action_probs_grad/tuple/control_dependency_1Identity#gradients/action_probs_grad/Slice_1-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Slice_1
×
6gradients/action_probs_grad/tuple/control_dependency_2Identity#gradients/action_probs_grad/Slice_2-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Slice_2
¤
"gradients/dense/MatMul_grad/MatMulMatMul4gradients/action_probs_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( 
®
$gradients/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul4gradients/action_probs_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ł
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
Ŗ
$gradients/dense_1/MatMul_grad/MatMulMatMul6gradients/action_probs_grad/tuple/control_dependency_1dense_1/kernel/read*
T0*
transpose_a( *
transpose_b(
²
&gradients/dense_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients/action_probs_grad/tuple/control_dependency_1*
transpose_b( *
T0*
transpose_a(

.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
Ū
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
į
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
Ŗ
$gradients/dense_2/MatMul_grad/MatMulMatMul6gradients/action_probs_grad/tuple/control_dependency_2dense_2/kernel/read*
transpose_a( *
transpose_b(*
T0
²
&gradients/dense_2/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients/action_probs_grad/tuple/control_dependency_2*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Ū
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
į
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
Ā
gradients/AddN_20AddN6gradients/dense_3/MatMul_grad/tuple/control_dependency4gradients/dense/MatMul_grad/tuple/control_dependency6gradients/dense_1/MatMul_grad/tuple/control_dependency6gradients/dense_2/MatMul_grad/tuple/control_dependency*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul*
N
o
.gradients/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
Ā
>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_1/Mul_grad/Shape0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0
n
,gradients/main_graph_0/hidden_1/Mul_grad/MulMulgradients/AddN_20main_graph_0/hidden_1/Sigmoid*
T0
Ē
,gradients/main_graph_0/hidden_1/Mul_grad/SumSum,gradients/main_graph_0/hidden_1/Mul_grad/Mul>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
°
0gradients/main_graph_0/hidden_1/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_1/Mul_grad/Sum.gradients/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0
p
.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAddgradients/AddN_20*
T0
Ķ
.gradients/main_graph_0/hidden_1/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1@gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
¶
2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_1/Mul_grad/Sum_10gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_1/Mul_grad/Reshape3^gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_1/Mul_grad/Reshape:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1
“
8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidCgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
ķ
gradients/AddN_21AddNAgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
N*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
z
8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_21*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_219^gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
ņ
Egradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_21>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ļ
4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_1/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1
o
.gradients/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
Ā
>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_0/Mul_grad/Shape0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
”
,gradients/main_graph_0/hidden_0/Mul_grad/MulMulDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
Ē
,gradients/main_graph_0/hidden_0/Mul_grad/SumSum,gradients/main_graph_0/hidden_0/Mul_grad/Mul>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
°
0gradients/main_graph_0/hidden_0/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_0/Mul_grad/Sum.gradients/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
£
.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Ķ
.gradients/main_graph_0/hidden_0/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1@gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
¶
2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_0/Mul_grad/Sum_10gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_0/Mul_grad/Reshape3^gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_0/Mul_grad/Reshape:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1
“
8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidCgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
ķ
gradients/AddN_22AddNAgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape*
N
z
8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_22*
data_formatNHWC*
T0

=gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_229^gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
ņ
Egradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_22>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
Č
4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
°
<gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_0/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1
g
beta1_power/initial_valueConst*
_class
loc:@dense/kernel*
valueB
 *fff?*
dtype0
x
beta1_power
VariableV2*
_class
loc:@dense/kernel*
dtype0*
	container *
shape: *
shared_name 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/kernel
S
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/kernel
g
beta2_power/initial_valueConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *w¾?
x
beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/kernel
S
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/kernel
©
Cmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB"	      *
dtype0

9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *    

3main_graph_0/hidden_0/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*

index_type0
§
!main_graph_0/hidden_0/kernel/Adam
VariableV2*
shape:		*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container 
ķ
(main_graph_0/hidden_0/kernel/Adam/AssignAssign!main_graph_0/hidden_0/kernel/Adam3main_graph_0/hidden_0/kernel/Adam/Initializer/zeros*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(*
use_locking(

&main_graph_0/hidden_0/kernel/Adam/readIdentity!main_graph_0/hidden_0/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
«
Emain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB"	      *
dtype0

;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *    *
dtype0

5main_graph_0/hidden_0/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*

index_type0
©
#main_graph_0/hidden_0/kernel/Adam_1
VariableV2*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container *
shape:		
ó
*main_graph_0/hidden_0/kernel/Adam_1/AssignAssign#main_graph_0/hidden_0/kernel/Adam_15main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

(main_graph_0/hidden_0/kernel/Adam_1/readIdentity#main_graph_0/hidden_0/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

Amain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB:*
dtype0

7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB
 *    *
dtype0
’
1main_graph_0/hidden_0/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*

index_type0

main_graph_0/hidden_0/bias/Adam
VariableV2*-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container *
shape:*
shared_name 
å
&main_graph_0/hidden_0/bias/Adam/AssignAssignmain_graph_0/hidden_0/bias/Adam1main_graph_0/hidden_0/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias

$main_graph_0/hidden_0/bias/Adam/readIdentitymain_graph_0/hidden_0/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
”
Cmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB:*
dtype0

9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB
 *    *
dtype0

3main_graph_0/hidden_0/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*

index_type0
”
!main_graph_0/hidden_0/bias/Adam_1
VariableV2*-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container *
shape:*
shared_name 
ė
(main_graph_0/hidden_0/bias/Adam_1/AssignAssign!main_graph_0/hidden_0/bias/Adam_13main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(

&main_graph_0/hidden_0/bias/Adam_1/readIdentity!main_graph_0/hidden_0/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
©
Cmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB"      

9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *    *
dtype0

3main_graph_0/hidden_1/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*

index_type0
Ø
!main_graph_0/hidden_1/kernel/Adam
VariableV2*
dtype0*
	container *
shape:
*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel
ķ
(main_graph_0/hidden_1/kernel/Adam/AssignAssign!main_graph_0/hidden_1/kernel/Adam3main_graph_0/hidden_1/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

&main_graph_0/hidden_1/kernel/Adam/readIdentity!main_graph_0/hidden_1/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
«
Emain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB"      *
dtype0

;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *    *
dtype0

5main_graph_0/hidden_1/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*

index_type0
Ŗ
#main_graph_0/hidden_1/kernel/Adam_1
VariableV2*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container *
shape:

ó
*main_graph_0/hidden_1/kernel/Adam_1/AssignAssign#main_graph_0/hidden_1/kernel/Adam_15main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(

(main_graph_0/hidden_1/kernel/Adam_1/readIdentity#main_graph_0/hidden_1/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

Amain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB:*
dtype0

7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/ConstConst*
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB
 *    
’
1main_graph_0/hidden_1/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*

index_type0

main_graph_0/hidden_1/bias/Adam
VariableV2*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container *
shape:
å
&main_graph_0/hidden_1/bias/Adam/AssignAssignmain_graph_0/hidden_1/bias/Adam1main_graph_0/hidden_1/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

$main_graph_0/hidden_1/bias/Adam/readIdentitymain_graph_0/hidden_1/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
”
Cmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB:

9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB
 *    *
dtype0

3main_graph_0/hidden_1/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*

index_type0
”
!main_graph_0/hidden_1/bias/Adam_1
VariableV2*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container *
shape:
ė
(main_graph_0/hidden_1/bias/Adam_1/AssignAssign!main_graph_0/hidden_1/bias/Adam_13main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

&main_graph_0/hidden_1/bias/Adam_1/readIdentity!main_graph_0/hidden_1/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@dense/kernel*
valueB"      
w
)dense/kernel/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
Ē
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0

dense/kernel/Adam
VariableV2*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
shape:	
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel

5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0
y
+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *    
Ķ
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0

dense/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:	*
shared_name *
_class
loc:@dense/kernel
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel

5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0
{
+dense_1/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0
Ļ
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0

dense_1/kernel/Adam
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0
}
-dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *    
Õ
'dense_1/kernel/Adam_1/Initializer/zerosFill7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0

dense_1/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:	*
shared_name *!
_class
loc:@dense_1/kernel
»
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel

5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB"      
{
+dense_2/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0
Ļ
%dense_2/kernel/Adam/Initializer/zerosFill5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_2/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0

dense_2/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:	
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"      *
dtype0
}
-dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0
Õ
'dense_2/kernel/Adam_1/Initializer/zerosFill7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0

dense_2/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:	
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel

5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0
{
+dense_3/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_3/kernel*
valueB
 *    *
dtype0
Ļ
%dense_3/kernel/Adam/Initializer/zerosFill5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_3/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_3/kernel*

index_type0

dense_3/kernel/Adam
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_3/kernel*
dtype0*
	container 
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel

7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0
}
-dense_3/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *    
Õ
'dense_3/kernel/Adam_1/Initializer/zerosFill7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_3/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_3/kernel*

index_type0

dense_3/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:	*
shared_name *!
_class
loc:@dense_3/kernel
»
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_3/kernel
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel

3dense_3/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_3/bias*
valueB:*
dtype0
w
)dense_3/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_3/bias*
valueB
 *    *
dtype0
Ē
#dense_3/bias/Adam/Initializer/zerosFill3dense_3/bias/Adam/Initializer/zeros/shape_as_tensor)dense_3/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_3/bias*

index_type0

dense_3/bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_3/bias
­
dense_3/bias/Adam/AssignAssigndense_3/bias/Adam#dense_3/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(
_
dense_3/bias/Adam/readIdentitydense_3/bias/Adam*
T0*
_class
loc:@dense_3/bias

5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_3/bias*
valueB:*
dtype0
y
+dense_3/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_3/bias*
valueB
 *    *
dtype0
Ķ
%dense_3/bias/Adam_1/Initializer/zerosFill5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_3/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_3/bias*

index_type0

dense_3/bias/Adam_1
VariableV2*
_class
loc:@dense_3/bias*
dtype0*
	container *
shape:*
shared_name 
³
dense_3/bias/Adam_1/AssignAssigndense_3/bias/Adam_1%dense_3/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(
c
dense_3/bias/Adam_1/readIdentitydense_3/bias/Adam_1*
T0*
_class
loc:@dense_3/bias
µ
Ivector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB"	      
£
?vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB
 *    *
dtype0

9vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zerosFillIvector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*

index_type0
³
'vector_obs_encoder/hidden_0/kernel/Adam
VariableV2*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
dtype0*
	container *
shape:		*
shared_name 

.vector_obs_encoder/hidden_0/kernel/Adam/AssignAssign'vector_obs_encoder/hidden_0/kernel/Adam9vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(
”
,vector_obs_encoder/hidden_0/kernel/Adam/readIdentity'vector_obs_encoder/hidden_0/kernel/Adam*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
·
Kvector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB"	      *
dtype0
„
Avector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB
 *    *
dtype0
„
;vector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zerosFillKvector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorAvector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*

index_type0
µ
)vector_obs_encoder/hidden_0/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:		*
shared_name *5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

0vector_obs_encoder/hidden_0/kernel/Adam_1/AssignAssign)vector_obs_encoder/hidden_0/kernel/Adam_1;vector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(*
use_locking(
„
.vector_obs_encoder/hidden_0/kernel/Adam_1/readIdentity)vector_obs_encoder/hidden_0/kernel/Adam_1*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
«
Gvector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB:

=vector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/ConstConst*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB
 *    

7vector_obs_encoder/hidden_0/bias/Adam/Initializer/zerosFillGvector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor=vector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*

index_type0
«
%vector_obs_encoder/hidden_0/bias/Adam
VariableV2*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
dtype0*
	container *
shape:
ż
,vector_obs_encoder/hidden_0/bias/Adam/AssignAssign%vector_obs_encoder/hidden_0/bias/Adam7vector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
validate_shape(*
use_locking(

*vector_obs_encoder/hidden_0/bias/Adam/readIdentity%vector_obs_encoder/hidden_0/bias/Adam*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
­
Ivector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB:*
dtype0
”
?vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB
 *    *
dtype0

9vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zerosFillIvector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*

index_type0
­
'vector_obs_encoder/hidden_0/bias/Adam_1
VariableV2*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
dtype0*
	container *
shape:*
shared_name 

.vector_obs_encoder/hidden_0/bias/Adam_1/AssignAssign'vector_obs_encoder/hidden_0/bias/Adam_19vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
validate_shape(

,vector_obs_encoder/hidden_0/bias/Adam_1/readIdentity'vector_obs_encoder/hidden_0/bias/Adam_1*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
µ
Ivector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB"      *
dtype0
£
?vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB
 *    *
dtype0

9vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zerosFillIvector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*

index_type0
“
'vector_obs_encoder/hidden_1/kernel/Adam
VariableV2*
dtype0*
	container *
shape:
*
shared_name *5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

.vector_obs_encoder/hidden_1/kernel/Adam/AssignAssign'vector_obs_encoder/hidden_1/kernel/Adam9vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
”
,vector_obs_encoder/hidden_1/kernel/Adam/readIdentity'vector_obs_encoder/hidden_1/kernel/Adam*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
·
Kvector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB"      *
dtype0
„
Avector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB
 *    *
dtype0
„
;vector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zerosFillKvector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorAvector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*

index_type0
¶
)vector_obs_encoder/hidden_1/kernel/Adam_1
VariableV2*
shared_name *5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
dtype0*
	container *
shape:


0vector_obs_encoder/hidden_1/kernel/Adam_1/AssignAssign)vector_obs_encoder/hidden_1/kernel/Adam_1;vector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
validate_shape(
„
.vector_obs_encoder/hidden_1/kernel/Adam_1/readIdentity)vector_obs_encoder/hidden_1/kernel/Adam_1*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
«
Gvector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB:

=vector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/ConstConst*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB
 *    

7vector_obs_encoder/hidden_1/bias/Adam/Initializer/zerosFillGvector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor=vector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*

index_type0
«
%vector_obs_encoder/hidden_1/bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
ż
,vector_obs_encoder/hidden_1/bias/Adam/AssignAssign%vector_obs_encoder/hidden_1/bias/Adam7vector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
validate_shape(

*vector_obs_encoder/hidden_1/bias/Adam/readIdentity%vector_obs_encoder/hidden_1/bias/Adam*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
­
Ivector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB:*
dtype0
”
?vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB
 *    

9vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zerosFillIvector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*

index_type0
­
'vector_obs_encoder/hidden_1/bias/Adam_1
VariableV2*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
dtype0*
	container *
shape:

.vector_obs_encoder/hidden_1/bias/Adam_1/AssignAssign'vector_obs_encoder/hidden_1/bias/Adam_19vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
validate_shape(

,vector_obs_encoder/hidden_1/bias/Adam_1/readIdentity'vector_obs_encoder/hidden_1/bias/Adam_1*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_4/kernel*
valueB"      *
dtype0
{
+dense_4/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *    
Ļ
%dense_4/kernel/Adam/Initializer/zerosFill5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_4/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_4/kernel*

index_type0

dense_4/kernel/Adam
VariableV2*!
_class
loc:@dense_4/kernel*
dtype0*
	container *
shape:
*
shared_name 
µ
dense_4/kernel/Adam/AssignAssigndense_4/kernel/Adam%dense_4/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(
e
dense_4/kernel/Adam/readIdentitydense_4/kernel/Adam*
T0*!
_class
loc:@dense_4/kernel

7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_4/kernel*
valueB"      *
dtype0
}
-dense_4/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0
Õ
'dense_4/kernel/Adam_1/Initializer/zerosFill7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_4/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_4/kernel*

index_type0

dense_4/kernel/Adam_1
VariableV2*!
_class
loc:@dense_4/kernel*
dtype0*
	container *
shape:
*
shared_name 
»
dense_4/kernel/Adam_1/AssignAssigndense_4/kernel/Adam_1'dense_4/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(
i
dense_4/kernel/Adam_1/readIdentitydense_4/kernel/Adam_1*
T0*!
_class
loc:@dense_4/kernel

3dense_4/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_4/bias*
valueB:*
dtype0
w
)dense_4/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_4/bias*
valueB
 *    *
dtype0
Ē
#dense_4/bias/Adam/Initializer/zerosFill3dense_4/bias/Adam/Initializer/zeros/shape_as_tensor)dense_4/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_4/bias*

index_type0

dense_4/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense_4/bias*
dtype0*
	container *
shape:
­
dense_4/bias/Adam/AssignAssigndense_4/bias/Adam#dense_4/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_4/bias
_
dense_4/bias/Adam/readIdentitydense_4/bias/Adam*
T0*
_class
loc:@dense_4/bias

5dense_4/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_4/bias*
valueB:*
dtype0
y
+dense_4/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_4/bias*
valueB
 *    *
dtype0
Ķ
%dense_4/bias/Adam_1/Initializer/zerosFill5dense_4/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_4/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_4/bias*

index_type0

dense_4/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense_4/bias*
dtype0*
	container 
³
dense_4/bias/Adam_1/AssignAssigndense_4/bias/Adam_1%dense_4/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_4/bias
c
dense_4/bias/Adam_1/readIdentitydense_4/bias/Adam_1*
T0*
_class
loc:@dense_4/bias

5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_5/kernel*
valueB"      *
dtype0
{
+dense_5/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0
Ļ
%dense_5/kernel/Adam/Initializer/zerosFill5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_5/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_5/kernel*

index_type0

dense_5/kernel/Adam
VariableV2*!
_class
loc:@dense_5/kernel*
dtype0*
	container *
shape:	*
shared_name 
µ
dense_5/kernel/Adam/AssignAssigndense_5/kernel/Adam%dense_5/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
use_locking(
e
dense_5/kernel/Adam/readIdentitydense_5/kernel/Adam*
T0*!
_class
loc:@dense_5/kernel

7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_5/kernel*
valueB"      *
dtype0
}
-dense_5/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0
Õ
'dense_5/kernel/Adam_1/Initializer/zerosFill7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_5/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_5/kernel*

index_type0

dense_5/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_5/kernel*
dtype0*
	container *
shape:	
»
dense_5/kernel/Adam_1/AssignAssigndense_5/kernel/Adam_1'dense_5/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_5/kernel
i
dense_5/kernel/Adam_1/readIdentitydense_5/kernel/Adam_1*
T0*!
_class
loc:@dense_5/kernel

3dense_5/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_5/bias*
valueB:*
dtype0
w
)dense_5/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_5/bias*
valueB
 *    *
dtype0
Ē
#dense_5/bias/Adam/Initializer/zerosFill3dense_5/bias/Adam/Initializer/zeros/shape_as_tensor)dense_5/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_5/bias*

index_type0

dense_5/bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_5/bias
­
dense_5/bias/Adam/AssignAssigndense_5/bias/Adam#dense_5/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(
_
dense_5/bias/Adam/readIdentitydense_5/bias/Adam*
T0*
_class
loc:@dense_5/bias

5dense_5/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_5/bias*
valueB:*
dtype0
y
+dense_5/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_5/bias*
valueB
 *    *
dtype0
Ķ
%dense_5/bias/Adam_1/Initializer/zerosFill5dense_5/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_5/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_5/bias*

index_type0

dense_5/bias/Adam_1
VariableV2*
_class
loc:@dense_5/bias*
dtype0*
	container *
shape:*
shared_name 
³
dense_5/bias/Adam_1/AssignAssigndense_5/bias/Adam_1%dense_5/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(
c
dense_5/bias/Adam_1/readIdentitydense_5/bias/Adam_1*
T0*
_class
loc:@dense_5/bias

5dense_6/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_6/kernel*
valueB"      *
dtype0
{
+dense_6/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_6/kernel*
valueB
 *    *
dtype0
Ļ
%dense_6/kernel/Adam/Initializer/zerosFill5dense_6/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_6/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_6/kernel*

index_type0

dense_6/kernel/Adam
VariableV2*!
_class
loc:@dense_6/kernel*
dtype0*
	container *
shape:	*
shared_name 
µ
dense_6/kernel/Adam/AssignAssigndense_6/kernel/Adam%dense_6/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_6/kernel*
validate_shape(
e
dense_6/kernel/Adam/readIdentitydense_6/kernel/Adam*
T0*!
_class
loc:@dense_6/kernel

7dense_6/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_6/kernel*
valueB"      *
dtype0
}
-dense_6/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_6/kernel*
valueB
 *    *
dtype0
Õ
'dense_6/kernel/Adam_1/Initializer/zerosFill7dense_6/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_6/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_6/kernel*

index_type0

dense_6/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:	*
shared_name *!
_class
loc:@dense_6/kernel
»
dense_6/kernel/Adam_1/AssignAssigndense_6/kernel/Adam_1'dense_6/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_6/kernel*
validate_shape(
i
dense_6/kernel/Adam_1/readIdentitydense_6/kernel/Adam_1*
T0*!
_class
loc:@dense_6/kernel

3dense_6/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_6/bias*
valueB:*
dtype0
w
)dense_6/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_6/bias*
valueB
 *    *
dtype0
Ē
#dense_6/bias/Adam/Initializer/zerosFill3dense_6/bias/Adam/Initializer/zeros/shape_as_tensor)dense_6/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_6/bias*

index_type0

dense_6/bias/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@dense_6/bias*
dtype0*
	container 
­
dense_6/bias/Adam/AssignAssigndense_6/bias/Adam#dense_6/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_6/bias
_
dense_6/bias/Adam/readIdentitydense_6/bias/Adam*
T0*
_class
loc:@dense_6/bias

5dense_6/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_6/bias*
valueB:*
dtype0
y
+dense_6/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_6/bias*
valueB
 *    *
dtype0
Ķ
%dense_6/bias/Adam_1/Initializer/zerosFill5dense_6/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_6/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_6/bias*

index_type0

dense_6/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@dense_6/bias*
dtype0*
	container *
shape:
³
dense_6/bias/Adam_1/AssignAssigndense_6/bias/Adam_1%dense_6/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_6/bias
c
dense_6/bias/Adam_1/readIdentitydense_6/bias/Adam_1*
T0*
_class
loc:@dense_6/bias

5dense_7/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_7/kernel*
valueB"      *
dtype0
{
+dense_7/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_7/kernel*
valueB
 *    *
dtype0
Ļ
%dense_7/kernel/Adam/Initializer/zerosFill5dense_7/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_7/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_7/kernel*

index_type0

dense_7/kernel/Adam
VariableV2*!
_class
loc:@dense_7/kernel*
dtype0*
	container *
shape:	*
shared_name 
µ
dense_7/kernel/Adam/AssignAssigndense_7/kernel/Adam%dense_7/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_7/kernel*
validate_shape(
e
dense_7/kernel/Adam/readIdentitydense_7/kernel/Adam*
T0*!
_class
loc:@dense_7/kernel

7dense_7/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_7/kernel*
valueB"      *
dtype0
}
-dense_7/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_7/kernel*
valueB
 *    *
dtype0
Õ
'dense_7/kernel/Adam_1/Initializer/zerosFill7dense_7/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_7/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_7/kernel*

index_type0

dense_7/kernel/Adam_1
VariableV2*!
_class
loc:@dense_7/kernel*
dtype0*
	container *
shape:	*
shared_name 
»
dense_7/kernel/Adam_1/AssignAssigndense_7/kernel/Adam_1'dense_7/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_7/kernel
i
dense_7/kernel/Adam_1/readIdentitydense_7/kernel/Adam_1*
T0*!
_class
loc:@dense_7/kernel

3dense_7/bias/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@dense_7/bias*
valueB:
w
)dense_7/bias/Adam/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_7/bias*
valueB
 *    
Ē
#dense_7/bias/Adam/Initializer/zerosFill3dense_7/bias/Adam/Initializer/zeros/shape_as_tensor)dense_7/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_7/bias*

index_type0

dense_7/bias/Adam
VariableV2*
_class
loc:@dense_7/bias*
dtype0*
	container *
shape:*
shared_name 
­
dense_7/bias/Adam/AssignAssigndense_7/bias/Adam#dense_7/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_7/bias
_
dense_7/bias/Adam/readIdentitydense_7/bias/Adam*
T0*
_class
loc:@dense_7/bias

5dense_7/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_7/bias*
valueB:*
dtype0
y
+dense_7/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_7/bias*
valueB
 *    *
dtype0
Ķ
%dense_7/bias/Adam_1/Initializer/zerosFill5dense_7/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_7/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_7/bias*

index_type0

dense_7/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@dense_7/bias*
dtype0*
	container *
shape:
³
dense_7/bias/Adam_1/AssignAssigndense_7/bias/Adam_1%dense_7/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_7/bias
c
dense_7/bias/Adam_1/readIdentitydense_7/bias/Adam_1*
T0*
_class
loc:@dense_7/bias

5dense_8/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_8/kernel*
valueB"      *
dtype0
{
+dense_8/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_8/kernel*
valueB
 *    *
dtype0
Ļ
%dense_8/kernel/Adam/Initializer/zerosFill5dense_8/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_8/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_8/kernel*

index_type0

dense_8/kernel/Adam
VariableV2*
dtype0*
	container *
shape:
*
shared_name *!
_class
loc:@dense_8/kernel
µ
dense_8/kernel/Adam/AssignAssigndense_8/kernel/Adam%dense_8/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_8/kernel
e
dense_8/kernel/Adam/readIdentitydense_8/kernel/Adam*
T0*!
_class
loc:@dense_8/kernel

7dense_8/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_8/kernel*
valueB"      *
dtype0
}
-dense_8/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_8/kernel*
valueB
 *    *
dtype0
Õ
'dense_8/kernel/Adam_1/Initializer/zerosFill7dense_8/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_8/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_8/kernel*

index_type0

dense_8/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_8/kernel*
dtype0*
	container *
shape:

»
dense_8/kernel/Adam_1/AssignAssigndense_8/kernel/Adam_1'dense_8/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_8/kernel*
validate_shape(
i
dense_8/kernel/Adam_1/readIdentitydense_8/kernel/Adam_1*
T0*!
_class
loc:@dense_8/kernel

3dense_8/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_8/bias*
valueB:*
dtype0
w
)dense_8/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_8/bias*
valueB
 *    *
dtype0
Ē
#dense_8/bias/Adam/Initializer/zerosFill3dense_8/bias/Adam/Initializer/zeros/shape_as_tensor)dense_8/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_8/bias*

index_type0

dense_8/bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_8/bias
­
dense_8/bias/Adam/AssignAssigndense_8/bias/Adam#dense_8/bias/Adam/Initializer/zeros*
T0*
_class
loc:@dense_8/bias*
validate_shape(*
use_locking(
_
dense_8/bias/Adam/readIdentitydense_8/bias/Adam*
T0*
_class
loc:@dense_8/bias

5dense_8/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@dense_8/bias*
valueB:
y
+dense_8/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_8/bias*
valueB
 *    *
dtype0
Ķ
%dense_8/bias/Adam_1/Initializer/zerosFill5dense_8/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_8/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_8/bias*

index_type0

dense_8/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_8/bias
³
dense_8/bias/Adam_1/AssignAssigndense_8/bias/Adam_1%dense_8/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_8/bias*
validate_shape(
c
dense_8/bias/Adam_1/readIdentitydense_8/bias/Adam_1*
T0*
_class
loc:@dense_8/bias

5dense_9/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_9/kernel*
valueB"      *
dtype0
{
+dense_9/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_9/kernel*
valueB
 *    *
dtype0
Ļ
%dense_9/kernel/Adam/Initializer/zerosFill5dense_9/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_9/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_9/kernel*

index_type0

dense_9/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_9/kernel*
dtype0*
	container *
shape:

µ
dense_9/kernel/Adam/AssignAssigndense_9/kernel/Adam%dense_9/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_9/kernel*
validate_shape(
e
dense_9/kernel/Adam/readIdentitydense_9/kernel/Adam*
T0*!
_class
loc:@dense_9/kernel

7dense_9/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_9/kernel*
valueB"      *
dtype0
}
-dense_9/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_9/kernel*
valueB
 *    *
dtype0
Õ
'dense_9/kernel/Adam_1/Initializer/zerosFill7dense_9/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_9/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_9/kernel*

index_type0

dense_9/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_9/kernel*
dtype0*
	container *
shape:

»
dense_9/kernel/Adam_1/AssignAssigndense_9/kernel/Adam_1'dense_9/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_9/kernel*
validate_shape(
i
dense_9/kernel/Adam_1/readIdentitydense_9/kernel/Adam_1*
T0*!
_class
loc:@dense_9/kernel

3dense_9/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_9/bias*
valueB:*
dtype0
w
)dense_9/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_9/bias*
valueB
 *    *
dtype0
Ē
#dense_9/bias/Adam/Initializer/zerosFill3dense_9/bias/Adam/Initializer/zeros/shape_as_tensor)dense_9/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_9/bias*

index_type0

dense_9/bias/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@dense_9/bias*
dtype0*
	container 
­
dense_9/bias/Adam/AssignAssigndense_9/bias/Adam#dense_9/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_9/bias*
validate_shape(
_
dense_9/bias/Adam/readIdentitydense_9/bias/Adam*
T0*
_class
loc:@dense_9/bias

5dense_9/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_9/bias*
valueB:*
dtype0
y
+dense_9/bias/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_9/bias*
valueB
 *    
Ķ
%dense_9/bias/Adam_1/Initializer/zerosFill5dense_9/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_9/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_9/bias*

index_type0

dense_9/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@dense_9/bias*
dtype0*
	container *
shape:
³
dense_9/bias/Adam_1/AssignAssigndense_9/bias/Adam_1%dense_9/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense_9/bias*
validate_shape(*
use_locking(
c
dense_9/bias/Adam_1/readIdentitydense_9/bias/Adam_1*
T0*
_class
loc:@dense_9/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
dtype0*
valueB
 *wĢ+2
©
2Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
use_nesterov( 
 
0Adam/update_main_graph_0/hidden_0/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
use_nesterov( 
©
2Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
 
0Adam/update_main_graph_0/hidden_1/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
use_nesterov( *
use_locking( 
É
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( 
Õ
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
use_nesterov( 
Õ
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_2/kernel*
use_nesterov( 
Õ
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_3/kernel*
use_nesterov( 
Ģ
"Adam/update_dense_3/bias/ApplyAdam	ApplyAdamdense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@dense_3/bias

8Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam	ApplyAdam"vector_obs_encoder/hidden_0/kernel'vector_obs_encoder/hidden_0/kernel/Adam)vector_obs_encoder/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_18*
use_locking( *
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
use_nesterov( 

6Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam	ApplyAdam vector_obs_encoder/hidden_0/bias%vector_obs_encoder/hidden_0/bias/Adam'vector_obs_encoder/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_17*
use_nesterov( *
use_locking( *
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

8Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam	ApplyAdam"vector_obs_encoder/hidden_1/kernel'vector_obs_encoder/hidden_1/kernel/Adam)vector_obs_encoder/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_11*
use_nesterov( *
use_locking( *
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

6Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam	ApplyAdam vector_obs_encoder/hidden_1/bias%vector_obs_encoder/hidden_1/bias/Adam'vector_obs_encoder/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_10*
use_nesterov( *
use_locking( *
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
Õ
$Adam/update_dense_4/kernel/ApplyAdam	ApplyAdamdense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_4/kernel*
use_nesterov( 
Ģ
"Adam/update_dense_4/bias/ApplyAdam	ApplyAdamdense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_4/bias*
use_nesterov( 
Õ
$Adam/update_dense_5/kernel/ApplyAdam	ApplyAdamdense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_5/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@dense_5/kernel
Ģ
"Adam/update_dense_5/bias/ApplyAdam	ApplyAdamdense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_5/bias*
use_nesterov( 
Õ
$Adam/update_dense_6/kernel/ApplyAdam	ApplyAdamdense_6/kerneldense_6/kernel/Adamdense_6/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_6/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_6/kernel*
use_nesterov( 
Ģ
"Adam/update_dense_6/bias/ApplyAdam	ApplyAdamdense_6/biasdense_6/bias/Adamdense_6/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_6/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense_6/bias*
use_nesterov( *
use_locking( 
Õ
$Adam/update_dense_7/kernel/ApplyAdam	ApplyAdamdense_7/kerneldense_7/kernel/Adamdense_7/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_7/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_7/kernel*
use_nesterov( 
Ģ
"Adam/update_dense_7/bias/ApplyAdam	ApplyAdamdense_7/biasdense_7/bias/Adamdense_7/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_7/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_7/bias*
use_nesterov( 
Õ
$Adam/update_dense_8/kernel/ApplyAdam	ApplyAdamdense_8/kerneldense_8/kernel/Adamdense_8/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_8/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_8/kernel*
use_nesterov( *
use_locking( 
Ģ
"Adam/update_dense_8/bias/ApplyAdam	ApplyAdamdense_8/biasdense_8/bias/Adamdense_8/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_8/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense_8/bias*
use_nesterov( *
use_locking( 
Õ
$Adam/update_dense_9/kernel/ApplyAdam	ApplyAdamdense_9/kerneldense_9/kernel/Adamdense_9/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_9/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@dense_9/kernel
Ģ
"Adam/update_dense_9/bias/ApplyAdam	ApplyAdamdense_9/biasdense_9/bias/Adamdense_9/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_9/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_9/bias*
use_nesterov( 
	
Adam/mulMulbeta1_power/read
Adam/beta13^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam%^Adam/update_dense_6/kernel/ApplyAdam#^Adam/update_dense_6/bias/ApplyAdam%^Adam/update_dense_7/kernel/ApplyAdam#^Adam/update_dense_7/bias/ApplyAdam%^Adam/update_dense_8/kernel/ApplyAdam#^Adam/update_dense_8/bias/ApplyAdam%^Adam/update_dense_9/kernel/ApplyAdam#^Adam/update_dense_9/bias/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@dense/kernel*
validate_shape(
	

Adam/mul_1Mulbeta2_power/read
Adam/beta23^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam%^Adam/update_dense_6/kernel/ApplyAdam#^Adam/update_dense_6/bias/ApplyAdam%^Adam/update_dense_7/kernel/ApplyAdam#^Adam/update_dense_7/bias/ApplyAdam%^Adam/update_dense_8/kernel/ApplyAdam#^Adam/update_dense_8/bias/ApplyAdam%^Adam/update_dense_9/kernel/ApplyAdam#^Adam/update_dense_9/bias/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
validate_shape(
é
AdamNoOp3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam%^Adam/update_dense_6/kernel/ApplyAdam#^Adam/update_dense_6/bias/ApplyAdam%^Adam/update_dense_7/kernel/ApplyAdam#^Adam/update_dense_7/bias/ApplyAdam%^Adam/update_dense_8/kernel/ApplyAdam#^Adam/update_dense_8/bias/ApplyAdam%^Adam/update_dense_9/kernel/ApplyAdam#^Adam/update_dense_9/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
8

save/ConstConst*
valueB Bmodel*
dtype0
ļ
save/SaveV2/tensor_namesConst*¾
value“B±SBaction_output_shapeBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bdense_6/biasBdense_6/bias/AdamBdense_6/bias/Adam_1Bdense_6/kernelBdense_6/kernel/AdamBdense_6/kernel/Adam_1Bdense_7/biasBdense_7/bias/AdamBdense_7/bias/Adam_1Bdense_7/kernelBdense_7/kernel/AdamBdense_7/kernel/Adam_1Bdense_8/biasBdense_8/bias/AdamBdense_8/bias/Adam_1Bdense_8/kernelBdense_8/kernel/AdamBdense_8/kernel/Adam_1Bdense_9/biasBdense_9/bias/AdamBdense_9/bias/Adam_1Bdense_9/kernelBdense_9/kernel/AdamBdense_9/kernel/Adam_1Bglobal_stepBis_continuous_controlBlast_rewardBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmemory_sizeB vector_obs_encoder/hidden_0/biasB%vector_obs_encoder/hidden_0/bias/AdamB'vector_obs_encoder/hidden_0/bias/Adam_1B"vector_obs_encoder/hidden_0/kernelB'vector_obs_encoder/hidden_0/kernel/AdamB)vector_obs_encoder/hidden_0/kernel/Adam_1B vector_obs_encoder/hidden_1/biasB%vector_obs_encoder/hidden_1/bias/AdamB'vector_obs_encoder/hidden_1/bias/Adam_1B"vector_obs_encoder/hidden_1/kernelB'vector_obs_encoder/hidden_1/kernel/AdamB)vector_obs_encoder/hidden_1/kernel/Adam_1Bversion_number*
dtype0
š
save/SaveV2/shape_and_slicesConst*»
value±B®SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
å
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaction_output_shapebeta1_powerbeta2_powerdense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1dense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1dense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1dense_6/biasdense_6/bias/Adamdense_6/bias/Adam_1dense_6/kerneldense_6/kernel/Adamdense_6/kernel/Adam_1dense_7/biasdense_7/bias/Adamdense_7/bias/Adam_1dense_7/kerneldense_7/kernel/Adamdense_7/kernel/Adam_1dense_8/biasdense_8/bias/Adamdense_8/bias/Adam_1dense_8/kerneldense_8/kernel/Adamdense_8/kernel/Adam_1dense_9/biasdense_9/bias/Adamdense_9/bias/Adam_1dense_9/kerneldense_9/kernel/Adamdense_9/kernel/Adam_1global_stepis_continuous_controllast_rewardmain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1main_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1main_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1main_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1memory_size vector_obs_encoder/hidden_0/bias%vector_obs_encoder/hidden_0/bias/Adam'vector_obs_encoder/hidden_0/bias/Adam_1"vector_obs_encoder/hidden_0/kernel'vector_obs_encoder/hidden_0/kernel/Adam)vector_obs_encoder/hidden_0/kernel/Adam_1 vector_obs_encoder/hidden_1/bias%vector_obs_encoder/hidden_1/bias/Adam'vector_obs_encoder/hidden_1/bias/Adam_1"vector_obs_encoder/hidden_1/kernel'vector_obs_encoder/hidden_1/kernel/Adam)vector_obs_encoder/hidden_1/kernel/Adam_1version_number*a
dtypesW
U2S
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const

save/RestoreV2/tensor_namesConst"/device:CPU:0*¾
value“B±SBaction_output_shapeBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bdense_6/biasBdense_6/bias/AdamBdense_6/bias/Adam_1Bdense_6/kernelBdense_6/kernel/AdamBdense_6/kernel/Adam_1Bdense_7/biasBdense_7/bias/AdamBdense_7/bias/Adam_1Bdense_7/kernelBdense_7/kernel/AdamBdense_7/kernel/Adam_1Bdense_8/biasBdense_8/bias/AdamBdense_8/bias/Adam_1Bdense_8/kernelBdense_8/kernel/AdamBdense_8/kernel/Adam_1Bdense_9/biasBdense_9/bias/AdamBdense_9/bias/Adam_1Bdense_9/kernelBdense_9/kernel/AdamBdense_9/kernel/Adam_1Bglobal_stepBis_continuous_controlBlast_rewardBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmemory_sizeB vector_obs_encoder/hidden_0/biasB%vector_obs_encoder/hidden_0/bias/AdamB'vector_obs_encoder/hidden_0/bias/Adam_1B"vector_obs_encoder/hidden_0/kernelB'vector_obs_encoder/hidden_0/kernel/AdamB)vector_obs_encoder/hidden_0/kernel/Adam_1B vector_obs_encoder/hidden_1/biasB%vector_obs_encoder/hidden_1/bias/AdamB'vector_obs_encoder/hidden_1/bias/Adam_1B"vector_obs_encoder/hidden_1/kernelB'vector_obs_encoder/hidden_1/kernel/AdamB)vector_obs_encoder/hidden_1/kernel/Adam_1Bversion_number*
dtype0

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*»
value±B®SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
×
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*a
dtypesW
U2S

save/AssignAssignaction_output_shapesave/RestoreV2*
validate_shape(*
use_locking(*
T0*&
_class
loc:@action_output_shape

save/Assign_1Assignbeta1_powersave/RestoreV2:1*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(

save/Assign_2Assignbeta2_powersave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_3Assigndense/kernelsave/RestoreV2:3*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(

save/Assign_4Assigndense/kernel/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_5Assigndense/kernel/Adam_1save/RestoreV2:5*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(

save/Assign_6Assigndense_1/kernelsave/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(

save/Assign_7Assigndense_1/kernel/Adamsave/RestoreV2:7*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_1/kernel

save/Assign_8Assigndense_1/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(

save/Assign_9Assigndense_2/kernelsave/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(

save/Assign_10Assigndense_2/kernel/Adamsave/RestoreV2:10*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel

save/Assign_11Assigndense_2/kernel/Adam_1save/RestoreV2:11*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(

save/Assign_12Assigndense_3/biassave/RestoreV2:12*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(

save/Assign_13Assigndense_3/bias/Adamsave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(

save/Assign_14Assigndense_3/bias/Adam_1save/RestoreV2:14*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_3/bias

save/Assign_15Assigndense_3/kernelsave/RestoreV2:15*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_16Assigndense_3/kernel/Adamsave/RestoreV2:16*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_17Assigndense_3/kernel/Adam_1save/RestoreV2:17*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_18Assigndense_4/biassave/RestoreV2:18*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(

save/Assign_19Assigndense_4/bias/Adamsave/RestoreV2:19*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(

save/Assign_20Assigndense_4/bias/Adam_1save/RestoreV2:20*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_4/bias

save/Assign_21Assigndense_4/kernelsave/RestoreV2:21*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(

save/Assign_22Assigndense_4/kernel/Adamsave/RestoreV2:22*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
use_locking(

save/Assign_23Assigndense_4/kernel/Adam_1save/RestoreV2:23*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_4/kernel

save/Assign_24Assigndense_5/biassave/RestoreV2:24*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(

save/Assign_25Assigndense_5/bias/Adamsave/RestoreV2:25*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(

save/Assign_26Assigndense_5/bias/Adam_1save/RestoreV2:26*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(

save/Assign_27Assigndense_5/kernelsave/RestoreV2:27*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_5/kernel

save/Assign_28Assigndense_5/kernel/Adamsave/RestoreV2:28*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(

save/Assign_29Assigndense_5/kernel/Adam_1save/RestoreV2:29*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(

save/Assign_30Assigndense_6/biassave/RestoreV2:30*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_6/bias

save/Assign_31Assigndense_6/bias/Adamsave/RestoreV2:31*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_6/bias

save/Assign_32Assigndense_6/bias/Adam_1save/RestoreV2:32*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_6/bias

save/Assign_33Assigndense_6/kernelsave/RestoreV2:33*
T0*!
_class
loc:@dense_6/kernel*
validate_shape(*
use_locking(

save/Assign_34Assigndense_6/kernel/Adamsave/RestoreV2:34*
T0*!
_class
loc:@dense_6/kernel*
validate_shape(*
use_locking(

save/Assign_35Assigndense_6/kernel/Adam_1save/RestoreV2:35*
T0*!
_class
loc:@dense_6/kernel*
validate_shape(*
use_locking(

save/Assign_36Assigndense_7/biassave/RestoreV2:36*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_7/bias

save/Assign_37Assigndense_7/bias/Adamsave/RestoreV2:37*
T0*
_class
loc:@dense_7/bias*
validate_shape(*
use_locking(

save/Assign_38Assigndense_7/bias/Adam_1save/RestoreV2:38*
use_locking(*
T0*
_class
loc:@dense_7/bias*
validate_shape(

save/Assign_39Assigndense_7/kernelsave/RestoreV2:39*
T0*!
_class
loc:@dense_7/kernel*
validate_shape(*
use_locking(

save/Assign_40Assigndense_7/kernel/Adamsave/RestoreV2:40*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_7/kernel

save/Assign_41Assigndense_7/kernel/Adam_1save/RestoreV2:41*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_7/kernel

save/Assign_42Assigndense_8/biassave/RestoreV2:42*
use_locking(*
T0*
_class
loc:@dense_8/bias*
validate_shape(

save/Assign_43Assigndense_8/bias/Adamsave/RestoreV2:43*
use_locking(*
T0*
_class
loc:@dense_8/bias*
validate_shape(

save/Assign_44Assigndense_8/bias/Adam_1save/RestoreV2:44*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_8/bias

save/Assign_45Assigndense_8/kernelsave/RestoreV2:45*
T0*!
_class
loc:@dense_8/kernel*
validate_shape(*
use_locking(

save/Assign_46Assigndense_8/kernel/Adamsave/RestoreV2:46*
T0*!
_class
loc:@dense_8/kernel*
validate_shape(*
use_locking(

save/Assign_47Assigndense_8/kernel/Adam_1save/RestoreV2:47*
T0*!
_class
loc:@dense_8/kernel*
validate_shape(*
use_locking(

save/Assign_48Assigndense_9/biassave/RestoreV2:48*
use_locking(*
T0*
_class
loc:@dense_9/bias*
validate_shape(

save/Assign_49Assigndense_9/bias/Adamsave/RestoreV2:49*
use_locking(*
T0*
_class
loc:@dense_9/bias*
validate_shape(

save/Assign_50Assigndense_9/bias/Adam_1save/RestoreV2:50*
use_locking(*
T0*
_class
loc:@dense_9/bias*
validate_shape(

save/Assign_51Assigndense_9/kernelsave/RestoreV2:51*
use_locking(*
T0*!
_class
loc:@dense_9/kernel*
validate_shape(

save/Assign_52Assigndense_9/kernel/Adamsave/RestoreV2:52*
T0*!
_class
loc:@dense_9/kernel*
validate_shape(*
use_locking(

save/Assign_53Assigndense_9/kernel/Adam_1save/RestoreV2:53*
use_locking(*
T0*!
_class
loc:@dense_9/kernel*
validate_shape(

save/Assign_54Assignglobal_stepsave/RestoreV2:54*
validate_shape(*
use_locking(*
T0*
_class
loc:@global_step

save/Assign_55Assignis_continuous_controlsave/RestoreV2:55*
use_locking(*
T0*(
_class
loc:@is_continuous_control*
validate_shape(

save/Assign_56Assignlast_rewardsave/RestoreV2:56*
T0*
_class
loc:@last_reward*
validate_shape(*
use_locking(
Ø
save/Assign_57Assignmain_graph_0/hidden_0/biassave/RestoreV2:57*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
­
save/Assign_58Assignmain_graph_0/hidden_0/bias/Adamsave/RestoreV2:58*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
Æ
save/Assign_59Assign!main_graph_0/hidden_0/bias/Adam_1save/RestoreV2:59*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(*
use_locking(
¬
save/Assign_60Assignmain_graph_0/hidden_0/kernelsave/RestoreV2:60*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
±
save/Assign_61Assign!main_graph_0/hidden_0/kernel/Adamsave/RestoreV2:61*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
³
save/Assign_62Assign#main_graph_0/hidden_0/kernel/Adam_1save/RestoreV2:62*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
Ø
save/Assign_63Assignmain_graph_0/hidden_1/biassave/RestoreV2:63*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
­
save/Assign_64Assignmain_graph_0/hidden_1/bias/Adamsave/RestoreV2:64*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
Æ
save/Assign_65Assign!main_graph_0/hidden_1/bias/Adam_1save/RestoreV2:65*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
¬
save/Assign_66Assignmain_graph_0/hidden_1/kernelsave/RestoreV2:66*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
±
save/Assign_67Assign!main_graph_0/hidden_1/kernel/Adamsave/RestoreV2:67*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(*
use_locking(
³
save/Assign_68Assign#main_graph_0/hidden_1/kernel/Adam_1save/RestoreV2:68*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(*
use_locking(

save/Assign_69Assignmemory_sizesave/RestoreV2:69*
use_locking(*
T0*
_class
loc:@memory_size*
validate_shape(
“
save/Assign_70Assign vector_obs_encoder/hidden_0/biassave/RestoreV2:70*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
validate_shape(
¹
save/Assign_71Assign%vector_obs_encoder/hidden_0/bias/Adamsave/RestoreV2:71*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
validate_shape(*
use_locking(
»
save/Assign_72Assign'vector_obs_encoder/hidden_0/bias/Adam_1save/RestoreV2:72*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
ø
save/Assign_73Assign"vector_obs_encoder/hidden_0/kernelsave/RestoreV2:73*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(*
use_locking(
½
save/Assign_74Assign'vector_obs_encoder/hidden_0/kernel/Adamsave/RestoreV2:74*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(*
use_locking(
æ
save/Assign_75Assign)vector_obs_encoder/hidden_0/kernel/Adam_1save/RestoreV2:75*
validate_shape(*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
“
save/Assign_76Assign vector_obs_encoder/hidden_1/biassave/RestoreV2:76*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
validate_shape(*
use_locking(
¹
save/Assign_77Assign%vector_obs_encoder/hidden_1/bias/Adamsave/RestoreV2:77*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
validate_shape(
»
save/Assign_78Assign'vector_obs_encoder/hidden_1/bias/Adam_1save/RestoreV2:78*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
ø
save/Assign_79Assign"vector_obs_encoder/hidden_1/kernelsave/RestoreV2:79*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
validate_shape(
½
save/Assign_80Assign'vector_obs_encoder/hidden_1/kernel/Adamsave/RestoreV2:80*
validate_shape(*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
æ
save/Assign_81Assign)vector_obs_encoder/hidden_1/kernel/Adam_1save/RestoreV2:81*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
validate_shape(*
use_locking(

save/Assign_82Assignversion_numbersave/RestoreV2:82*
validate_shape(*
use_locking(*
T0*!
_class
loc:@version_number

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_80^save/Assign_81^save/Assign_82"