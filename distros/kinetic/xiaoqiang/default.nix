
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xiaoqiang-bringup, xiaoqiang-controller, xiaoqiang-description, xiaoqiang-driver, xiaoqiang-freenect, xiaoqiang-monitor, xiaoqiang-msgs, xiaoqiang-server }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "08f88571e97775d1946f73539b78e7f71aae4a93662f77face30127d5e4cc38f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xiaoqiang-bringup xiaoqiang-controller xiaoqiang-description xiaoqiang-driver xiaoqiang-freenect xiaoqiang-monitor xiaoqiang-msgs xiaoqiang-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers, description, and utilities for xiaoqiang.'';
    license = with lib.licenses; [ mit ];
  };
}
