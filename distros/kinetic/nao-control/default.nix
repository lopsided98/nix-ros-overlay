
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, effort-controllers, joint-state-controller, joint-trajectory-controller, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-nao-control";
  version = "0.0.6";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_virtual-release/archive/release/kinetic/nao_control/0.0.6-0.tar.gz";
    name = "0.0.6-0.tar.gz";
    sha256 = "b704c84911e5d3d30e104e8032f6c5ef7c3163f667ba47104a804e447d0a124c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager effort-controllers joint-state-controller joint-trajectory-controller robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nao_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
