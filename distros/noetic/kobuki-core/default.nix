
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kobuki-dock-drive, kobuki-driver, kobuki-ftdi }:
buildRosPackage {
  pname = "ros-noetic-kobuki-core";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/noetic/kobuki_core/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "e9c04dfff9fa404901b01cd7cce253bed12a00385b76a24da99f5e96158d869e";
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
