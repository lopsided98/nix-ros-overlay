
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gmapping, openslam-gmapping }:
buildRosPackage {
  pname = "ros-noetic-slam-gmapping";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_gmapping-release/archive/release/noetic/slam_gmapping/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "f630ba8630dc41063e8ad975fa03c709592592a115ebaf857d0541343721c49c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gmapping openslam-gmapping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''slam_gmapping contains a wrapper around gmapping which provides SLAM capabilities.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
