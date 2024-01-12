
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-command-line, ecl-console, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-time }:
buildRosPackage {
  pname = "ros-noetic-kobuki-driver";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/noetic/kobuki_driver/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "b0f18fe6187363b8f02af194048f4401f2f92f45ec42500f9ee5e4bb354ac692";
  };

  buildType = "catkin";
  buildInputs = [ catkin ecl-build ];
  propagatedBuildInputs = [ ecl-command-line ecl-console ecl-converters ecl-devices ecl-geometry ecl-mobile-robot ecl-sigslots ecl-time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ driver library for Kobuki:
    Pure C++ driver library for Kobuki. This is for those who do not wish to use ROS on their systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
