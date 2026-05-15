
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, qt-gui }:
buildRosPackage {
  pname = "ros-lyrical-qt-gui-app";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/lyrical/qt_gui_app/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "0761a38195f96d4ab60cf7361648214b2d1aec8a2c775c93bc5235fd543d047e";
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
