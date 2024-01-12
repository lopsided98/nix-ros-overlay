
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-time-lite }:
buildRosPackage {
  pname = "ros-noetic-ecl-time";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_time/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "e0d43cb6938c7d34f61cfc74f608509a9c95de0c6715f5e718cf90ea544a4b26";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-exceptions ecl-license ecl-time-lite ];
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
