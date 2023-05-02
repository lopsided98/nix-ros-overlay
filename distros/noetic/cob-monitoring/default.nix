
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-light, cob-msgs, cob-script-server, diagnostic-msgs, diagnostic-updater, ifstat-legacy, ipmitool, ntp, python3Packages, roscpp, rospy, rostopic, sensor-msgs, std-msgs, sysstat, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-cob-monitoring";
  version = "0.6.32-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_monitoring/0.6.32-1.tar.gz";
    name = "0.6.32-1.tar.gz";
    sha256 = "25eb49463035dd9fab9f4a629e23142301ddd87d7e5a79b38f02b2e5f2596ca0";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ actionlib cob-light cob-msgs cob-script-server diagnostic-msgs diagnostic-updater ifstat-legacy ipmitool ntp python3Packages.packaging python3Packages.paramiko python3Packages.psutil python3Packages.requests roscpp rospy rostopic sensor-msgs std-msgs sysstat topic-tools ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_monitoring'';
    license = with lib.licenses; [ asl20 ];
  };
}
