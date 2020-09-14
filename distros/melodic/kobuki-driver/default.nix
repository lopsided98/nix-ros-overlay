
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-command-line, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-time }:
buildRosPackage {
  pname = "ros-melodic-kobuki-driver";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/kobuki_driver/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "143fee86362ab50f8330b45d973314d596da894543aa03e829a4f0448dc6b629";
  };

  buildType = "catkin";
  buildInputs = [ ecl-build ];
  propagatedBuildInputs = [ ecl-command-line ecl-converters ecl-devices ecl-geometry ecl-mobile-robot ecl-sigslots ecl-time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ driver library for Kobuki:
    Pure C++ driver library for Kobuki. This is for those who do not wish to use ROS on their systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
