
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, eigen, laser-geometry, message-generation, message-runtime, pcl-conversions, pcl-ros, pr2-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-tilt-laser-interface";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/pr2_tilt_laser_interface/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "3839089ef7938bdb42f51eb747f19310ee1be8dc72a14c2a52d6eb646aed43aa";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs eigen laser-geometry message-runtime pcl-conversions pcl-ros pr2-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a set of tools/actions for manipulating the pr2's tilting
    laser. Simplifies previously complex tasks, such as fetching
    a single sweep, given a set of desired parameters for both the laser
    driver and tilting platform.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
