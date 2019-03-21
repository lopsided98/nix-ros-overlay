
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-auto-docking, catkin, nodelet, kobuki-random-walker }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-rapps";
  version = "0.7.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_rapps/0.7.6-0.tar.gz;
    sha256 = "6c2ed04ef25e895f9506203d586896ae8364c2462c1ee7818fe355fe5b658218";
  };

  propagatedBuildInputs = [ kobuki-auto-docking nodelet kobuki-random-walker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot apps for Kobuki'';
    #license = lib.licenses.BSD;
  };
}
