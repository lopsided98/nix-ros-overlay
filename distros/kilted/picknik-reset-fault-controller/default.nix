
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-kilted-picknik-reset-fault-controller";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/kilted/picknik_reset_fault_controller/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "0d8659a2971d41c07342c3be3686dae499ea4a5cebfafb8bab685e65888f8aac";
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
