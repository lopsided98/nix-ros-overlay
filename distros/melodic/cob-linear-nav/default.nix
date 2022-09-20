
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cob-srvs, geometry-msgs, move-base-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-linear-nav";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_linear_nav/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "c034ee13d9b2ef122e599e79b7056e8e2f6de33b1705808ac6ec08d747033e2c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib angles cob-srvs geometry-msgs move-base-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_linear_nav provides a simple navigation instrument driving on a linear path from current position to goal without any planning or obstacle avoidance capabilites.
    Obstacle avoidance should be carried out in other package, e.g. <a href="http://ros.org/wiki/cob_collision_velocity_filter">cob_collision_velocity_filter</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
