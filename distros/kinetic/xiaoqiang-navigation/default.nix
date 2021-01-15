
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, addwa-local-planner, catkin, xiaoqiang-navigation-example }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-navigation";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_navigation/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "b55f26da65cf0baa369a93f5489ee0b249592c990159f31a2daf55bb7d4de6a1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ addwa-local-planner xiaoqiang-navigation-example ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''xiaoqiang navigaion related'';
    license = with lib.licenses; [ mit ];
  };
}
