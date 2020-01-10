
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-threads, ecl-time }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-driver";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/eloquent/kobuki_driver/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "9f435ac33085bf92940595750beea6c27b60261b18f63349e2c29f098a78feb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  propagatedBuildInputs = [ ecl-command-line ecl-config ecl-converters ecl-devices ecl-geometry ecl-mobile-robot ecl-sigslots ecl-threads ecl-time ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''C++ driver library for Kobuki:
    Pure C++ driver library for Kobuki. This is for those who do not wish to use ROS on their systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
