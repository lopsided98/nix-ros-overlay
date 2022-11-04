
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cairo, catkin, ceres-solver, eigen, gflags, glog, gtest, lua5, protobuf, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-cartographer";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer-release/archive/release/melodic/cartographer/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "899b883a05a2644553c5b5347b650f30cca59a3388fe14b6728486b0dcb77924";
  };

  buildType = "cmake";
  buildInputs = [ catkin gtest pythonPackages.sphinx ];
  propagatedBuildInputs = [ boost cairo ceres-solver eigen gflags glog lua5 protobuf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
