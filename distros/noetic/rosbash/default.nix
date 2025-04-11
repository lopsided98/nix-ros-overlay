
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospack }:
buildRosPackage {
  pname = "ros-noetic-rosbash";
  version = "1.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosbash/1.15.9-1.tar.gz";
    name = "1.15.9-1.tar.gz";
    sha256 = "f0231b7403be022793b2af49970c6a797af94e7cbdc4027ebeceab2c4dea33f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Assorted shell commands for using ros with bash.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
