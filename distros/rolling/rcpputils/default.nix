
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcpputils";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/rolling/rcpputils/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "b7c3c8c9e3d716a2354d7f3f86050c1202ada42645de3723b066d488444f95b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''Package containing utility code for C++.'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
