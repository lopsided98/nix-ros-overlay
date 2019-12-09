
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, catkin, controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-rqt-controller-manager";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/rqt_controller_manager/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "7aadbd43094407f5847c4ee805b04d3bae6134877d2563b8aba9a64d87aa99fc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_controller_manager package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
