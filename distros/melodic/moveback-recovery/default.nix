
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, mbf-costmap-core, mbf-msgs, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveback-recovery";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mbf_recovery_behaviors/archive/release/melodic/moveback_recovery/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "4f8e01790e4812b87346b38c5f7d92aedb8ad318bf152e797280b065258156a2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ base-local-planner costmap-2d mbf-costmap-core mbf-msgs pluginlib roscpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Move Base Flex (MBF) recovery behavior moves the robot back for specified length.
        It also checks the costmap for a possible collision behind the robot while moving and
        stops the robot if necessary.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
