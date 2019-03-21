
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-ftdi, kobuki-dock-drive, kobuki-driver, catkin }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-core";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_core-release/archive/release/kinetic/kobuki_core/0.7.8-1.tar.gz;
    sha256 = "7bd843d734a13c222ee0844601173d3627c174903e964327b9082e5cb3895609";
  };

  propagatedBuildInputs = [ kobuki-ftdi kobuki-dock-drive kobuki-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Non-ROS software for Kobuki, Yujin Robot's mobile research base.'';
    #license = lib.licenses.BSD;
  };
}
