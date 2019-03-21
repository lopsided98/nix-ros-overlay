
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time-lite, catkin, ecl-build, ecl-exceptions, ecl-license, ecl-errors, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-time";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_time/0.62.2-0.tar.gz;
    sha256 = "3be2a120f7f4b5a020daac7cc5b8715c2af79c7d2d3c899ac49f2b6640065c04";
  };

  propagatedBuildInputs = [ ecl-exceptions ecl-license ecl-errors ecl-time-lite ecl-config ecl-build ];
  nativeBuildInputs = [ ecl-exceptions ecl-license ecl-errors ecl-time-lite catkin ecl-config ecl-build ];

  meta = {
    description = ''Timing utilities are very dependent on the system api provided for their use.
	This package provides a means for handling different timing models. Current support
	
	- posix rt : complete.
	- macosx : posix timers only, missing absolute timers.
	- win : none.'';
    #license = lib.licenses.BSD;
  };
}
