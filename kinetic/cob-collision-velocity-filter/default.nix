
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, boost, tf, catkin, cob-footprint-observer, nav-msgs, visualization-msgs, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-collision-velocity-filter";
  version = "0.7.6-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_collision_velocity_filter/0.7.6-1.tar.gz;
    sha256 = "7194e00a79a8f79583dcf192e60c57db70fd0fe421820386d4c7724513057b83";
  };

  buildInputs = [ costmap-2d boost roscpp cob-footprint-observer nav-msgs visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d boost roscpp cob-footprint-observer nav-msgs visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
