
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-footprint-observer, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-collision-velocity-filter";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_collision_velocity_filter/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "1bc3611ef0aaf3b3008387cf583e531e20b0f2ffce6970c6e8dea8a8539fbd79";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cob-footprint-observer costmap-2d dynamic-reconfigure geometry-msgs nav-msgs roscpp tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
