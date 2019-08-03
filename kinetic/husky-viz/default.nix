
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, rviz-imu-plugin, rviz, robot-state-publisher, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-husky-viz";
  version = "0.3.4-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_viz/0.3.4-1.tar.gz;
    sha256 = "77acd61d50146f09680bd9f594976665f46f0fe4b561a640c017ba82f6e2209a";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-description rviz-imu-plugin rviz robot-state-publisher joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
