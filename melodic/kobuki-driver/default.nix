
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, ecl-geometry, ecl-sigslots, catkin, ecl-command-line, ecl-mobile-robot, ecl-devices, ecl-build, ecl-converters }:
buildRosPackage {
  pname = "ros-melodic-kobuki-driver";
  version = "0.7.8";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/kobuki_driver/0.7.8-0.tar.gz";
    name = "0.7.8-0.tar.gz";
    sha256 = "7cfcc4b9309c4a352fa54c9a6cb0fb0b53a5da43a0243aa13556670ec97bd34e";
  };

  buildType = "catkin";
  buildInputs = [ ecl-time ecl-geometry ecl-sigslots ecl-build ecl-command-line ecl-mobile-robot ecl-devices ecl-converters ];
  propagatedBuildInputs = [ ecl-time ecl-geometry ecl-sigslots ecl-command-line ecl-mobile-robot ecl-devices ecl-converters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ driver library for Kobuki:
    Pure C++ driver library for Kobuki. This is for those who do not wish to use ROS on their systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
