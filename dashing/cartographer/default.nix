
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, protobuf, glog, ceres-solver, lua5, pythonPackages, cmake, cairo, eigen, gmock, gflags }:
buildRosPackage {
  pname = "ros-dashing-cartographer";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/dashing/cartographer/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "09513565f6e8adb28bd13f649b6ec27d141d72c68fd1f8ca06886ec1be83f6ee";
  };

  buildType = "cmake";
  buildInputs = [ boost protobuf glog ceres-solver lua5 cairo eigen pythonPackages.sphinx gmock gflags ];
  propagatedBuildInputs = [ boost protobuf glog ceres-solver lua5 cairo eigen gflags ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
