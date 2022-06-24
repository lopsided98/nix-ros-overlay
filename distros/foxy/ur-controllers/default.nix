
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, std-msgs, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-foxy-ur-controllers";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_controllers/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "67b2398dda46eb9e32ecda788cf65efc559e43534849a22ad32161246f3b64cf";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-interface joint-trajectory-controller lifecycle-msgs pluginlib rclcpp-lifecycle rcutils realtime-tools std-msgs ur-dashboard-msgs ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides controllers that use the speed scaling interface of Universal Robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
