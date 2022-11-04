
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosbash-params";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/peci1/rosbash_params-release/archive/release/melodic/rosbash_params/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "af9e6ee8c0ffae32824fbbfa2dfcbb6483e0ad1757282f347ca744db60dcb9a1";
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
