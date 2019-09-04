
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, qt5, python3Packages, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-python-qt-binding";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/python_qt_binding-release/archive/release/crystal/python_qt_binding/1.0.1-0.tar.gz;
    sha256 = "fdf6f093e4849aba0695f6fa8c9bbe628d7da9b9745f7274b0fcc5e004cd0b08";
  };

  buildInputs = [ python3Packages.pyqt5 qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-cmake-pytest ament-lint-common ];
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
