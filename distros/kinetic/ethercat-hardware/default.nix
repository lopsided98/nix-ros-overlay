
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, eml, log4cxx, message-generation, message-runtime, pluginlib, pr2-hardware-interface, pr2-msgs, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ethercat-hardware";
  version = "1.8.18-r1";

  src = fetchurl {
    url = "https://github.com/PR2-prime/pr2_ethercat_drivers-release/archive/release/kinetic/ethercat_hardware/1.8.18-1.tar.gz";
    name = "1.8.18-1.tar.gz";
    sha256 = "cfeb3b7a7a44fd0c5d617e03fb7b1a5ca49320c94b236fb32bcbf23383963378";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater eml log4cxx message-runtime pluginlib pr2-hardware-interface pr2-msgs realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for creating a hardware interface to the robot using the EtherCAT motor controller/driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
