
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, eigen, gbenchmark, gmock, gtest, hdf5, range-v3, sophus, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-iron-beluga";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/iron/beluga/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "95251269064c15b73f3c4aadd70202c2f7734ad2b85c2994119ea6f3fd8b02a4";
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
