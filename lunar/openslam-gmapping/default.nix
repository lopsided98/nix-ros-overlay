
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-openslam-gmapping";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/openslam_gmapping-release/archive/release/lunar/openslam_gmapping/0.1.2-0.tar.gz;
    sha256 = "4d313b07c7c406753423e0c711c1630bebbccafc8dc5ce28232b2673436449a9";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-ified version of gmapping SLAM. Forked from https://openslam.informatik.uni-freiburg.de/data/svn/gmapping/trunk/'';
    #license = lib.licenses.CreativeCommons-by-nc-sa-2.0;
  };
}
