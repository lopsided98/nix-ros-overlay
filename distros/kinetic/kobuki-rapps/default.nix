
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kobuki-auto-docking, kobuki-random-walker, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-rapps";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_rapps/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "6c2ed04ef25e895f9506203d586896ae8364c2462c1ee7818fe355fe5b658218";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kobuki-auto-docking kobuki-random-walker nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot apps for Kobuki'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
