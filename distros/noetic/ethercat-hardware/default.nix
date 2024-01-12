
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, eml, log4cxx, message-generation, message-runtime, pluginlib, pr2-hardware-interface, pr2-msgs, realtime-tools, roscpp, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-ethercat-hardware";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/noetic/ethercat_hardware/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "3371eebcc2688f122467e861a6ca78f6a7c29d68013ee3e0f3ea8ebac7f9e879";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater eml log4cxx message-runtime pluginlib pr2-hardware-interface pr2-msgs realtime-tools roscpp tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for creating a hardware interface to the robot using the EtherCAT motor controller/driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
