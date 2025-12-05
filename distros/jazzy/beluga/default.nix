
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, eigen, gbenchmark, gmock, gtest, hdf5, onetbb, range-v3, sophus }:
buildRosPackage {
  pname = "ros-jazzy-beluga";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/jazzy/beluga/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "98edbe4fc0d184e41fc24d811fb1de4c97ed0116b8a54d055a1569a741b03972";
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
