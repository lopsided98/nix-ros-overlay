
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, controller-manager-msgs, geometry-msgs, hardware-interface, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-lifecycle, rclpy, std-msgs, std-srvs, ur-bringup, ur-client-library, ur-controllers, ur-dashboard-msgs, ur-description, ur-msgs }:
buildRosPackage {
  pname = "ros-foxy-ur-robot-driver";
  version = "2.0.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "Universal_Robots_ROS2_Driver-release";
        rev = "release/foxy/ur_robot_driver/2.0.2-2";
        sha256 = "sha256-CYdU5cAAExioqpWx/LzkDNEsk3CfTK+OzOiNzR9T3Vg=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake rclpy ur-bringup ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle std-msgs std-srvs ur-bringup ur-client-library ur-controllers ur-dashboard-msgs ur-description ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 controllers and the e-series.'';
    license = with lib.licenses; [ asl20 ];
  };
}
