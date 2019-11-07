
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, rviz-imu-plugin, rviz, robot-state-publisher, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-melodic-husky-viz";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_viz/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "0929c37c262a5e06e49f8fe52bfaae70d7447e820fa8573a10b833ad1ec59325";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-description rviz-imu-plugin rviz robot-state-publisher joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
