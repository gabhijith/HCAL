
E
net_chargesPlaceholder*
dtype0*
shape:���������
E
types_inputPlaceholder*
dtype0*
shape:���������
<
reshape/ShapeShapenet_charges*
T0*
out_type0
I
reshape/strided_slice/stackConst*
dtype0*
valueB: 
K
reshape/strided_slice/stack_1Const*
valueB:*
dtype0
K
reshape/strided_slice/stack_2Const*
valueB:*
dtype0
�
reshape/strided_sliceStridedSlicereshape/Shapereshape/strided_slice/stackreshape/strided_slice/stack_1reshape/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
Index0*
T0
A
reshape/Reshape/shape/1Const*
value	B :*
dtype0
A
reshape/Reshape/shape/2Const*
value	B :*
dtype0
�
reshape/Reshape/shapePackreshape/strided_slicereshape/Reshape/shape/1reshape/Reshape/shape/2*
T0*

axis *
N
U
reshape/ReshapeReshapenet_chargesreshape/Reshape/shape*
T0*
Tshape0
�
conv1d/kernelConst*�
value�B�"�z�>��6?�^�=��>7�H�SZ�=�X�=��=�e̼Y�,�R����>��e�>���;�*�ѫ����v���>�<ȿ�U�ܶ���=��J���=��<q`���c�s��^���.a�� !�b����(�>I�>?����r>�	�{=�>J�<�1�r��|���� =�N`�>Կ��E�uNG�*
dtype0
x
conv1d/biasConst*U
valueLBJ"@�aq?:k�uo?5��>�3���%�>}; ?�0?JѴ?���?��?���?O��@�k[�٢�>�U�>*
dtype0
F
conv1d/conv1d/ExpandDims/dimConst*
dtype0*
value	B :
j
conv1d/conv1d/ExpandDims
ExpandDimsreshape/Reshapeconv1d/conv1d/ExpandDims/dim*

Tdim0*
T0
M
)conv1d/conv1d/ExpandDims_1/ReadVariableOpIdentityconv1d/kernel*
T0
H
conv1d/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0
�
conv1d/conv1d/ExpandDims_1
ExpandDims)conv1d/conv1d/ExpandDims_1/ReadVariableOpconv1d/conv1d/ExpandDims_1/dim*

Tdim0*
T0
�
conv1d/conv1d/Conv2DConv2Dconv1d/conv1d/ExpandDimsconv1d/conv1d/ExpandDims_1*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
	dilations

