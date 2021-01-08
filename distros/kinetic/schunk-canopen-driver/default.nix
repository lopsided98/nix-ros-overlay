
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, controller-manager, fzi-icl-can, fzi-icl-core, hardware-interface, joint-limits-interface, message-generation, message-runtime, robot-state-publisher, ros-controllers, roscpp, sensor-msgs, std-msgs, std-srvs, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-schunk-canopen-driver";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_canopen_driver-release/archive/release/kinetic/schunk_canopen_driver/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "7f759e22ba5437b68850346429aa1b4bc1b6cb25252c1a571bb50c12f1ae7060";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib control-msgs controller-manager fzi-icl-can fzi-icl-core hardware-interface joint-limits-interface message-runtime robot-state-publisher ros-controllers roscpp sensor-msgs std-msgs std-srvs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The schunk_canopen_driver package'';
    license = with lib.licenses; [ "FZI all rights reserved" ];
  };
}
