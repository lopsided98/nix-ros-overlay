
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, message-generation, sensor-msgs, pr2-msgs, actionlib, catkin, laser-geometry, eigen, actionlib-msgs, pcl-conversions, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-pr2-tilt-laser-interface";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/pr2_tilt_laser_interface/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "8d25bddf370f8550b5ddac3e38c98c17d4880893c20bc601f8fd8b86c5bc4c2c";
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
