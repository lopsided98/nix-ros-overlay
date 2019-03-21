
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-hardware-interface, pluginlib, eml, realtime-tools, catkin, tinyxml, diagnostic-updater, message-generation, message-runtime, diagnostic-msgs, pr2-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-melodic-ethercat-hardware";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/melodic/ethercat_hardware/1.8.18-0.tar.gz;
    sha256 = "43368d575a4d0b4f58a1e1896649012df83ba25fa63311ce42e26f5032d767f6";
  };

  propagatedBuildInputs = [ pr2-hardware-interface pluginlib eml realtime-tools tinyxml diagnostic-updater message-runtime diagnostic-msgs pr2-msgs roscpp log4cxx ];
  nativeBuildInputs = [ pr2-hardware-interface pluginlib eml realtime-tools catkin tinyxml diagnostic-updater message-generation diagnostic-msgs pr2-msgs roscpp log4cxx ];

  meta = {
    description = ''Package for creating a hardware interface to the robot using the EtherCAT motor controller/driver'';
    #license = lib.licenses.BSD;
  };
}
