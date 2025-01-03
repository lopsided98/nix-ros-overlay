
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-light, cob-msgs, cob-script-server, diagnostic-msgs, diagnostic-updater, ifstat-legacy, ipmitool, ntp, python3Packages, roscpp, rospy, rostopic, sensor-msgs, std-msgs, sysstat, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-cob-monitoring";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_monitoring/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "f05614611bce588fa98010b0c8ccc6da1393b849a77cbc63c6eb5b7b32ee35cc";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ actionlib cob-light cob-msgs cob-script-server diagnostic-msgs diagnostic-updater ifstat-legacy ipmitool ntp python3Packages.mechanize python3Packages.packaging python3Packages.paramiko python3Packages.psutil python3Packages.requests roscpp rospy rostopic sensor-msgs std-msgs sysstat topic-tools ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "cob_monitoring";
    license = with lib.licenses; [ asl20 ];
  };
}
