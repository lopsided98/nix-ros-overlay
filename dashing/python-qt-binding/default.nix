
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, qt5, python3Packages, ament-lint-auto }:
buildRosPackage rec {
  pname = "ros-dashing-python-qt-binding";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_qt_binding-release/archive/release/dashing/python_qt_binding/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "a116343c89897e466c720e3b892c913992b1771b91c40e02fcfd6632a8d0f7a4";
  };

  buildType = "ament_cmake";
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
