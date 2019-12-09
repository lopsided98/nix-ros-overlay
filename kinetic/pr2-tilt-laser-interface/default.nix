
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, message-generation, sensor-msgs, pr2-msgs, actionlib, catkin, laser-geometry, eigen, actionlib-msgs, pcl-conversions, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-pr2-tilt-laser-interface";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/pr2_tilt_laser_interface/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "3839089ef7938bdb42f51eb747f19310ee1be8dc72a14c2a52d6eb646aed43aa";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs pr2-msgs actionlib laser-geometry eigen actionlib-msgs pcl-conversions roscpp message-generation ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs pr2-msgs actionlib laser-geometry eigen pcl-conversions actionlib-msgs roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a set of tools/actions for manipulating the pr2's tilting
    laser. Simplifies previously complex tasks, such as fetching
    a single sweep, given a set of desired parameters for both the laser
    driver and tilting platform.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
