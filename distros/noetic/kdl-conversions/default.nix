
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl }:
buildRosPackage {
  pname = "ros-noetic-kdl-conversions";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/noetic/kdl_conversions/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "8bf8790de2b08b6274348c68c23337dc16e4ca2b4a1ca4028d5555cb53094a5f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion functions between KDL and geometry_msgs types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
