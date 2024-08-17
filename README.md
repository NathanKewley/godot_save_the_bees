# godot_learning

## PSP Vita Stuff

So I got a psp-vita and some mad lad did a [godot 3.5 port for the vita](https://github.com/SonicMastr/godot-vita)

It works quite well but there are some gotchas of course:

* Specific assets for PSP-Vita live area have to be very specific or the VPK will not install. I had to use this to do the type conversion correctly after creating the vpk: [vpk-editor](https://qberty.com/ps-vita-vpk-editor/). (you will know you need to do this if the install gets to like 99% then gives some random error ending in 3D)
* Changing project name seems to fuck everyhting up.... dont do that
* Set godot to GLES2 in the top right
* From github you need both the gotdot fork and the vita-template
* install the vita tempalte in godot via the `editor -> manage export templates`
* in `project settings -> general -> rendering -> quality` enable fallback to GLES2
* Prob other shit I dont remember // have not encountered yet
