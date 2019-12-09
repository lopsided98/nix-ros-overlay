
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-state-publisher, catkin, controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-pepper-control";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_virtual-release/archive/release/kinetic/pepper_control/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "b19d564af1fb6a5531edd4839544b0add1e6922df38d61b75d07c106811e57a6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control for Pepper robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
