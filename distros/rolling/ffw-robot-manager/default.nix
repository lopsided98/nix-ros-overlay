
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-interface, dynamixel-hardware-interface, dynamixel-interfaces, generate-parameter-library, hardware-interface, pluginlib, rclcpp, ros2-control-cmake, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-ffw-robot-manager";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/rolling/ffw_robot_manager/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "224c0fbcc6df9dc22e5778f2a0bb44075666fd60b802d2fbb2fae06614cece1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-interface dynamixel-hardware-interface dynamixel-interfaces generate-parameter-library hardware-interface pluginlib rclcpp sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 controller that logs GPIO Error Code and Hardware Error Status for all GPIO devices.";
    license = with lib.licenses; [ asl20 ];
  };
}
