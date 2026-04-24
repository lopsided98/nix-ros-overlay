
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, eigen, gbenchmark, gtest, hdf5, onetbb, range-v3, sophus }:
buildRosPackage {
  pname = "ros-humble-beluga";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/humble/beluga/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "a885f4067b0c0e3b60f8a920646aa536e79501e321326501f2846564f09b57af";
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
