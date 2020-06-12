
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cairo, ceres-solver, cmake, eigen, gflags, glog, gmock, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-eloquent-cartographer";
  version = "1.0.9001-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/eloquent/cartographer/1.0.9001-1.tar.gz";
    name = "1.0.9001-1.tar.gz";
    sha256 = "03eeee014c5ffb0085cd8ad43d5d030fc3f0fa50b85bd8aa7052d30bce267021";
  };

  buildType = "cmake";
  buildInputs = [ gmock gtest python3Packages.sphinx ];
  propagatedBuildInputs = [ boost cairo ceres-solver eigen gflags glog lua5 protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
