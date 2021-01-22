
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cairo, ceres-solver, cmake, eigen, gflags, glog, gmock, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-cartographer";
  version = "1.0.9001-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/dashing/cartographer/1.0.9001-1.tar.gz";
    name = "1.0.9001-1.tar.gz";
    sha256 = "8e5faaee7ae58f27e472a4156570c537fc8170ae3c9c47882e164817c4c7d232";
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
