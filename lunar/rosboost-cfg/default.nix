
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-rosboost-cfg";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/lunar/rosboost_cfg/1.14.4-0.tar.gz;
    sha256 = "415a810442a16327f7e4e87e977be8fea5f26526419f1458b0c02d95352fe87e";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
