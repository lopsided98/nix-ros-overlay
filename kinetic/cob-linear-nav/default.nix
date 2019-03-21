
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, cob-srvs, move-base-msgs, nav-msgs, actionlib, angles, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-linear-nav";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_linear_nav/0.6.7-0.tar.gz;
    sha256 = "89f158b4948419a3d930762a72fd8ac2bb3dec90b859e5607af83a13ca7640a8";
  };

  propagatedBuildInputs = [ cob-srvs move-base-msgs nav-msgs actionlib angles geometry-msgs tf roscpp ];
  nativeBuildInputs = [ catkin roscpp cob-srvs move-base-msgs nav-msgs actionlib angles tf geometry-msgs ];

  meta = {
    description = ''cob_linear_nav provides a simple navigation instrument driving on a linear path from current position to goal without any planning or obstacle avoidance capabilites.
    Obstacle avoidance should be carried out in other package, e.g. <a href="http://ros.org/wiki/cob_collision_velocity_filter">cob_collision_velocity_filter</a>.'';
    #license = lib.licenses.Apache 2.0;
  };
}
