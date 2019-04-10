
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, roscpp, pcl-ros, message-generation, message-runtime, actionlib, pr2-msgs, laser-geometry, pcl-conversions, eigen }:
buildRosPackage {
  pname = "ros-lunar-pr2-tilt-laser-interface";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/lunar/pr2_tilt_laser_interface/0.0.11-0.tar.gz;
    sha256 = "e580fb89888cddf1ddcc154ce4d0a0b35980a785e143ff2515a8ae5dc3cc6a4f";
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
