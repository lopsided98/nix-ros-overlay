
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, map-laser }:
buildRosPackage {
  pname = "ros-noetic-laser-filtering";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/laser_filtering_release/archive/release/noetic/laser_filtering/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "64184241a523570b8424a94e659de556a1ce9e19ab338ff7dc0fd91c45b11548";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ map-laser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS Libraries for filtering specific kinds of laser scans";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