V
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d/Conv2D*
squeeze_dims
*
T0
?
conv1d/BiasAdd/ReadVariableOpIdentityconv1d/bias*
T0
o
conv1d/BiasAddBiasAddconv1d/conv1d/Squeezeconv1d/BiasAdd/ReadVariableOp*
data_formatNHWC*
T0
,
conv1d/ReluReluconv1d/BiasAdd*
T0
�
conv1d_1/kernelConst*�
value�B�"��Z��~ib?����q�?�H��Lֿ@.�����m�=^�۾I3��/����"1E���>��Ͼ�l�?�G�?b��Q��>�	�����?Sh�͆�?k�J�!�ȿ���h�ֿ�����쿐�ھ�ڢ��@I�h��>%���s�>����ޢ�fs>�9��qN�Cyպ���=��Q>	���ϔ5>uU���z�1�>�U>�����$����	��"?z�?Y�>Ȣ�??�������<>�v!�,���@�6��B�?"��?Tz��
zQ���D�a��(���M�?U40�R����D��xۿ��5>�_�>�Ϳ-ÿ���=�^�>� )��	����>��>�B�=��p?� ����=�����<�C��ǽ�)s��Q����_��b��<�0r>�>t{޾5
�=:�Z?�)���{=���>�&�ǭ��ño��W�>m��@�e@��d�9�>W�����!���E�������'>,|3?B^>b�_?�*��9�A>y>>������e�?&<>|4����D8۾��?=z ��t*>@?;҆>��>?���7Hp<w<�����!�d@?���?ݯ�>���=ߛ��Ӌ���=SƩ���7?�M;=���;d2�B-->�
���46�j��<cM�?����?(.��R�>�,}��?�>Ӝ\>���?�&�>*I@�3��G2?ɘ��j|��V���Ǎ��|�>:�
?ً���p�>��ھ)�Y���}���S���6����?C'^?a�=��?KH޿��ѿ*��?��(��gp>��=C��A����#�k�����	��>l���=�N>v�D>3��ӑ�>���Fq�=.I���=�>��Ծ������$�/t�����`����4!>�v?�������4>�4 �V�>R�j������l�>ݧ�>�Q�=�`?���/�����B�D����Z��c��B!���@\�S���r=���1���py�;�d9���X�s����=L�۾�b�tc��M�=������UU��I��r�������T�,�F�藄=����� ��O_?$]Z�~�X����*�8>O� �\o,>y�?�?+?�����������M�>�H�����S��ڝ����}ۿ��8��R�C�ӾH�D��\��������9g]ۿ΀#?<O�������#=�j7>�Q=f��<����� ?�[�>Qm�>E�k����"%�'"�>'��o��>xFɾ���<��>�E6�;��?+I�A��@
�>�ۨ����?��8�s[:?�s�����]�E�۾������w�W����>�4���`��T��s�ν4ȡ>%���5?d��� ���6�i-Ҿ�p�>λ�>R�;"�?������Y�}=t;���nW�۽��!�?I�>�=J�Y�|= ��<����E*>��2?s�>u�|>X�/=�� ����jL0=S�>X�6?��&�������DU?��S�?���ޠ�>0��?l�����<�����L?2xQ>� r>(����>�n��2��<˾��?v7��?�F��J�>��L��l��f[�d	?�Y'>��6�u>�N��?`��?x�%>�Xs>�v?ֳ?���?��=�����Ⱦ��Ϛ�?u�$=k��?16�?�_���� >b���ʿ��о񯾃�_���*�{T�*WX?ނ?�|ѿ0e�?�̾��@����HT�r��eʍ��Z7�܄�>^�O?��&�r`�m����<?d6½��7�����1��5�=}w��>�2>��ƽ�*M;!�ϽpJ?�3�?�Z>T�*>�K$�[v���ŭ�|�L>��ƾ�**�Z���(��v�����)�'�<?�y��I>�oo?)H)�e�����s��j)r���r?lp��(#��t�ة���6�>˺�0��� ��uB�y�,�P�>�甽�]��?�c_��?u� ��e<��h�����ԗ�=�tѽ�����*?�D�>��;؃q�&7�[�K>��$����l�پ��½�]����q=~�>a̜�pT\=�S������Oϸ?`c�=Jm>�%��	S&��W3@N٘���h>WW[?�f_��G>{]�=��>��[�K��j�?D�~?��2?Ɓ=�ļG� ?Y���>x�=��k6<��r>G�[>܂?��:*�?���>0�`�P�4��{=�۶?{�N?��d>2o�>4?j�S����O8?ٔ�>"?8i?Z�??���>su���6�O�t�Yf>;¾��������{�>Uĳ�˿�UF�\>��zs���͂�<iD�K(8�6I^>��_=�~�� ��н�v�>}�>j�r� ��>���>��j��_���"��B9�=� Ͻx�ؿ$�=��?ԉ_=L�?X���х>���=�{��+t���^�>M���L<R<�u�?1N��L�=�f)����������U��I?�۱>2�8��'1>�>oi�(񼾢����U?�D��f�?�Z0>�Ӂ�h}�=e��/���b��>���?��U?Ap�>*!o�qto��dz��ɹ���j?q?�꽬Y�=��H>�^��T�<��!�I!�=c�?<W޿T�H>1m��ֽɽF�>j�=3�|=�̤�7+�>�?����4��O����??#?�4>�T�cx�g��>�_K��ƾpʡ��,�?����{���?;6U����>}ܓ�����a���k��+?D3;>}4���(>ki��� Y�L������<ۿ��q?���>$\,>�E"�DB�>=��=M�_�P�/�ɾgfۿ�M?4�ɽ�c����?����v�R? ��ñU?;J>�6U=��w)?Q�?�*�>�%���	 �\06��J�=��=�w���?$`>���?fr>AT����`��b��,��v��5?_���b�⿪��<'b�5�S�IA"�d��裕�9����U�>>j����=/��?��z��l~�>SB��V��\��> $=_7���d�v`?>d�>��
�V�<?@�??rr>bD׽E*M?Of��$d?��1? D�	Nѽ5{F>��n>�D%��:�*
dtype0
z
conv1d_1/biasConst*U
valueLBJ"@(4*>�������?�>px?P�?5?�;�[�,�X�m>ǅ�>�_�?�C�?*u?���>QQ@*
dtype0
H
conv1d_1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0
j
conv1d_1/conv1d/ExpandDims
ExpandDimsconv1d/Reluconv1d_1/conv1d/ExpandDims/dim*

Tdim0*
T0
Q
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpIdentityconv1d_1/kernel*
T0
J
 conv1d_1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0
�
conv1d_1/conv1d/ExpandDims_1
ExpandDims+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp conv1d_1/conv1d/ExpandDims_1/dim*

Tdim0*
T0
�
conv1d_1/conv1d/Conv2DConv2Dconv1d_1/conv1d/ExpandDimsconv1d_1/conv1d/ExpandDims_1*
paddingVALID*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Z
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d/Conv2D*
T0*
squeeze_dims

C
conv1d_1/BiasAdd/ReadVariableOpIdentityconv1d_1/bias*
T0
u
conv1d_1/BiasAddBiasAddconv1d_1/conv1d/Squeezeconv1d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
0
conv1d_1/ReluReluconv1d_1/BiasAdd*
T0
�
conv1d_2/kernelConst*�
value�B�"��������\�����ʝ��F3>�i��
���Ȧ?����s�>VᾤC��Dj>&s�����%��D��=>ǹ�=M%���AO��ڤ�~�L�b�I�"�>���,[����=��<���<�=Z?����1�Cr�>S[+?�v5�I/ ��>��">Gs���`?���>�ն�x���<?,A�>�,��$��w�[�(V�32��D���>�;?Ma�{�?p�\?JV@෣� :���?<	E?�/?|�W����>{�{>�Y����?�?�K�>s�=֡��ae%>�e?�I�BP�4����k=O�=�)�y��?�H�b���q�o�����L��z�"?4��� �=��;>Q~��r�>4y8�B�u>Qt(?�����#�?A�?4u��/�>a@�� ��5��?O�?d?�Vz>O�ܿ[G?��?&���f@{��¿=�2���=>�I�>Ȧ���hJ�n �>I�?|MC�.���#�>I�>8a?�h�h�A?,�?��B�>3�.���?�A?i&?��>֡�JcY>�)?h?뽲^��a�^�A(^?�L�K�u�3%�>%[/��>?
>ܽ�;:~����5>pAh�%��=��u��uӼ�Q�����.Z�=B�>�_R>�m >V�=�'>R�>�?w'H?nP=�v~?KD�>z�9��B��}�>��J?���}×�j7#?�]D�~��%S>��9���>\�L���B��
>	<��y
�=@= �sZn?P�����R>gב����4�6�v����?�b�>t�8�F�0�4ǆ=�*���Pn�~��=���4�A=+�<܍޸��>Y��`�>�=�x!?��>Ia�>�ᱽ����+��,c�=6=�n>��;��}��+�P��>�?1}�6t��/�'?�M�>��(�܈ؽv���=���Cu���(X��#?�m(>���=��t?��?��~?�D>t!������.ھ��@E4�@���?*o��ʉ�]��?��?.�=��?q�3u��⋳;?g��6������������>I%�=m��>��d>ڎſ^�V�jn໎y��<8?J��N<�>�6D��դ���G�]>��@���>�d�=�<��p>��I�F�>�W�>֑��fY��G�ib���-��E��Qu��>�ދ?����Tھ��̾�������j>ݧ�>�����-�����8cd=�N?w���=xѾ���E�->�q���u?ϼؾ�BL����'�����P>����ALz>�m��`�>Zw-?�k>�2�=U��>�d�IL?�E=���W燽�Xy>�?Tm5�v�=�Q'�E�=�]\�X4�>��d>� `;k�;��<�o6~��Z���=�I����D�O�?]�=�>�!�<x�\>���< >�b�����Z�}��>pf7?8X?-�(�C�t>c.@�'"�>^U���*���8@�f�@8��=�:?D�>��9=��FFh>R	?���>=y?տ��f��?Rw����?�V꿽� ?3W龛k�>5�h>�w�>Igi>�(!?����{}��2?�c���WK��L�WM>n���88?���>0T�>4�V�\Ƚi*>򭀾Q�Ἃ�5�ㇿ���8~m��x>K��=�����.c�E<]>-�>��:>%�վ�!k��|�燜���V��P��Y ��ǃ������j辽�"�w��>�2�;�?O�b>��
?�H=$��\�=��/=ikr> !F�Cq?��!�?H^;�2��>'㧾1�V?Dy>���?h��>�}����ľ[_ƾdPs�)�r>jD�>j�b?�Wz?Y�R�1��u�-?-&�H4��3?��>��I>�m��U$����>��A>�R=�P��E�k�����z��T락��>�DH�qf�Xĳ�`U$�#��>�U-?��"����w�>��Z>@��-�J�O�>y�?�!��R�G��=��?je������<ϾӠ�?�d�������d�}�N�ؿ
B�>c>=�7?lcҿ�3s�����X֦�R�ɼ�R�=�t����O=GA�hHU���=�jE���=x����,>��������+����	��?W��:�������߿A�@�s߾Z0ǿ����0��N�Y�f;?T�鿇��=bۇ��@N� �ߖ׹s>����>*u齁�悾]�s���UܾG��>Z�����>�X䂾������>^���>���?1n�ִj?����K�>LYӾƿ�����>�捾���4[�?�b~?e�
?ф���Q�V=7?����<���>��J����>>��>��^��qξ��j��&>�f?y���}�?�S������5������H>ں����Ɵ��&�.<E�?�&�>|�4��,�=~��>��F>����н܈��S0O�r��ο,�ꐾtɾ�)>��}��w����>!�׾ ��/�0�4�V:Ip?A��ޓ?��ǅ��^￑��,ٳ�W1B����>�B��O��H�ֿ@�
�p���V ��
9?x������x��;�s;��h����>|0=���>��� ;�~���E]Z>G�=٬��!=ԽU��>K���e�>=��>*^ʾv�7=�|ԼK�>���<'V�>�ﶾc����ʾc` >BL�=	�7�X���&�=)�>�BP?�v��b?����1.>�Ǖ>�<�F���?�z�wE)�.{F>�Ǳ>�QN@�达�Nx?S�T>1mD?��_?�	ľ�=�"�N8��[�ݽ:?%?���>n@��"?�'��R%@�ֽ�N�=����#����B�?�q����>�ZþAur?D�>���e�q?֑�>?N	�KF	?˨��%=>��>(�>j|n>Tǧ?�g?��?���>9�����c�TT�j���R�>��=�'�%����,?%X�>���x�>����q���>u>��]��W�?>6L���̿l�@�|�>�>?���>�@U�:�	n>z�>��ӿ�t�>���;��>C�����o?o!���4����;���?0���?*
dtype0
z
conv1d_2/biasConst*U
valueLBJ"@f�=���b>��?�>��9?�U�j0P��Uz^�vM??8?�����EF?�A��ӫ?*
dtype0
H
conv1d_2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0
l
conv1d_2/conv1d/ExpandDims
ExpandDimsconv1d_1/Reluconv1d_2/conv1d/ExpandDims/dim*

