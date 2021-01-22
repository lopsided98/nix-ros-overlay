
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-dashing-python-qt-binding";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_qt_binding-release/archive/release/dashing/python_qt_binding/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ce13d282e30c74fa8325c02cb123a2541f5b678bdcd28710264beecf9fce2c0e";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.pyqt5 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This stack provides Python bindings for Qt.
    There are two providers: pyside and pyqt.  PySide2 is available under
    the GPL, LGPL and a commercial license.  PyQt is released under the GPL.

    Both the bindings and tools to build bindings are included from each
    available provider.  For PySide, it is called &quot;Shiboken&quot;.  For PyQt,
    this is called &quot;SIP&quot;.

    Also provided is adapter code to make the user's Python code
    independent of which binding provider was actually used which makes
    it very easy to switch between these.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
