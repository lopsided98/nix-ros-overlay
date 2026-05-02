
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-interface, dynamixel-hardware-interface, dynamixel-interfaces, generate-parameter-library, hardware-interface, pluginlib, rclcpp, ros2-control-cmake, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-ffw-robot-manager";
  version = "1.1.14-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/rolling/ffw_robot_manager/1.1.14-2.tar.gz";
    name = "1.1.14-2.tar.gz";
    sha256 = "0d0327368384910e39654a3d0c97cc9b595f30e5ead079bcf5c58fe3573c9c44";
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
