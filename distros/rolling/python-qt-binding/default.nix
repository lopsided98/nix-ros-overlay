
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-qt-bindings, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-rolling-python-qt-binding";
  version = "2.5.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_qt_binding-release/archive/release/rolling/python_qt_binding/2.5.4-2.tar.gz";
    name = "2.5.4-2.tar.gz";
    sha256 = "1cbf5a544e25129daa5ba623c38c661d83375c79212c024b0eec5b79d3779e25";
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
