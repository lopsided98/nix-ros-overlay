
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, kdl-conversions, orocos-kdl, python-orocos-kdl, tf }:
buildRosPackage {
  pname = "ros-kinetic-tf-conversions";
  version = "1.11.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/kinetic/tf_conversions/1.11.9-0.tar.gz";
    name = "1.11.9-0.tar.gz";
    sha256 = "8fee2dbf9f0fe32faf00d36aaaebb9a5d311b2ff9838c5ef8a7b409b4d655e86";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen geometry-msgs kdl-conversions orocos-kdl python-orocos-kdl tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a set of conversion functions to convert
common tf datatypes (point, vector, pose, etc) into semantically
identical datatypes used by other libraries. The conversion functions
make it easier for users of the transform library (tf) to work with
the datatype of their choice. Currently this package has support for
the Kinematics and Dynamics Library (KDL) and the Eigen matrix
library. This package is stable, and will get integrated into tf in
the next major release cycle (see roadmap).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
