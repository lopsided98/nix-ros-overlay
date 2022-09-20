
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, std-msgs, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-foxy-ur-controllers";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_controllers/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "504e4388ae67a2b0c2e973b8612cd06c6c0e9d63b80234ca93133f9829414ac1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface joint-trajectory-controller lifecycle-msgs pluginlib rclcpp-lifecycle rcutils realtime-tools std-msgs ur-dashboard-msgs ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides controllers that use the speed scaling interface of Universal Robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
