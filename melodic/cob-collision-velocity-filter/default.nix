
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, boost, catkin, tf2-ros, roscpp, cob-footprint-observer, nav-msgs, visualization-msgs, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-collision-velocity-filter";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_collision_velocity_filter/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "d5497609de480de99aeabea6c3c51a2e2a30e9cfd0002bc381a50e22c45b83f5";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d boost roscpp tf2-ros cob-footprint-observer nav-msgs visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d boost tf2-ros roscpp cob-footprint-observer nav-msgs visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
