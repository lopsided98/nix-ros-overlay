
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, roscpp, pcl-ros, message-generation, message-runtime, actionlib, pr2-msgs, laser-geometry, pcl-conversions, eigen }:
buildRosPackage {
  pname = "ros-kinetic-pr2-tilt-laser-interface";
  version = "0.0.10";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/pr2_tilt_laser_interface/0.0.10-0.tar.gz;
    sha256 = "3839089ef7938bdb42f51eb747f19310ee1be8dc72a14c2a52d6eb646aed43aa";
  };

  buildInputs = [ actionlib-msgs pcl-conversions sensor-msgs roscpp message-generation actionlib pr2-msgs laser-geometry pcl-ros eigen ];
  propagatedBuildInputs = [ actionlib-msgs pcl-conversions sensor-msgs roscpp message-runtime actionlib pr2-msgs laser-geometry pcl-ros eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a set of tools/actions for manipulating the pr2's tilting
    laser. Simplifies previously complex tasks, such as fetching
    a single sweep, given a set of desired parameters for both the laser
    driver and tilting platform.'';
    #license = lib.licenses.BSD;
  };
}
