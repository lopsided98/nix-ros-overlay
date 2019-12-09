
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ecl-errors, ecl-exceptions, ament-cmake-gtest, ecl-config, ecl-time-lite, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ecl-time";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_time/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "f8096e695262c41c86a516860cdc94f4bbd75c75b31d1c9e4001e6ed3d6df852";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-errors ecl-exceptions ecl-time-lite ecl-config ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-exceptions ecl-time-lite ecl-config ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Timing utilities are very dependent on the system api provided for their use.
	This package provides a means for handling different timing models. Current support

	- posix rt : complete.
	- macosx : posix timers only, missing absolute timers.
	- win : none.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
