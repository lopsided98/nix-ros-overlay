
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-light, cob-msgs, cob-script-server, diagnostic-msgs, diagnostic-updater, ifstat-legacy, ipmitool, ntp, pythonPackages, roscpp, rospy, rostopic, sensor-msgs, std-msgs, sysstat, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-cob-monitoring";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_monitoring/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "013d27a21e86f1ca53d16220346bbe9899d5464aad811b5f9c91dca6a061589d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cob-light cob-msgs cob-script-server diagnostic-msgs diagnostic-updater ifstat-legacy ipmitool ntp pythonPackages.mechanize pythonPackages.paramiko pythonPackages.psutil pythonPackages.requests roscpp rospy rostopic sensor-msgs std-msgs sysstat topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_monitoring'';
    license = with lib.licenses; [ asl20 ];
  };
}
