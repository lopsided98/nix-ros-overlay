
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, cv-bridge, geometry-msgs, gtest, mrpt-libposes, mrpt-libros-bridge, nav-msgs, ros-environment, roscpp, rosunit, sensor-msgs, std-msgs, stereo-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-pose-cov-ops";
  version = "0.3.13-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/noetic/pose_cov_ops/0.3.13-1.tar.gz";
    name = "0.3.13-1.tar.gz";
    sha256 = "d84d0c2a7505ba429c6823ed0fc4632c09c488e5580a81db1c7f1ae9c50f3771";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs mrpt-libposes mrpt-libros-bridge nav-msgs roscpp sensor-msgs std-msgs stereo-msgs tf2 ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = "C++ library for SE(2)/SE(3) pose composition operations with uncertainty";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
