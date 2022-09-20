
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, orocos-kdl, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-eigen-conversions";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/melodic/eigen_conversions/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "ba111914a7e79c176c8eafa732201d0aeca1dd0ffc481f4b83038384b2e44261";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen geometry-msgs orocos-kdl std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion functions between:
      - Eigen and KDL
      - Eigen and geometry_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
