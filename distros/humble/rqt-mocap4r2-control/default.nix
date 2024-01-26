
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mocap4r2-control, mocap4r2-control-msgs, qt-gui-cpp, qt5, rclcpp, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-rqt-mocap4r2-control";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/rqt_mocap4r2_control/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "2395eee10b695a1c892756eeef29e2da32a0ccff17b5d8bca1663d4c2e50f611";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mocap4r2-control mocap4r2-control-msgs qt-gui-cpp qt5.qtbase rclcpp rqt-gui rqt-gui-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Control tools GUI'';
    license = with lib.licenses; [ asl20 ];
  };
}
