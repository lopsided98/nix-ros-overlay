
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, tf2, uav-msgs }:
buildRosPackage {
  pname = "ros-melodic-priority-manager";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/priority_manager/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "e17aba178a484d90ececd91d1d42239b8bac2c3e943a9753b9d2d6f28b48e637";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp tf2 uav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Priority Manager'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
