
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cairo, ceres-solver, cmake, eigen, gflags, glog, gmock, lua5, protobuf, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-cartographer";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/eloquent/cartographer/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a528f0790014f53e4039ec96d0f7db68a3666012c6d22294c94e3d571a06c78a";
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
