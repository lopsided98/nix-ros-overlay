
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, rclpy, rqt-gui, rqt-msg }:
buildRosPackage {
  pname = "ros-crystal-rqt-srv";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/crystal/rqt_srv/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "06feb31b523415f057448cbd3190cfb4c60d97ac41a6a5233a2e93d6f03bca40";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclpy rqt-msg rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
