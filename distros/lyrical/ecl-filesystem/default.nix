
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-filesystem";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_filesystem/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "77ba33cc06ccfd63062c33bd8b2ff1bd48cff0ad98508e0410a4cff36c501796";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Cross platform filesystem utilities (until c++11 makes its way in).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
