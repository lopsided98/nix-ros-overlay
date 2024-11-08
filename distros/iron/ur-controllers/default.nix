
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, controller-interface, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, std-msgs, std-srvs, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-iron-ur-controllers";
  version = "2.3.11-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/iron/ur_controllers/2.3.11-2.tar.gz";
    name = "2.3.11-2.tar.gz";
    sha256 = "b8c7aaec4f8109ea124e39146950b1a9f2a882b74d628e03c3964002e871e688";
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
