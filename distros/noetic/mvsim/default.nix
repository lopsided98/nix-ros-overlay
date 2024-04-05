
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, cppzmq, dynamic-reconfigure, gtest, mrpt2, nav-msgs, protobuf, python3, python3Packages, pythonPackages, ros-environment, roscpp, rviz-plugin-tutorials, sensor-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-noetic-mvsim";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/noetic/mvsim/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "8848f1576df055be318a657d1eb3c16aedb5be8563b5a7f96f747a69db0bb04a";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost cppzmq dynamic-reconfigure mrpt2 nav-msgs protobuf python3 python3Packages.pip python3Packages.protobuf pythonPackages.pybind11 roscpp rviz-plugin-tutorials sensor-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = "A lightweight multivehicle simulation framework.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
