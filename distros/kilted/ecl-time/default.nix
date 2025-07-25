
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-time-lite }:
buildRosPackage {
  pname = "ros-kilted-ecl-time";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/kilted/ecl_time/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "6a56cb1305777c652ee10ecc325067bc97afef228a5eaf9247974e8dd9adde19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-exceptions ecl-license ecl-time-lite ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Timing utilities are very dependent on the system api provided for their use.
	This package provides a means for handling different timing models. Current support

	- posix rt : complete.
	- macosx : posix timers only, missing absolute timers.
	- win : none.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
