
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, qt5, rosbuild }:
buildRosPackage {
  pname = "ros-melodic-python-qt-binding";
  version = "0.3.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/python_qt_binding-release/archive/release/melodic/python_qt_binding/0.3.5-0.tar.gz;
    sha256 = "7212340713f18af32a6ee003889c16117717bc40976fe919394ce105283f4d2f";
  };

  buildInputs = [ pythonPackages.pyqt5 rosbuild qt5.qtbase ];
  propagatedBuildInputs = [ pythonPackages.pyqt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack provides Python bindings for Qt.
    There are two providers: pyside and pyqt.  PySide is released under
    the LGPL.  PyQt is released under the GPL.

    Both the bindings and tools to build bindings are included from each
    available provider.  For PySide, it is called &quot;Shiboken&quot;.  For PyQt,
    this is called &quot;SIP&quot;.

    Also provided is adapter code to make the user's Python code
    independent of which binding provider was actually used which makes
    it very easy to switch between these.'';
    #license = lib.licenses.BSD;
  };
}
