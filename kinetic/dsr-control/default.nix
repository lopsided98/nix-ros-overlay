
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, dsr-msgs, hardware-interface, roscpp, serial }:
buildRosPackage {
  pname = "ros-kinetic-dsr-control";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/dsr_control/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "cdb6f78764d399472a2139edb38172a40d35e2d597b476583365f1247325f0c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager dsr-msgs hardware-interface roscpp serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dsr_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
