
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, rviz-imu-plugin, rviz, robot-state-publisher, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-husky-viz";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_viz/0.3.3-0.tar.gz;
    sha256 = "1065753a0d829aa05f3cf673375e205c65207fd13f89bbe0972ad05c869b34ba";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-description rviz-imu-plugin rviz robot-state-publisher joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
