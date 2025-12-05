
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, eigen, gbenchmark, gmock, gtest, hdf5, onetbb, range-v3, sophus }:
buildRosPackage {
  pname = "ros-humble-beluga";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/humble/beluga/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "ffe47e3c5a6910e7cb9a8439bec10f2c7a479d6ff9f3c7edef95c1a3b291078d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ clang gbenchmark gmock gtest ];
  propagatedBuildInputs = [ eigen hdf5 onetbb range-v3 sophus ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A generic MCL library for ROS2.";
    license = with lib.licenses; [ asl20 ];
  };
}
