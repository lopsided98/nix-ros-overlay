
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-qt-bindings, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-lyrical-python-qt-binding";
  version = "2.5.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_qt_binding-release/archive/release/lyrical/python_qt_binding/2.5.4-3.tar.gz";
    name = "2.5.4-3.tar.gz";
    sha256 = "845b4cbff2ab7042fde4f714a8ade9a226da06f72a6741b2e2ab99e6f4bc6730";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_python3-qt-bindings python3 ];
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
