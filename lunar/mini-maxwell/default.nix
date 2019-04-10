
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, cmake-modules, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-mini-maxwell";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/mini_maxwell/2.1.11-2.tar.gz;
    sha256 = "7b54432356f9f5d16b1cb18c4c8bf32e09a0d2df22ecca68477ab1ef588bf1b1";
  };

  buildInputs = [ roslib cmake-modules dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mini_maxwell'';
    #license = lib.licenses.BSD;
  };
}
