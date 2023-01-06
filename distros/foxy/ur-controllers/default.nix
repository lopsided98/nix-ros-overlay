
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, std-msgs, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-foxy-ur-controllers";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_controllers/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "af2d3866838b85de7c16d8399f090535f7789199cfd5a110bb7870fd4a866b01";
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
