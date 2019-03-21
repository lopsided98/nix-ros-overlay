
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tuw-aruco, tuw-marker-pose-estimation, tuw-ellipses, catkin }:
buildRosPackage {
  pname = "ros-kinetic-tuw-marker-detection";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_marker_detection/0.0.7-0.tar.gz;
    sha256 = "ee1a37fd7c3a927115d8fbde78495719fa4417e4841aabebb486459805e22ddd";
  };

  propagatedBuildInputs = [ tuw-aruco tuw-marker-pose-estimation tuw-ellipses ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_marker_detection package'';
    #license = lib.licenses.BSD;
  };
}
