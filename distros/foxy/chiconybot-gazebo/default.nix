
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, chiconybot, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-foxy-chiconybot-gazebo";
  version = "0.0.0-r2";

  src = fetchurl {
    url = "https://github.com/jediofgever/ROS_CB-release/archive/release/foxy/chiconybot_gazebo/0.0.0-2.tar.gz";
    name = "0.0.0-2.tar.gz";
    sha256 = "4137ba05a6496c9f437882e470ae5d1e2fd7b6ac755a83483ace7106d75039fd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ chiconybot gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo simulation package for the Chiconybot'';
    license = with lib.licenses; [ asl20 ];
  };
}
