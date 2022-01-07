
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-galactic-sros2-cmake";
  version = "0.10.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/galactic/sros2_cmake/0.10.2-2.tar.gz";
    name = "0.10.2-2.tar.gz";
    sha256 = "3401bc19a94faea516f31400d82d6b386892443a30c54b2e47d338aab5eabcb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros to configure security'';
    license = with lib.licenses; [ asl20 ];
  };
}
