
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kobuki-dock-drive, kobuki-driver, kobuki-ftdi }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-core";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/kinetic/kobuki_core/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "9328e688b6a08958d16e672c40f3b9e38e44c3369edc746dd77f1b31835ecf4c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kobuki-dock-drive kobuki-driver kobuki-ftdi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Non-ROS software for Kobuki, Yujin Robot's mobile research base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
