
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, hardware-interface, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-lyrical-picknik-reset-fault-controller";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/lyrical/picknik_reset_fault_controller/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "e67061e8d1d8f6a4d03c15387690840d5353452d10c30419fa33bd108c64b289";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ controller-interface example-interfaces geometry-msgs hardware-interface rclcpp realtime-tools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "ROS 2 controller that offers a service to clear faults in a hardware interface";
    license = with lib.licenses; [ asl20 ];
  };
}
