
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-hardware-interface, pluginlib, eml, realtime-tools, catkin, tinyxml, diagnostic-updater, message-generation, message-runtime, diagnostic-msgs, pr2-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-lunar-ethercat-hardware";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/lunar/ethercat_hardware/1.8.18-0.tar.gz;
    sha256 = "39f568a97a9cd4736eb449f4a6c9d66646f7cdeaa54d0ed499b2bf3b97ef2125";
  };

  buildInputs = [ pr2-hardware-interface pluginlib eml realtime-tools tinyxml diagnostic-updater message-generation diagnostic-msgs pr2-msgs roscpp log4cxx ];
  propagatedBuildInputs = [ pr2-hardware-interface pluginlib eml realtime-tools tinyxml diagnostic-updater message-runtime diagnostic-msgs pr2-msgs roscpp log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for creating a hardware interface to the robot using the EtherCAT motor controller/driver'';
    #license = lib.licenses.BSD;
  };
}
