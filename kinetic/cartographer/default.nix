
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, protobuf, glog, ceres-solver, lua5, catkin, pythonPackages, libwebp, cairo, eigen, gmock, gflags }:
buildRosPackage {
  pname = "ros-kinetic-cartographer";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer-release/archive/release/kinetic/cartographer/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "83c80c70ec6d580bbd65ab60a08d59470351349e92cacc79c4bc7332becd193b";
  };

  buildType = "cmake";
  buildInputs = [ boost protobuf glog ceres-solver lua5 libwebp cairo eigen pythonPackages.sphinx gmock gflags ];
  propagatedBuildInputs = [ boost protobuf glog ceres-solver lua5 libwebp cairo eigen gflags ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
