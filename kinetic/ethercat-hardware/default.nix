
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, diagnostic-msgs, pr2-msgs, pluginlib, catkin, eml, realtime-tools, roscpp, pr2-hardware-interface, message-runtime, log4cxx, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-ethercat-hardware";
  version = "1.8.18-r1";

  src = fetchurl {
    url = "https://github.com/PR2-prime/pr2_ethercat_drivers-release/archive/release/kinetic/ethercat_hardware/1.8.18-1.tar.gz";
    name = "1.8.18-1.tar.gz";
    sha256 = "cfeb3b7a7a44fd0c5d617e03fb7b1a5ca49320c94b236fb32bcbf23383963378";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs pr2-msgs pluginlib eml realtime-tools roscpp pr2-hardware-interface message-generation log4cxx diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-msgs pluginlib eml realtime-tools roscpp pr2-hardware-interface message-runtime log4cxx diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for creating a hardware interface to the robot using the EtherCAT motor controller/driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
