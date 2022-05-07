
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, control-msgs, controller-interface, geometry-msgs, joint-trajectory-controller, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, sensor-msgs, std-msgs, std-srvs, ur-client-library, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-galactic-ur-controllers";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/ur_controllers/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "36cb3d8a13f946359ec0ef00813aa73ee1b39f281f4feb44ac977f72c9de3d5f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ angles control-msgs controller-interface geometry-msgs joint-trajectory-controller pluginlib rclcpp-lifecycle rcutils realtime-tools sensor-msgs std-msgs std-srvs ur-client-library ur-dashboard-msgs ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides controllers that use the speed scaling interface of Universal Robots.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
