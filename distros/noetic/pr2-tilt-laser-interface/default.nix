
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, eigen, laser-geometry, message-generation, message-runtime, pcl-conversions, pcl-ros, pr2-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-tilt-laser-interface";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/noetic/pr2_tilt_laser_interface/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "89a75cfac26b02cdaffe6a9ba9bd4c24cd3207cd0b8aea49eebf95e15af18f98";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
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
