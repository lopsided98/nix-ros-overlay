
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ceres-solver, clang, cmake, eigen, fmt, gbenchmark, gtest, hdf5, nanoflann, onetbb, range-v3, sophus }:
buildRosPackage {
  pname = "ros-lyrical-beluga";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/lyrical/beluga/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "59fcece650eb5851c1ab7d5450a3c1b6a3acb1bda65ee11f942273588ed89cf4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ clang gbenchmark gtest ];
  propagatedBuildInputs = [ ceres-solver eigen fmt hdf5 nanoflann onetbb range-v3 sophus ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A generic MCL library for ROS2.";
    license = with lib.licenses; [ asl20 ];
  };
}
