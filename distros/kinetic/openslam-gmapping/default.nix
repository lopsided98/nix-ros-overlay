
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-openslam-gmapping";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openslam_gmapping-release/archive/release/kinetic/openslam_gmapping/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "ae4f94bd460677451452569b704640c85a513485031c5e382857ca2b44afe71f";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-ified version of gmapping SLAM. Forked from https://openslam.informatik.uni-freiburg.de/data/svn/gmapping/trunk/'';
    license = with lib.licenses; [ "CC-BY-SA-3.0" ];
  };
}
