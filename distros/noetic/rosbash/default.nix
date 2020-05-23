
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospack }:
buildRosPackage {
  pname = "ros-noetic-rosbash";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosbash/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "518f87b3b45c2656cd283495f9e32994d67f12d80c4c658371fa8e211f4d0212";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted shell commands for using ros with bash.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
