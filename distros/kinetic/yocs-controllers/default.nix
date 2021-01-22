
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-yocs-controllers";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_controllers/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "4245e367e47411753aa148e9a267d7554bc5d0b341a8c51e90be763637c7e5b0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for various controller types and algorithms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
