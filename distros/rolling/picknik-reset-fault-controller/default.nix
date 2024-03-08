
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-rolling-picknik-reset-fault-controller";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/rolling/picknik_reset_fault_controller/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "56aaba66f0c724280d69e3a0ed80d3416429a793ba215e3c57df55cfe2caf0e5";
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
