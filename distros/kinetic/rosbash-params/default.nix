
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rosbash-params";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/peci1/rosbash_params-release/archive/release/kinetic/rosbash_params/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "afd0d2d249a5493ee0bd98a253d94c56c8769792a4b32ca526bcdf126825f6f7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbash rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for writing ros-node-like bash scripts'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
