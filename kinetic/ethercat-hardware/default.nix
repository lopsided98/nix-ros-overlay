
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-hardware-interface, pluginlib, eml, realtime-tools, catkin, diagnostic-updater, message-generation, message-runtime, diagnostic-msgs, pr2-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-kinetic-ethercat-hardware";
  version = "1.8.18-r1";

  src = fetchurl {
    url = https://github.com/PR2-prime/pr2_ethercat_drivers-release/archive/release/kinetic/ethercat_hardware/1.8.18-1.tar.gz;
    sha256 = "cfeb3b7a7a44fd0c5d617e03fb7b1a5ca49320c94b236fb32bcbf23383963378";
  };

  propagatedBuildInputs = [ pr2-hardware-interface pluginlib eml realtime-tools diagnostic-updater message-runtime diagnostic-msgs pr2-msgs roscpp log4cxx ];
  nativeBuildInputs = [ pr2-hardware-interface pluginlib eml realtime-tools catkin diagnostic-updater message-generation diagnostic-msgs pr2-msgs roscpp log4cxx ];

  meta = {
    description = ''Package for creating a hardware interface to the robot using the EtherCAT motor controller/driver'';
    #license = lib.licenses.BSD;
  };
}
