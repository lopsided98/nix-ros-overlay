
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-manipulators";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_manipulators/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "6ba3291391c4a5ee9798095a0df02706c3aa711fbccccbb5cb9d928525eb9d94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-exceptions ecl-formatters ecl-geometry ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Deploys various manipulation algorithms, currently just
    feedforward filters (interpolations).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
