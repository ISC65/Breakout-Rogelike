GDPC                                                                               @   res://.import/Blank.png-f865fcc161bd12a762d6e2d6efef47d9.stex   �      9      ��//����B0#P�!�_@   res://.import/Board.png-3d73162c8886d7ae92539a102588c729.stex   �            �a
ߡn4'X�>���;<   res://.import/O.png-4cf26426df8fb6d1021195f16a68e3e2.stex   @#      ;      �rT�h䗰`�D*#��<   res://.import/X.png-68fde6e218f75f98001fed7c0da5a8dd.stex    1      ~      ���Ezv�Yl	A�
<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�R      U      -��`�0��x�5�[   res://DemoProject.tscn  �      �      }�J��ܑ�)�	��    res://Sprites/Blank.png.import         �      �@�ݡ:�"IM�g    res://Sprites/Board.png.import  �       �      ��C��*W�� 3/�   res://Sprites/O.png.import  �.            Jg�b����'d��   res://Sprites/X.png.import  �=            ����
�6����|�/   res://TicTacToe.gd.remap�b      $       WM8�{�t^n�EW   res://TicTacToe.gdc  @      �      5�$���Xi�_.lM�   res://default_env.tres   R      �       um�`�N��<*ỳ�8   res://icon.png  �b      �      G1?��z�c��vN��   res://icon.png.import   `      �      �����%��(#AB�   res://project.binary�o      �      ���'A����D��׵�%    [gd_scene load_steps=6 format=2]

[ext_resource path="res://Sprites/Blank.png" type="Texture" id=1]
[ext_resource path="res://Sprites/X.png" type="Texture" id=2]
[ext_resource path="res://Sprites/O.png" type="Texture" id=3]
[ext_resource path="res://TicTacToe.gd" type="Script" id=4]
[ext_resource path="res://Sprites/Board.png" type="Texture" id=5]

[node name="Game" type="CenterContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 700.0
margin_right = -300.0
margin_bottom = -300.0
rect_scale = Vector2( 1.5, 1.5 )
script = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}
empty_cell_texture = ExtResource( 1 )
x_select_texture = ExtResource( 2 )
o_select_texture = ExtResource( 3 )

[node name="Grid" type="TextureRect" parent="."]
margin_left = 100.0
margin_top = 100.0
margin_right = 500.0
margin_bottom = 500.0
rect_min_size = Vector2( 400, 400 )
rect_pivot_offset = Vector2( 100, 100 )
size_flags_horizontal = 3
size_flags_vertical = 3
texture = ExtResource( 5 )
expand = true

[node name="Board" type="GridContainer" parent="."]
margin_left = 104.0
margin_top = 104.0
margin_right = 496.0
margin_bottom = 496.0
columns = 3

[node name="1_1" type="TextureButton" parent="Board"]
margin_right = 128.0
margin_bottom = 128.0
rect_pivot_offset = Vector2( 64, 64 )
toggle_mode = true
texture_normal = ExtResource( 1 )
texture_pressed = ExtResource( 2 )
texture_hover = ExtResource( 2 )

[node name="1_2" type="TextureButton" parent="Board"]
margin_left = 132.0
margin_right = 260.0
margin_bottom = 128.0
rect_pivot_offset = Vector2( 64, 64 )
toggle_mode = true
texture_normal = ExtResource( 1 )
texture_pressed = ExtResource( 2 )
texture_hover = ExtResource( 2 )

[node name="1_3" type="TextureButton" parent="Board"]
margin_left = 264.0
margin_right = 392.0
margin_bottom = 128.0
rect_pivot_offset = Vector2( 64, 64 )
toggle_mode = true
texture_normal = ExtResource( 1 )
texture_pressed = ExtResource( 2 )
texture_hover = ExtResource( 2 )

[node name="2_1" type="TextureButton" parent="Board"]
margin_top = 132.0
margin_right = 128.0
margin_bottom = 260.0
rect_pivot_offset = Vector2( 64, 64 )
toggle_mode = true
texture_normal = ExtResource( 1 )
texture_pressed = ExtResource( 2 )
texture_hover = ExtResource( 2 )

