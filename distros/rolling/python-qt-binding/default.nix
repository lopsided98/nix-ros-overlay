
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python-qt-bindings-deps, python3 }:
buildRosPackage {
  pname = "ros-rolling-python-qt-binding";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_qt_binding-release/archive/release/rolling/python_qt_binding/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "00e4278c555086d79c55f6ec531c16bd7442629b7ddcc8d23e560b42b80fb134";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python-qt-bindings-deps python3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This stack provides Python bindings for Qt.
    There are two providers: pyside and pyqt.  PySide2 is available under
    the GPL, LGPL and a commercial license.  PyQt is released under the GPL.

    Both the bindings and tools to build bindings are included from each
    available provider.  For PySide, it is called \"Shiboken\".  For PyQt,
    this is called \"SIP\".

    Also provided is adapter code to make the user's Python code
    independent of which binding provider was actually used which makes
    it very easy to switch between these.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
