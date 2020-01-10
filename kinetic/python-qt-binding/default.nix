
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, qt5, rosbuild }:
buildRosPackage {
  pname = "ros-kinetic-python-qt-binding";
  version = "0.3.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/python_qt_binding-release/archive/release/kinetic/python_qt_binding/0.3.4-0.tar.gz";
    name = "0.3.4-0.tar.gz";
    sha256 = "ea6943351d48918e37d30db52637c7063caef9a9a9e72cd128fa6f3b84ab35cb";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase rosbuild ];
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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
