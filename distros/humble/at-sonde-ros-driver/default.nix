
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, libmodbus, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-at-sonde-ros-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/at_sonde_ros_driver-release/archive/release/humble/at_sonde_ros_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "07947c497c105a66471ee8bb2bcaf8a139e4a0333a161ff14b998ff2a92209d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ libmodbus rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 driver to stream the monitored parameters of an In-Situ Aqua TROLL Multiparameter Sonde.";
    license = with lib.licenses; [ bsd3 ];
  };
}
