
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-hardware-interface, pluginlib, eml, realtime-tools, catkin, tinyxml, diagnostic-updater, message-generation, message-runtime, diagnostic-msgs, pr2-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-melodic-ethercat-hardware";
  version = "1.8.19-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/melodic/ethercat_hardware/1.8.19-1.tar.gz;
    sha256 = "b2d0eea54e31386b19e79f7929b0885f1e5402b3c0efaafe70267bc5c51dbbfc";
  };

  buildInputs = [ pr2-hardware-interface pluginlib eml realtime-tools tinyxml diagnostic-updater message-generation diagnostic-msgs pr2-msgs roscpp log4cxx ];
  propagatedBuildInputs = [ pr2-hardware-interface pluginlib eml realtime-tools tinyxml diagnostic-updater message-runtime diagnostic-msgs pr2-msgs roscpp log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for creating a hardware interface to the robot using the EtherCAT motor controller/driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
