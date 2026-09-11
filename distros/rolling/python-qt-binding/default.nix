
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python-qt-bindings-deps, python3, python3Packages, qt6 }:
buildRosPackage {
  pname = "ros-rolling-python-qt-binding";
  version = "2.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_qt_binding-release/archive/release/rolling/python_qt_binding/2.6.2-1.tar.gz";
    name = "2.6.2-1.tar.gz";
    sha256 = "f788fd5a8172489414ceacdbe1d872ab852a8da85dd1a47907cf9d37e5f009e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt6.qtbase ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python-qt-bindings-deps python3 python3Packages.pyqt6 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This stack provides Python bindings for Qt.
    There are two providers: pyside and pyqt.  PySide6 is available under
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
