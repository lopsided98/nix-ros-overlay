
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospack }:
buildRosPackage {
  pname = "ros-noetic-rosbash";
  version = "1.15.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosbash/1.15.10-1.tar.gz";
    name = "1.15.10-1.tar.gz";
    sha256 = "9ce99515f05899f46d9dc2ab005ff68aac76bf983c8c9cdf63258b9d8ce634f4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Assorted shell commands for using ros with bash.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
