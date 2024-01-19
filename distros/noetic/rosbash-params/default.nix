
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosbash-params";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/peci1/rosbash_params-release/archive/release/noetic/rosbash_params/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6f6a607b2eb9988b213149b16ded7ed2832c834e9ba8541ebd498d0b1a996397";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosbash rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for writing ros-node-like bash scripts'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
