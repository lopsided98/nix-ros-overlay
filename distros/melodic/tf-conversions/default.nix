
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, kdl-conversions, orocos-kdl, python-orocos-kdl, tf }:
buildRosPackage {
  pname = "ros-melodic-tf-conversions";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/melodic/tf_conversions/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "e2e457c4d59951b3ed07f72d6e013905184e5de1458c3a57b9e3b35ee4355580";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
