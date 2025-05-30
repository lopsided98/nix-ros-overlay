
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, orocos-kdl, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-eigen-conversions";
  version = "1.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/noetic/eigen_conversions/1.13.4-1.tar.gz";
    name = "1.13.4-1.tar.gz";
    sha256 = "16a251f72a393fc9f9e9b9ed0501bcc683133d24f98057e32d6687a5b3577c63";
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
