
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils }:
buildRosPackage {
  pname = "ros-foxy-rcpputils";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/foxy/rcpputils/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "35d1f87ccc910299f08243f4bdc75daebeb8c8101a983a05d421d4f58643a00e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''Package containing utility code for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
