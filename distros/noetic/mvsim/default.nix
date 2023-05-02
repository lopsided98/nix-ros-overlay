
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, cppzmq, dynamic-reconfigure, gtest, mrpt2, nav-msgs, protobuf, python3, python3Packages, pythonPackages, ros-environment, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-noetic-mvsim";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/noetic/mvsim/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "ca0319dbcb8104d5f86be3ea3d32eafcb9ee36aab13417cbdb12b8c6a6818c38";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost cppzmq dynamic-reconfigure mrpt2 nav-msgs protobuf python3 python3Packages.protobuf pythonPackages.pybind11 roscpp sensor-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''A lightweight multivehicle simulation framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
