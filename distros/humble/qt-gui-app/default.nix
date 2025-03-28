
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, qt-gui }:
buildRosPackage {
  pname = "ros-humble-qt-gui-app";
  version = "2.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/humble/qt_gui_app/2.2.3-2.tar.gz";
    name = "2.2.3-2.tar.gz";
    sha256 = "84c6c16cce3a61eaaef700b2f66c424e1894e9ba97fe6d3ef4c81efc4a60b4b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python qt-gui ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
