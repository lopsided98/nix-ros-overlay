
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils }:
buildRosPackage {
  pname = "ros-iron-rcpputils";
  version = "2.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/iron/rcpputils/2.6.1-3.tar.gz";
    name = "2.6.1-3.tar.gz";
    sha256 = "94bf99dc5eccabd7d2b6fa02f189aef89ddd87944d3b786ca94d88c9aaa18ed1";
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