Tdim0*
T0
Q
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpIdentityconv1d_2/kernel*
T0
J
 conv1d_2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0
�
conv1d_2/conv1d/ExpandDims_1
ExpandDims+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp conv1d_2/conv1d/ExpandDims_1/dim*

Tdim0*
T0
�
conv1d_2/conv1d/Conv2DConv2Dconv1d_2/conv1d/ExpandDimsconv1d_2/conv1d/ExpandDims_1*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
	dilations
*
T0
Z
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d/Conv2D*
T0*
squeeze_dims

C
conv1d_2/BiasAdd/ReadVariableOpIdentityconv1d_2/bias*
T0
u
conv1d_2/BiasAddBiasAddconv1d_2/conv1d/Squeezeconv1d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
0
conv1d_2/ReluReluconv1d_2/BiasAdd*
T0
>
flatten/ShapeShapeconv1d_2/Relu*
T0*
out_type0
I
flatten/strided_slice/stackConst*
valueB: *
dtype0
K
flatten/strided_slice/stack_1Const*
valueB:*
dtype0
K
flatten/strided_slice/stack_2Const*
valueB:*
dtype0
�
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0
J
flatten/Reshape/shape/1Const*
valueB :
���������*
dtype0
k
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N
W
flatten/ReshapeReshapeconv1d_2/Reluflatten/Reshape/shape*
T0*
Tshape0
A
concatenate/concat/axisConst*
value	B :*
dtype0
s
concatenate/concatConcatV2flatten/Reshapetypes_inputconcatenate/concat/axis*
T0*
N*

