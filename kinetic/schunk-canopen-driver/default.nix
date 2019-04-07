
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, hardware-interface, fzi-icl-core, control-msgs, joint-limits-interface, sensor-msgs, catkin, message-generation, urdf, fzi-icl-can, message-runtime, actionlib, std-msgs, robot-state-publisher, roscpp, xacro, ros-controllers }:
buildRosPackage {
  pname = "ros-kinetic-schunk-canopen-driver";
  version = "1.0.7";

  src = fetchurl {
    url = https://github.com/fzi-forschungszentrum-informatik/schunk_canopen_driver-release/archive/release/kinetic/schunk_canopen_driver/1.0.7-0.tar.gz;
    sha256 = "7f759e22ba5437b68850346429aa1b4bc1b6cb25252c1a571bb50c12f1ae7060";
  };

  buildInputs = [ controller-manager hardware-interface std-srvs fzi-icl-core control-msgs joint-limits-interface sensor-msgs message-generation urdf fzi-icl-can actionlib std-msgs roscpp ];
  propagatedBuildInputs = [ controller-manager hardware-interface std-srvs fzi-icl-core control-msgs joint-limits-interface sensor-msgs urdf message-runtime robot-state-publisher actionlib std-msgs fzi-icl-can roscpp xacro ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The schunk_canopen_driver package'';
    #license = lib.licenses.FZI all rights reserved;
  };
}
