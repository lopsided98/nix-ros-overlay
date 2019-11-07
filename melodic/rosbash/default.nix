
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosbash";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosbash/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "c5c7174151d0762d82f64f7d9e8f1c43755b7e4973eb9c9bd5ae36c311737838";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospack catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted shell commands for using ros with bash.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
