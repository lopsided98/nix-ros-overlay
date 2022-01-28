
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-light, cob-msgs, cob-script-server, diagnostic-msgs, diagnostic-updater, ifstat-legacy, ipmitool, ntp, python3Packages, roscpp, rospy, rostopic, sensor-msgs, std-msgs, sysstat, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-cob-monitoring";
  version = "0.6.27-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_monitoring/0.6.27-1.tar.gz";
    name = "0.6.27-1.tar.gz";
    sha256 = "916ec5d5c53e4b34e52a2980483caa5b873d686fc750c450fb221bb0a64ed2ca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cob-light cob-msgs cob-script-server diagnostic-msgs diagnostic-updater ifstat-legacy ipmitool ntp python3Packages.paramiko python3Packages.psutil python3Packages.requests roscpp rospy rostopic sensor-msgs std-msgs sysstat topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_monitoring'';
    license = with lib.licenses; [ asl20 ];
  };
}
