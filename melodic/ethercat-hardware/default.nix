
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, diagnostic-msgs, pr2-msgs, pluginlib, catkin, tinyxml, eml, realtime-tools, roscpp, pr2-hardware-interface, message-runtime, log4cxx, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-ethercat-hardware";
  version = "1.8.19-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/melodic/ethercat_hardware/1.8.19-1.tar.gz";
    name = "1.8.19-1.tar.gz";
    sha256 = "b2d0eea54e31386b19e79f7929b0885f1e5402b3c0efaafe70267bc5c51dbbfc";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs pr2-msgs pluginlib tinyxml eml realtime-tools roscpp pr2-hardware-interface message-generation log4cxx diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-msgs pluginlib tinyxml eml realtime-tools roscpp pr2-hardware-interface message-runtime log4cxx diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for creating a hardware interface to the robot using the EtherCAT motor controller/driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
