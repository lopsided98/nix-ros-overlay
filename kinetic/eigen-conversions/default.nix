
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, geometry-msgs, std-msgs, cmake-modules, catkin, eigen }:
buildRosPackage {
  pname = "ros-kinetic-eigen-conversions";
  version = "1.11.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/kinetic/eigen_conversions/1.11.9-0.tar.gz";
    name = "1.11.9-0.tar.gz";
    sha256 = "37608f29197051e03374ef024fce58f2fc17dbcca737fc49ad139b7c81b289f5";
  };

  buildType = "catkin";
  buildInputs = [ orocos-kdl geometry-msgs std-msgs cmake-modules eigen ];
  propagatedBuildInputs = [ orocos-kdl std-msgs eigen geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion functions between:
      - Eigen and KDL
      - Eigen and geometry_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
