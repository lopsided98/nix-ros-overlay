
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, orocos-kdl, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-eigen-conversions";
  version = "1.13.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/noetic/eigen_conversions/1.13.3-1.tar.gz";
    name = "1.13.3-1.tar.gz";
    sha256 = "764c4a03393892afd39db05fda619f289f29d2097646c3f8a4fabdb6a9c498b4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen geometry-msgs orocos-kdl std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions between:
      - Eigen and KDL
      - Eigen and geometry_msgs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
