
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-iron-picknik-reset-fault-controller";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/iron/picknik_reset_fault_controller/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "df932fc2046f3c53f18d6805f661c6fa59e2e8645035c40faa9d47527fbe8095";
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
