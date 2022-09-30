
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, box2d, catkin, cmake, cppzmq, dynamic-reconfigure, gtest, mrpt2, nav-msgs, protobuf, pythonPackages, ros-environment, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mvsim";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/noetic/mvsim/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "0aaea1211ff21de611cec22535739790de4b63f67fb546c010b82987d65d3f88";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost box2d cppzmq dynamic-reconfigure mrpt2 nav-msgs protobuf pythonPackages.pybind11 roscpp sensor-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''A lightweight multivehicle simulation framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
