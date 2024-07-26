
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, eigen, gbenchmark, gmock, gtest, hdf5, range-v3, sophus, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-iron-beluga";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/iron/beluga/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "a62ded6c164b0c350ab9204f52b185f2974411be44ee6c4a7f5c4bbe6bfefb83";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ clang gbenchmark gmock gtest ];
  propagatedBuildInputs = [ eigen hdf5 range-v3 sophus tbb_2021_11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A generic MCL library for ROS2.";
    license = with lib.licenses; [ asl20 ];
  };
}
