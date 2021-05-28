
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils }:
buildRosPackage {
  pname = "ros-galactic-rcpputils";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/galactic/rcpputils/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "f3af21385390086e704e31d1c79c5989927ad24fa4fa5d8d8e9e307f98c87923";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''Package containing utility code for C++.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
