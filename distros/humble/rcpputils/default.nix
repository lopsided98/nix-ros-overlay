
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils }:
buildRosPackage {
  pname = "ros-humble-rcpputils";
  version = "2.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/humble/rcpputils/2.4.0-2.tar.gz";
    name = "2.4.0-2.tar.gz";
    sha256 = "9612e513b6db7efc66d669e73ec014029e7cb6e95b90523d91f8ffc3540cbc47";
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
