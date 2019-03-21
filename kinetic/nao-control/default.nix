
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, joint-state-controller, catkin, joint-trajectory-controller, robot-state-publisher, effort-controllers }:
buildRosPackage {
  pname = "ros-kinetic-nao-control";
  version = "0.0.6";

  src = fetchurl {
    url = https://github.com/ros-naoqi/nao_virtual-release/archive/release/kinetic/nao_control/0.0.6-0.tar.gz;
    sha256 = "b704c84911e5d3d30e104e8032f6c5ef7c3163f667ba47104a804e447d0a124c";
  };

  propagatedBuildInputs = [ controller-manager joint-state-controller robot-state-publisher effort-controllers joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nao_control package'';
    #license = lib.licenses.Apache 2.0;
  };
}
