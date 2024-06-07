
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, eigen, gbenchmark, gmock, gtest, hdf5, range-v3, sophus, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-humble-beluga";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/humble/beluga/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "3c48ad9f1c81ba03638f4541070ef5016e05d9609f98b5c8b0a7710b41f7476c";
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
