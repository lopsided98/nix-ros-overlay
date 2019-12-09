
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-errors, ecl-exceptions, ecl-time-lite, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-kinetic-ecl-time";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_time/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "9b198e27672cc60f073d95138afc009f85ffae69966adb3bd4e6ec06f5726ade";
  };

  buildType = "catkin";
  buildInputs = [ ecl-license ecl-errors ecl-exceptions ecl-time-lite ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-exceptions ecl-time-lite ecl-config ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Timing utilities are very dependent on the system api provided for their use.
	This package provides a means for handling different timing models. Current support
	
	- posix rt : complete.
	- macosx : posix timers only, missing absolute timers.
	- win : none.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
