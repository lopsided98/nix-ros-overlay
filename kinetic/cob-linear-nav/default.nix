
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, cob-srvs, move-base-msgs, nav-msgs, actionlib, angles, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-linear-nav";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_linear_nav/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "95b9594300b38568e4e72acfe201847e29302a7698915b75d6a4504e7132d8bf";
  };

  buildType = "catkin";
  buildInputs = [ roscpp cob-srvs move-base-msgs nav-msgs actionlib angles tf geometry-msgs ];
  propagatedBuildInputs = [ roscpp cob-srvs move-base-msgs nav-msgs actionlib angles tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_linear_nav provides a simple navigation instrument driving on a linear path from current position to goal without any planning or obstacle avoidance capabilites.
    Obstacle avoidance should be carried out in other package, e.g. <a href="http://ros.org/wiki/cob_collision_velocity_filter">cob_collision_velocity_filter</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
