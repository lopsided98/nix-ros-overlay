
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kobuki-dock-drive, kobuki-driver, kobuki-ftdi }:
buildRosPackage {
  pname = "ros-melodic-kobuki-core";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/kobuki_core/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "d5b2023576b24ec3fcf8ea0a624084a8b6a7aad7f677c9c8b16d65bc2136c6ed";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ kobuki-dock-drive kobuki-driver kobuki-ftdi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Non-ROS software for Kobuki, Yujin Robot's mobile research base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
