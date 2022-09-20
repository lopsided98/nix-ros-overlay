
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cairo, ceres-solver, cmake, eigen, gflags, glog, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-cartographer";
  version = "1.0.9001-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/foxy/cartographer/1.0.9001-1.tar.gz";
    name = "1.0.9001-1.tar.gz";
    sha256 = "4bc1c5c13c3f150d839764d3ed7a1db6563f82316e8c32ebad686a512e7209c6";
  };

  buildType = "cmake";
  buildInputs = [ cmake gtest python3Packages.sphinx ];
  propagatedBuildInputs = [ boost cairo ceres-solver eigen gflags glog lua5 protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
