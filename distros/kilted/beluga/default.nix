
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, eigen, gbenchmark, gtest, hdf5, onetbb, range-v3, sophus }:
buildRosPackage {
  pname = "ros-kilted-beluga";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/kilted/beluga/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "5b666558715dc0f02e59ea5b6afdd6a7ff68e7559df40c4771c326be93dffbb2";
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
