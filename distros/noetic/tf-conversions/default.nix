
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, kdl-conversions, orocos-kdl, python3Packages, tf }:
buildRosPackage {
  pname = "ros-noetic-tf-conversions";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/noetic/tf_conversions/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "812795f7af1b22c8e82405f9832587653abcc3250b4606e910df0f0c38b304d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen geometry-msgs kdl-conversions orocos-kdl python3Packages.pykdl tf ];
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
