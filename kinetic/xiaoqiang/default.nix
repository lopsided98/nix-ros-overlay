
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xiaoqiang-server, xiaoqiang-description, catkin, xiaoqiang-freenect, xiaoqiang-msgs, xiaoqiang-driver, xiaoqiang-bringup, xiaoqiang-controller, xiaoqiang-monitor }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang/0.0.12-0.tar.gz;
    sha256 = "08f88571e97775d1946f73539b78e7f71aae4a93662f77face30127d5e4cc38f";
  };

  propagatedBuildInputs = [ xiaoqiang-server xiaoqiang-description xiaoqiang-freenect xiaoqiang-msgs xiaoqiang-driver xiaoqiang-bringup xiaoqiang-controller xiaoqiang-monitor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers, description, and utilities for xiaoqiang.'';
    license = with lib.licenses; [ mit ];
  };
}
