
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl }:
buildRosPackage {
  pname = "ros-melodic-kdl-conversions";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/melodic/kdl_conversions/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "617dd8beae97409400b106c6a3f5a2e76afab2d6c2ea1fca6b740aca3a4e6ee6";
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
