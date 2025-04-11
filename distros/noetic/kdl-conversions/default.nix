
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl }:
buildRosPackage {
  pname = "ros-noetic-kdl-conversions";
  version = "1.13.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/noetic/kdl_conversions/1.13.3-1.tar.gz";
    name = "1.13.3-1.tar.gz";
    sha256 = "abbe6eb2d3e7b5142ffcd7f54ca72b7fb993036a19886a6d4caf7c76438361c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions between KDL and geometry_msgs types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
