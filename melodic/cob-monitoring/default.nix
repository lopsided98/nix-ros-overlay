
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ntp, diagnostic-msgs, cob-msgs, ifstat-legacy, std-msgs, ipmitool, catkin, pythonPackages, actionlib, rostopic, sysstat, roscpp, topic-tools, rospy, cob-light, cob-script-server, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-cob-monitoring";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_monitoring/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "7f458dc0a7d3897c31208791af38a6d966233ca1bdabd2d6a4af229d09d03660";
  };

  buildType = "catkin";
  buildInputs = [ topic-tools roscpp diagnostic-updater ];
  propagatedBuildInputs = [ cob-msgs pythonPackages.mechanize pythonPackages.paramiko sensor-msgs diagnostic-msgs rostopic ntp std-msgs roscpp topic-tools rospy cob-light cob-script-server ifstat-legacy ipmitool actionlib pythonPackages.requests sysstat diagnostic-updater pythonPackages.psutil ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_monitoring'';
    license = with lib.licenses; [ asl20 ];
  };
}
