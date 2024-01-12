
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, controller-interface, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, std-msgs, std-srvs, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-humble-ur-controllers";
  version = "2.2.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_controllers/2.2.10-1.tar.gz";
    name = "2.2.10-1.tar.gz";
    sha256 = "d96f20445fcb82ad6851d87c16f59c46ecfe014f774690f0ae7c59afd9f51301";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles controller-interface joint-trajectory-controller lifecycle-msgs pluginlib rclcpp-lifecycle rcutils realtime-tools std-msgs std-srvs ur-dashboard-msgs ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides controllers that use the speed scaling interface of Universal Robots.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
