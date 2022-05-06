
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, control-msgs, controller-interface, geometry-msgs, joint-trajectory-controller, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, sensor-msgs, std-msgs, std-srvs, ur-client-library, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-galactic-ur-controllers";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/ur_controllers/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "995e066d21c126d96a2b8785bac3659a3c36ff756f9e866537ec66d44fa54fa3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ angles control-msgs controller-interface geometry-msgs joint-trajectory-controller pluginlib rclcpp-lifecycle rcutils realtime-tools sensor-msgs std-msgs std-srvs ur-client-library ur-dashboard-msgs ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides controllers that use the speed scaling interface of Universal Robots.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
