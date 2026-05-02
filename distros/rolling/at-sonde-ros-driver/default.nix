
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, libmodbus, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-at-sonde-ros-driver";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/at_sonde_ros_driver-release/archive/release/rolling/at_sonde_ros_driver/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "70491a446244416db43dfa79617cace92fa2f696e2d1cafba7bd7005e8e0175d";
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
