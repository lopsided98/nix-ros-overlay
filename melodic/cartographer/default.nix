
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, protobuf, glog, ceres-solver, lua5, catkin, pythonPackages, cairo, eigen, gmock, gflags }:
buildRosPackage {
  pname = "ros-melodic-cartographer";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer-release/archive/release/melodic/cartographer/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "899b883a05a2644553c5b5347b650f30cca59a3388fe14b6728486b0dcb77924";
  };

  buildType = "cmake";
  buildInputs = [ boost protobuf glog ceres-solver lua5 cairo eigen pythonPackages.sphinx gmock gflags ];
  propagatedBuildInputs = [ boost protobuf glog ceres-solver lua5 cairo eigen gflags ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