[node name="2_2" type="TextureButton" parent="Board"]
margin_left = 132.0
margin_top = 132.0
margin_right = 260.0
margin_bottom = 260.0
rect_pivot_offset = Vector2( 64, 64 )
toggle_mode = true
texture_normal = ExtResource( 1 )
texture_pressed = ExtResource( 2 )
texture_hover = ExtResource( 2 )

[node name="2_3" type="TextureButton" parent="Board"]
margin_left = 264.0
margin_top = 132.0
margin_right = 392.0
margin_bottom = 260.0
rect_pivot_offset = Vector2( 64, 64 )
toggle_mode = true
texture_normal = ExtResource( 1 )
texture_pressed = ExtResource( 2 )
texture_hover = ExtResource( 2 )

[node name="3_1" type="TextureButton" parent="Board"]
margin_top = 264.0
margin_right = 128.0
margin_bottom = 392.0
rect_pivot_offset = Vector2( 64, 64 )
toggle_mode = true
texture_normal = ExtResource( 1 )
texture_pressed = ExtResource( 2 )
texture_hover = ExtResource( 2 )

[node name="3_2" type="TextureButton" parent="Board"]
margin_left = 132.0
margin_top = 264.0
margin_right = 260.0
margin_bottom = 392.0
rect_pivot_offset = Vector2( 64, 64 )
toggle_mode = true
texture_normal = ExtResource( 1 )
texture_pressed = ExtResource( 2 )
texture_hover = ExtResource( 2 )

[node name="3_3" type="TextureButton" parent="Board"]
margin_left = 264.0
margin_top = 264.0
margin_right = 392.0
margin_bottom = 392.0
rect_pivot_offset = Vector2( 64, 64 )
toggle_mode = true
texture_normal = ExtResource( 1 )
texture_pressed = ExtResource( 2 )
texture_hover = ExtResource( 2 )
[connection signal="pressed" from="Board/1_1" to="." method="_on_cell_pressed" binds= [ 0, 0 ]]
[connection signal="pressed" from="Board/1_2" to="." method="_on_cell_pressed" binds= [ 0, 1 ]]
[connection signal="pressed" from="Board/1_3" to="." method="_on_cell_pressed" binds= [ 0, 2 ]]
[connection signal="pressed" from="Board/2_1" to="." method="_on_cell_pressed" binds= [ 1, 0 ]]
[connection signal="pressed" from="Board/2_2" to="." method="_on_cell_pressed" binds= [ 1, 1 ]]
[connection signal="pressed" from="Board/2_3" to="." method="_on_cell_pressed" binds= [ 1, 2 ]]
[connection signal="pressed" from="Board/3_1" to="." method="_on_cell_pressed" binds= [ 2, 0 ]]
[connection signal="pressed" from="Board/3_2" to="." method="_on_cell_pressed" binds= [ 2, 1 ]]
[connection signal="pressed" from="Board/3_3" to="." method="_on_cell_pressed" binds= [ 2, 2 ]]
          GDST�   �             PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  �IDATx����QAE������I8y5�cf��߳d�����44���z���#�P�	��`x0<� O �' ���	��`x0<� ���'x�z�����v?�����{��__��>�����f���lV���5����u\���/�`���o�u�˻ !X��mx�N���z��x��Bp/���з !8���p�5���=>~(�E����yQ���@!�_��`x@�/z|0�$_�a|p�(��2>8�
