
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-jazzy-picknik-reset-fault-controller";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/jazzy/picknik_reset_fault_controller/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "f6b4abf56f34fc4fb6f910d3290465f43a79e5ebde291daa1216eea195d20f6b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ controller-interface example-interfaces geometry-msgs rclcpp realtime-tools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "ROS 2 controller that offers a service to clear faults in a hardware interface";
    license = with lib.licenses; [ asl20 ];
  };
}
