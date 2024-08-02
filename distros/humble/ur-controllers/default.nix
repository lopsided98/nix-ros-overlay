
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, controller-interface, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, std-msgs, std-srvs, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-humble-ur-controllers";
  version = "2.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_controllers/2.2.15-1.tar.gz";
    name = "2.2.15-1.tar.gz";
    sha256 = "ded9d3147e07db5b476db01a718e532ce6bf9b393fad8f50e4d06155cd99f0c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles controller-interface joint-trajectory-controller lifecycle-msgs pluginlib rclcpp-lifecycle rcutils realtime-tools std-msgs std-srvs ur-dashboard-msgs ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides controllers that use the speed scaling interface of Universal Robots.";
    license = with lib.licenses; [ bsd3 ];
  };
}
