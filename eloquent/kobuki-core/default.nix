
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kobuki-dock-drive, kobuki-driver, kobuki-ftdi }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-core";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/eloquent/kobuki_core/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "a574baa6b5816942230a38b1998019c70f10dfbc2dd588a9c4b2c144637e7be5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ kobuki-dock-drive kobuki-driver kobuki-ftdi ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Non-ROS software for Kobuki, Yujin Robot's mobile research base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
