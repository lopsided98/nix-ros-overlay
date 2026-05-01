
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-lyrical-picknik-reset-fault-controller";
  version = "0.0.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/lyrical/picknik_reset_fault_controller/0.0.4-4.tar.gz";
    name = "0.0.4-4.tar.gz";
    sha256 = "88ab08b8b09f00079d0b96dd5c00080bad1395e7dd583f31bc47878d0b0c345b";
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
