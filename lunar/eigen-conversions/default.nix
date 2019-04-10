
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, cmake-modules, catkin, eigen, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-eigen-conversions";
  version = "1.11.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry-release/archive/release/lunar/eigen_conversions/1.11.9-0.tar.gz;
    sha256 = "54df48e20601db8b369c7bcbefa4e914d8db04675851a4eb80ec01101691e566";
  };

  buildInputs = [ cmake-modules orocos-kdl eigen std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs orocos-kdl geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion functions between:
      - Eigen and KDL
      - Eigen and geometry_msgs.'';
    #license = lib.licenses.BSD;
  };
}
