
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-time-lite }:
buildRosPackage {
  pname = "ros-rolling-ecl-time";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/rolling/ecl_time/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "d2d95f96576dceee6dca19a6f386dfa9249d72e6c4926bbd7544633a101d92b4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-exceptions ecl-license ecl-time-lite ];
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
