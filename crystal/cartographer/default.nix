
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cairo, ceres-solver, cmake, eigen, gflags, glog, gmock, lua5, protobuf, pythonPackages }:
buildRosPackage {
  pname = "ros-crystal-cartographer";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/crystal/cartographer/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8820033c5d07d4acc754b8fe40fb5aee18cdf065b3120e14e7c4fea5115b320c";
  };

  buildType = "cmake";
  buildInputs = [ gmock pythonPackages.sphinx ];
  propagatedBuildInputs = [ boost cairo ceres-solver eigen gflags glog lua5 protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
