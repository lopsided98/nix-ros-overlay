
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, eigen, gbenchmark, gmock, gtest, hdf5, range-v3, sophus, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-noetic-beluga";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/noetic/beluga/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "489f1faae90f45109bad9b98c9db29f0e1a43f4fc33dbf307203b658944fc633";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ clang gbenchmark gmock gtest ];
  propagatedBuildInputs = [ eigen hdf5 range-v3 sophus tbb_2021_8 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A generic MCL library for ROS2.";
    license = with lib.licenses; [ asl20 ];
  };
}
