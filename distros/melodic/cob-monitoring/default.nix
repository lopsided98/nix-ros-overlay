
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-light, cob-msgs, cob-script-server, diagnostic-msgs, diagnostic-updater, ifstat-legacy, ipmitool, ntp, pythonPackages, roscpp, rospy, rostopic, sensor-msgs, std-msgs, sysstat, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-cob-monitoring";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_monitoring/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "ad950a5720509c17f742c7738d5626b4dac69b6870baba83273f8eee5a4a8dfa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cob-light cob-msgs cob-script-server diagnostic-msgs diagnostic-updater ifstat-legacy ipmitool ntp pythonPackages.mechanize pythonPackages.paramiko pythonPackages.psutil pythonPackages.requests roscpp rospy rostopic sensor-msgs std-msgs sysstat topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_monitoring'';
    license = with lib.licenses; [ asl20 ];
  };
}
