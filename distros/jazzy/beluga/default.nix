
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, eigen, gbenchmark, gtest, hdf5, onetbb, range-v3, sophus }:
buildRosPackage {
  pname = "ros-jazzy-beluga";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/jazzy/beluga/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "40475ac312fdcd36d84c517c98a52da1b75353856184b78c8f5eda22470d3fd2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ clang gbenchmark gtest ];
  propagatedBuildInputs = [ eigen hdf5 onetbb range-v3 sophus ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A generic MCL library for ROS2.";
    license = with lib.licenses; [ asl20 ];
  };
}
