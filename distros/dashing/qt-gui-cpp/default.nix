
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, pkg-config, pluginlib, python-qt-binding, qt-gui, qt5, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-dashing-qt-gui-cpp";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/dashing/qt_gui_cpp/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "43c1b4ddb8022b6fac87de0ebd0324b95e61ce4b67dc50fdd9987495eca1a6e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ pkg-config python-qt-binding qt5.qtbase ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
