
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, sensor-msgs, xacro, fzi-icl-core, joint-limits-interface, controller-manager, urdf, std-msgs, std-srvs, hardware-interface, catkin, robot-state-publisher, fzi-icl-can, actionlib, ros-controllers, roscpp, message-generation, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-schunk-canopen-driver";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_canopen_driver-release/archive/release/kinetic/schunk_canopen_driver/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "7f759e22ba5437b68850346429aa1b4bc1b6cb25252c1a571bb50c12f1ae7060";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs fzi-icl-core controller-manager urdf hardware-interface std-msgs std-srvs fzi-icl-can actionlib joint-limits-interface roscpp message-generation control-msgs ];
  propagatedBuildInputs = [ sensor-msgs xacro fzi-icl-core controller-manager urdf robot-state-publisher std-msgs std-srvs hardware-interface actionlib fzi-icl-can joint-limits-interface ros-controllers roscpp message-runtime control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The schunk_canopen_driver package'';
    license = with lib.licenses; [ "FZI all rights reserved" ];
  };
}
