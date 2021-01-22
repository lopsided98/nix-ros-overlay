
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, moveit-common, moveit-core, pluginlib, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-foxy-moveit-simple-controller-manager";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_simple_controller_manager/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "11e9f010619631b9e85ad007ff209ef28a357693f02d1de597d63fc0f3937d52";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  propagatedBuildInputs = [ control-msgs moveit-core pluginlib rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
