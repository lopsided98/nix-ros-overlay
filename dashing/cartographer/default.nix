
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cairo, ceres-solver, boost, gflags, lua5, pythonPackages, glog, eigen, protobuf, cmake, gmock }:
buildRosPackage {
  pname = "ros-dashing-cartographer";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/dashing/cartographer/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "09513565f6e8adb28bd13f649b6ec27d141d72c68fd1f8ca06886ec1be83f6ee";
  };

  buildType = "cmake";
  buildInputs = [ cairo ceres-solver boost gflags lua5 pythonPackages.sphinx glog eigen protobuf gmock ];
  propagatedBuildInputs = [ cairo ceres-solver boost gflags lua5 glog eigen protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
