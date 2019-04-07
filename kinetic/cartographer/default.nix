
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cairo, ceres-solver, libwebp, boost, gflags, lua5, catkin, pythonPackages, glog, eigen, protobuf, gmock }:
buildRosPackage {
  pname = "ros-kinetic-cartographer";
  version = "0.2.0-r2";

  src = fetchurl {
    url = https://github.com/ros-gbp/cartographer-release/archive/release/kinetic/cartographer/0.2.0-2.tar.gz;
    sha256 = "83c80c70ec6d580bbd65ab60a08d59470351349e92cacc79c4bc7332becd193b";
  };

  buildInputs = [ cairo ceres-solver libwebp boost gflags lua5 pythonPackages.sphinx glog eigen protobuf gmock ];
  propagatedBuildInputs = [ cairo ceres-solver libwebp boost gflags lua5 glog eigen protobuf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    #license = lib.licenses.Apache 2.0;
  };
}