��2��'�� ���|$l2���C������A�B'!�<>�
�� ��|,�3�
�C��舠���  �BPi|H z �6>$ �T�����	@-�Ǉ� ����Cb �A��!9 ȉ���P  �B�i|( r �6> �:�� @���CA �����P � �>> �&����)�C p���	 8�`��� �!�8>4 k�����O�Z��6>4|�:=V��1 87Z��9 ����0  ���}| ��9a|��g��㧁Uk��<@�Z�8T�� "�V�% �{���2�d� ��˟���O�� p�{�4�X�����4 ˓<S��q�k�� <��uGP@���J�<��A �nwDP@��W>�d�q�#H ��+��AZ ��_yܬR�0���gD�@��*#H���WU�Py���R �0�U5� :�U	A(���_UA���W� �0�Uv� &���+���_eE�`��W� ��eC`@�.S �� 0��/ �~����ϋDp��_/
�1 �G h�sy#�����`�Ʒ��˭`����u3����{�V�Lh�3ݹ������?����p���S������l��׻�w���n�wս�1D�& ���	��`x0<� O �' ���	����0K}�R    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Blank.png-f865fcc161bd12a762d6e2d6efef47d9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Blank.png"
dest_files=[ "res://.import/Blank.png-f865fcc161bd12a762d6e2d6efef47d9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST�   �           �  PNG �PNG

   IHDR   �   �   �X��   sRGB ���  �IDATx����j�@@�L��y�(��W	�9A��>���9綒1���32��W_�M����?5��,v~���8~%����,A A A A A A A A A A A A A A A A A A A A A A A A A A A A a\}70O^[u.fq�A a�_�ퟰ��|��g��@ 8����3���8��,�XA s�u6���[gd﹃@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@W_�̓�V��Y��@�@��g�'�j<6q��ał � p���2?��3�+�@�ǜk����|�����{� A A A A A A A A A A A A A A A A A A A A A A A A A A A A �7ϗ��n`l�6�W����B |(8���1�
ȳh    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Board.png-3d73162c8886d7ae92539a102588c729.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Board.png"
dest_files=[ "res://.import/Board.png-3d73162c8886d7ae92539a102588c729.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST�   �             PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  
�IDATx��{�]E�?�h������Z���"ElEhk%��_ j|���Dl|�ĘX4���1MP@��ƚJL�(ak+[D�EZy�m��vk]����߽�z��9s~gfΜ�'9is�ν����3g�<�:�-�e�lZʥ@�i�pZ4�V �@�i�pZ4�V �@�i�pF�6�CCCA�.c(CU�H�gQY?V��؂n�R>���U	� ��m�F�0�
X,�^ˀS���0�������'��D���S~Xl ���:6�Q`G���)�D�똌R�|�J�H�ɯ�-�w���&���� r�Y���M�Jo�s��	�i�(���tJ�,>
:�^�k���Rk���*��B�8e��C��]��l���=�T'� �������?,����2�n��k�wގ�J)�&. ���
\�ߚ`�ܕ�Ge� �#�"�K��t���l`�0:���A� #�g���}�q��f������wyF/@��|�q%p�j�D��lA���?ZD�
�ju�:�����{F������2j�`q� �+q�n?|)�>.~���p;����/&8s+���ˁG�}sڏ�] �!��Ex��>nN��t��fؘu�3�G*-�n+���*hs�P���_`���h����n!�+��<�s:�	O ���?V� �p���Q	$����_m����K�0��h�t�M$Ju��)V\<O����'�ͷ�r�`�we'I�x�� RX�S�]�[�߁�)��DM^o	�ǐ����!SH�22�9Dp�2�O!�� ��S��(��4/�|K!�P��k���_R:�޴/-;�y8�v�7�Oc�pm���E���:�ǌf;?v�A~�2��&���!���ɛ�o�qk�2D�)�񗗷�~(z����Ծn3�u�c)����4��R�e�W|� �3�~�a�M����fR&��𮤛���g�g�1t;���:����(ܦ��K}��g0\�H� 2�b-�=�<�)馫Z�� ���-�/fM���t�k�x�ޚl|� Zÿ�t���a�M�np�c[��� ^�H���[iRĚ(��I��4�v��ǀ/��\��5(�=v"3���mڛ/����m;\R�N##�yyE1k����Z�U�Z�5�z�>��'}P�1�8O�f/�b���Q���>E�y�ٮ�� {�[Q2�j��i&>0]���])A�$�Ÿ��c�� ?����Ã7jX��اH�t������Q,Q���Ԋ�����έ�� ��pjE�T���Tb�42c�vcU|�b<�ˇ +�rnE�h0J��1->�@�F�*���	N��� 4�z͙3W�7 ��;���f�s+�F3 ��H�C��V�@[ء�]SiO+m��F�>�Qw����-�G�Z�h�l`G+���ͯ��r,����eo��9���5��"�"�Vč�K��S+�# �HW���{c&>0�Hs�y�ãL#�'8Ň �P�ӌ"VM^�~M�� ��L$���p���5>�D����5~X�H3G 3�6Ƃh�L#����L׆D�t[��ε!�o,@�����J�P�%n�`�o�bė 4ƞCBɨ�c���I
��p�� 3w45�0:�T���4c2/��5��t�ZQ"��k>�J���_�3�p��!/�M�Y���:t#���6���	!?V�9���?y!E�oV|�,���3�6��!>��I5�F����r?r��|
�>t�`��ڐ��u#�Q�Ă��#��~������IT��V���N����Я+�}ة�H�i���¯��3��[ ��� �(郊���홐X�\��r& �Qd�༌�6}�RlZ�_�G���$ĺ�ې�@^�BN܈�A^�nQ�8	�f9'�N�_E�S�OC��!� ���Î/	��PY��ֈ q��XD��(�[�g�c�� 94A��d�F��Q�7؁Q���n05N�%��2}:�@�/�R�W��2�@��>�tJؒ��H��9@���̎�� ��Ҭ����%�y�����1x�Jp������6�D¥�,Y�����I�I  /��er���x�^���s���B�b�U /�2�tr�(�8S��H ����0�eco��p�2y��&�(�Q����J=�L��~��g�;��D��R��׻RO�� ��ː/E�9�����`��_�kS���-2�bj# �����H�zZ�g0��x�qe߷��!��8#c�l52�5w�.�GA�CZ��F6��BJ���Y����<Ǳ=����,��� ҋv��S1�A����O����� +, � �W������Q�X@	EZdr
��	�)���!�UD|(i�P��v���vAU���CNPM]�]V���.K��k�������@����o&,'y�| ��Z��Ȉ��Z�(|��k��򎿉8�� �^)�VD��X�t��+��d�k��H�Ν�ؿ/&Cd��(��^߽.D�O�#U�N�^��u�F�(� d�u��siy�:���� ���0r��c}�^t;�q�G���J *��*٣*B��O�dl?����~��ჄDm�V����hOk8� N+���
��h8� N+���
��h8��fmmE?    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/O.png-4cf26426df8fb6d1021195f16a68e3e2.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/O.png"
dest_files=[ "res://.import/O.png-4cf26426df8fb6d1021195f16a68e3e2.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST�   �           b  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  IDATx��k�E����� VI�� ��¥@���kĈ񋉗`�E.bc���Z��D��Ƚb��/&���Z���r�Ti����hAZi�Y?<��}�;�������KΗ3����?�3��J����2��tTK'���	��th9� ZN'���	��th9� ZN'���	��th9� Z��X/
wW4���h���х��p�/
�6d��f(V�	](I�x�py��Q�>�l` 0�uA�wd�+��	��N�@��; ̨"�&�G2>��V�?D��=�kå�Z���|f2��
>{s�$�cy�'��:D{����J c�����V)�����>b5�R�<�o��������� ^��rp�kz4T- W�]��d����X��i���^
�uI��h� 0���&�B\��ۺ@5~��4�4`�x��u�>�轾�$��ga-n�����6�uA�!����w�Nb
�"��������H�:�#��.��#� ,�wpȡ�2E9' �r��wb硎 X�Px���*<8��Y}��uQ� ,�8�<iq����%�N��Nw�P�57W��i`��sH���i6�E�(�b�;`�C�_f9<W�0v�8V��Ҽ��4Q�_�+p�
4�Le�s(�Rgy�r���^�3+ F�CD�|�^D�
)_u&��� ˵�q�V�?�����S�&��pW��XL�F��(w_����!� lj�d�Z�	�+���o� �T�+�"d��z�"�.���0��2�`$/Ѓ+8���r7�?-������;<����R�H& ����(����g	C��}�t������2jgW`�K��)�b��eT��1T�EUۿ\k�A�\��
\���j�C�Ɛ�;<��A�Z��n~w0���F,������R^`�1T�L�o)���c��M��+�X�e�|��������c��PD�E2[�T$�tk\�LdvR����"?,R.��@-:�<��+���h1��!+��\�k�ׄW�j�)�����LR>7��PjHM��9y�mjo��Ӱ,�1�Z�r��Ṩx����b��+�����3[gr������w!��wV`�2Y���Q:�X
l2<�0	��6W���� �)Q�1�&��j5�!�\�\���0�l ~���a�z@���sx�*ֲ���N!k;�;1�:�n�>�=��fK^�,i��D1s���!+Х�cX�F�z)�
^TF9�H��aG����C�UJi�������D�r���j�Nځ����W���[�f�R�됭d&"��&9�#�gV`���{JX�$y��+x��ez�p3�k��jA�� ن��?sx��0b��˸�R���[
���P���@V�����Z�Ø ����l	w4���X ���.�L�6�kb P��z|�bY�㐖�1 c�+́�SI����'�/�}ĳ*/�i�L �
�:�e�^Ɛc����� ,�T��u�VV�@	��s�`J��s�Jjj���������^��qx�Bͩ� ���C<�#�}2i�-!�� ,�'��Z��8�Oq�hԷ�1�T�"G�9�-r�M����i�R�o���6M��������|��@qG���T��'�Nฬ�&Y��
���oDx�4��4E���p�&�ex
����9<W�rH���T�E��Q�������.����&X�R��T�N���[�M��H�A�l|"�� "�Sb)�{�W*�|��7un�mѥ���P�!6F ���z_������7�_�B�yn`�]AmN
-���~-�"7��3��	��I�c8��U�?)4F?�rX�=���߁���m�}m|�v��*��.��r.ޫ�2��g~���Z�;�& ���,+0�+(� kqZ�#'!�ZK����"���`�4��Pn�������~��8�������o���R.CEK^���u��N]A湂E�@wHT>o�0�b�x���8������aN�.CC��G�R���oB?�9	����RV�s C����+�}��5� �J�,��7���J�4�k�o5#Kd�SP+�U ��9���x��{,W�,FZ��Y��A��5� n�ډ߳{Fq�u!�8����HqQq�۹�[�ǁw���m�6��hd�����<��oG�LO��Z �+8��6P��6�@ �`\�i����APT�����������WS�B�n��
��w(�L��/}b��+���B�y���ٛ�ѕ'� <���b����e_�b�~DhZW0�Ry"h䷁�D����U5�M?c�^��*d���=%�o1w�G1�7ӯ|v9�2���ZAf���M��u<-�M�]̸����^@��k6Y5�$V �<@��>��x�2���c^���^,�o"S��#k;���M�$��
܏�iI��qW��΃�c�k���錒�#�S �<i�4�F��{Aj�$v*��a�7��$Q� �)T���Ů���* W:ZTӯ�ϱ�3��D����̯kl�)Ҋ��~��$�V��y������a���JY���o���Bq(�JM�"�����)R��>`;�D�y��ȽC�9t~�ȥlüƹ�O^q1bA2�Ǡ�\Ǿ��ܻ���L���3��F5�_���݇�)�ary���F�2k��o�!��
,0�t�@||�c�d3�Te��c8��W�U!�Y�o��j�\^�� |c�y���\�X�L|�]�!��|��߅t3�C�[�1�=��nFo9T��p��Y�ͼ��N�oI�`�2�)��b0b
`6n'q�F�߯#����!��O8'�B�>�Dd��e4��e��֟$ŶRǠw�a� � ��2��Ȱ����QwU�Jӟ�*�`f����	�@Ah��.�"4R 1f�|�T�]���T>4#���vԓ�Y��th9� ZN'���	��th9� ZN'���	��th9� Z����7X��-    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/X.png-68fde6e218f75f98001fed7c0da5a8dd.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/X.png"
dest_files=[ "res://.import/X.png-68fde6e218f75f98001fed7c0da5a8dd.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDSC   $      �   �     ��������������Ķ   ������Ӷ   �����������������Ӷ�   ���������������Ӷ���   ���������������Ӷ���   �   ����   ���󶶶�   ��������Ҷ��   ����������Ŷ   ������������Ķ��   �����϶�   ���������Ӷ�   ζ��   Ŷ��   ���������ڶ�   ��������������۶   ����������۶   ���۶���   �������������Ӷ�   ���������������Ӷ���   ���ڶ���   �������Ҷ���   ��������������Ҷ   ������������Ķ��   ������������ض��   ����������ڶ   �������������ڶ�   ������Ҷ   ��������ڶ��   ���������������Ҷ���   ����������������ض��   �����Ķ�   ��Ӷ   ���������������Ҷ���   ϶��   	   Board/1_1      	   Board/1_2      	   Board/1_3      	   Board/2_1      	   Board/2_2      	   Board/2_3      	   Board/3_1      	   Board/3_2      	   Board/3_3                                                      
                        "      #   	   &   
   G      L      M      S      b      n      {      |      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -     .     /     0     1     2      3   &  4   *  5   0  6   4  7   7  8   8  9   9  :   B  ;   G  <   M  =   N  >   O  ?   X  @   ^  A   d  B   e  C   f  D   o  E   u  F   }  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P     Q   >  R   _  S   �  T   �  U   �  V   �  W   �  X   �  Y     Z   -  [   N  \   o  ]   �  ^   �  _   �  `   �  a   �  b   �  c     d     e     f      g   $  h   *  i   0  j   5  k   8  l   <  m   ?  n   C  o   H  p   L  q   R  r   X  s   ]  t   f  u   o  v   x  w   y  x   z  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   3YY8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  YY>N�  R�  R�  OYY;�  Y;�	  LL�  R�  R�  RMRL�  R�  R�  RMRL�  R�  R�  RMRMY;�
  �  YY0�  PQV�  �  LLWRW�  RW�  MR�  LW�  RW�  RW�  MR�  LW�  RW�  RW�  MRM�  �  �  PQYYY0�  PQV�  �	  LL�  R�  R�  RMRL�  R�  R�  RMRL�  R�  R�  RMRM�  )�  �  V�  )�  �  V�  �  P�  Q�  �  P�  QYYY0�  PQV�  &�
  �  V�  �
  �  �  (V�  �
  �  �  �  �  P�
  QYYY0�  P�  QV�  �
  �  �  ;�  �  P�  Q�  �  )�  �  V�  )�  �  V�  &�  T�  V�  �  T�  �  �  �  T�  �  YYY0�  P�  QV�  ;�  V�  �  &�  �  V�  �  �  �  '�  �  V�  �  �  �  .�  YYY0�  P�  V�  QV�  �  P�  Q�  �  T�  �  YYY0�  P�  V�  QV�  �  T�  �	  �  �  T�  �	  YYY0�  P�  V�  QV�  �  T�  �
  �  �  T�  �  T�  �  �  T�  �  T�  YYY0�  PQV�  ;�   �  �  ;�!  �	  �  &PP�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  QQV�  �   �  �  �  'PP�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  Q�  P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  QQV�  �   �  �  �  'P�	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  �  �	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  �  �	  L�  ML�  M�  �	  L�  ML�  M�  �	  L�  ML�  M�  QV�  �!  �
  Y�  &�!  V�  �
  �  �  )�  �  V�  )�  �  V�  �  P�  Q�  (V�  /�   V�  �  V�  �  PQ�  �  R�  V�  �
  �  �  )�  �  V�  )�  �  V�  �  P�  Q�  �  T�  �  P�   Q�  �  T�  �  P�   Q�  �  T�  �  P�   QYYY0�"  P�  V�  R�#  V�  QV�  /�
  V�  �  V�  �  PQ�  �  R�  V�  �	  L�  ML�#  M�
  �  �  �  P�  L�  ML�#  MQ�  �  �  PQY`         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://TicTacToe.gdc"
            �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Tic Tac Toe    application/run/main_scene          res://DemoProject.tscn     application/config/icon         res://icon.png     display/window/size/width      @     display/window/size/height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep$   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres   