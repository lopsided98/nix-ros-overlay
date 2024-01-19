
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, map-laser }:
buildRosPackage {
  pname = "ros-noetic-laser-filtering";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/laser_filtering_release/archive/release/noetic/laser_filtering/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "b2d105b7598d93ede269fb388bf842b9a2af441a5bcfe8a3db2ce8696de77af6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ map-laser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Libraries for filtering specific kinds of laser scans'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
