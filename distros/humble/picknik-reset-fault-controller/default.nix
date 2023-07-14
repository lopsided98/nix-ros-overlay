
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-humble-picknik-reset-fault-controller";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/humble/picknik_reset_fault_controller/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "c0ab6c76211d8feb3c85c3db6ecf0243ff0d569e6c000b63e47309f575c9e8e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ controller-interface example-interfaces geometry-msgs rclcpp realtime-tools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''ROS 2 controller that offers a service to clear faults in a hardware interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
