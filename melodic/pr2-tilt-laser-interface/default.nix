
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, roscpp, pcl-ros, message-generation, message-runtime, actionlib, pr2-msgs, laser-geometry, pcl-conversions, eigen }:
buildRosPackage {
  pname = "ros-melodic-pr2-tilt-laser-interface";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/pr2_tilt_laser_interface/0.0.11-0.tar.gz;
    sha256 = "8d25bddf370f8550b5ddac3e38c98c17d4880893c20bc601f8fd8b86c5bc4c2c";
  };

  buildInputs = [ actionlib-msgs sensor-msgs roscpp message-generation actionlib pcl-ros pr2-msgs laser-geometry pcl-conversions eigen ];
  propagatedBuildInputs = [ actionlib-msgs sensor-msgs roscpp actionlib message-runtime pcl-ros pr2-msgs laser-geometry pcl-conversions eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a set of tools/actions for manipulating the pr2's tilting
    laser. Simplifies previously complex tasks, such as fetching
    a single sweep, given a set of desired parameters for both the laser
    driver and tilting platform.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
