
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, cppzmq, dynamic-reconfigure, gtest, mrpt2, nav-msgs, protobuf, python3, python3Packages, pythonPackages, ros-environment, roscpp, rviz-plugin-tutorials, sensor-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-noetic-mvsim";
  version = "0.9.1-r2";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/noetic/mvsim/0.9.1-2.tar.gz";
    name = "0.9.1-2.tar.gz";
    sha256 = "45ce15a4093e94b326f033d67615a526f63e11c92d9ddd1cabcc3e5c72bddfe9";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost cppzmq dynamic-reconfigure mrpt2 nav-msgs protobuf python3 python3Packages.pip python3Packages.protobuf pythonPackages.pybind11 roscpp rviz-plugin-tutorials sensor-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''A lightweight multivehicle simulation framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
