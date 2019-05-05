
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cairo, ceres-solver, libwebp, boost, gflags, lua5, catkin, pythonPackages, glog, eigen, protobuf, gmock }:
buildRosPackage {
  pname = "ros-lunar-cartographer";
  version = "0.2.0-r5";

  src = fetchurl {
    url = https://github.com/ros-gbp/cartographer-release/archive/release/lunar/cartographer/0.2.0-5.tar.gz;
    sha256 = "dbf62c006876e56215213a4d2bb38358b4f3d70c40103d06e1c118196e2fcd9f";
  };

  buildInputs = [ cairo ceres-solver libwebp boost gflags lua5 pythonPackages.sphinx glog eigen protobuf gmock ];
  propagatedBuildInputs = [ cairo ceres-solver libwebp boost gflags lua5 glog eigen protobuf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
