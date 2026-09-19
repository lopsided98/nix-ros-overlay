
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, hardware-interface, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-rolling-picknik-reset-fault-controller";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/rolling/picknik_reset_fault_controller/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "a7e318037d1617a8a47780de02303e041adc86ac53ff9e0631ed1e3cfaf7afae";
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