Tidx0
E
flatten_1/ShapeShapeconcatenate/concat*
T0*
out_type0
K
flatten_1/strided_slice/stackConst*
dtype0*
valueB: 
M
flatten_1/strided_slice/stack_1Const*
valueB:*
dtype0
M
flatten_1/strided_slice/stack_2Const*
dtype0*
valueB:
�
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
L
flatten_1/Reshape/shape/1Const*
valueB :
���������*
dtype0
q
flatten_1/Reshape/shapePackflatten_1/strided_sliceflatten_1/Reshape/shape/1*
T0*

axis *
N
`
flatten_1/ReshapeReshapeconcatenate/concatflatten_1/Reshape/shape*
T0*
Tshape0
�
dense/kernelConst*�
value�B�""��q�ɀ=�\4���＆T?�s�>���<�L�<t#�=I˂>�v�&�R_>��b�����a<��E>㖷�5$�kj>��о�&>�+?a��U4���gD=;�����>-�о���=	�B>n��K:�>�ޏ9*
dtype0
;

dense/biasConst*
valueB*�s�>*
dtype0
>
dense/MatMul/ReadVariableOpIdentitydense/kernel*
T0
u
dense/MatMulMatMulflatten_1/Reshapedense/MatMul/ReadVariableOp*
T0*
transpose_a( *
transpose_b( 
=
dense/BiasAdd/ReadVariableOpIdentity
dense/bias*
T0
d
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
*

dense/ReluReludense/BiasAdd*
T0 