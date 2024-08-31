
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, cppzmq, cv-bridge, dynamic-reconfigure, geometry-msgs, gtest, mrpt-libgui, mrpt-libmaps, mrpt-libposes, mrpt-libros-bridge, mrpt-libtclap, nav-msgs, protobuf, python3, python3Packages, pythonPackages, ros-environment, roscpp, rviz-plugin-tutorials, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-noetic-mvsim";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/noetic/mvsim/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "7d3111bd3ef153142934f8117b16a43cf96b736879ea7b2043eea601ffaa06a3";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost cppzmq cv-bridge dynamic-reconfigure geometry-msgs mrpt-libgui mrpt-libmaps mrpt-libposes mrpt-libros-bridge mrpt-libtclap nav-msgs protobuf python3 python3Packages.pip python3Packages.protobuf pythonPackages.pybind11 roscpp rviz-plugin-tutorials sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = "A lightweight multivehicle simulation framework.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
