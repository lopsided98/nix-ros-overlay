
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, kdl-parser, launch-ros, launch-testing-ament-cmake, orocos-kdl, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2-ros, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-foxy-robot-state-publisher";
  version = "2.4.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "robot_state_publisher-release";
        rev = "release/foxy/robot_state_publisher/2.4.5-1";
        sha256 = "sha256-UzbNiZgixh1R6pYa/NrAkWR53melD2m3xBa/4JFTsEM=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs kdl-parser orocos-kdl rclcpp rclcpp-components sensor-msgs std-msgs tf2-ros urdf urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package allows you to publish the state of a robot to
    <a href="http://wiki.ros.org/tf2">tf2</a>. Once the state gets published, it is
    available to all components in the system that also use <tt>tf2</tt>.
    The package takes the joint angles of the robot as input
    and publishes the 3D poses of the robot links, using a kinematic
    tree model of the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
