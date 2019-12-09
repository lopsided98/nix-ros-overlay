
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, actionlib, tf, catkin, roscpp, angles, cob-srvs, nav-msgs, move-base-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-linear-nav";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_linear_nav/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "277f25f03514cda90bf6fa1a867bf6a6c407c3f55113849a7e40bebf79624aa3";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs actionlib tf roscpp angles cob-srvs nav-msgs move-base-msgs ];
  propagatedBuildInputs = [ geometry-msgs actionlib tf roscpp angles cob-srvs nav-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_linear_nav provides a simple navigation instrument driving on a linear path from current position to goal without any planning or obstacle avoidance capabilites.
    Obstacle avoidance should be carried out in other package, e.g. <a href="http://ros.org/wiki/cob_collision_velocity_filter">cob_collision_velocity_filter</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
