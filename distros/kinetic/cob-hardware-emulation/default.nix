
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, nav-msgs, roscpp, rosgraph-msgs, rospy, sensor-msgs, std-srvs, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-cob-hardware-emulation";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_hardware_emulation/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "c089b756844c00d5f08928b0820652b52962a8d4f61fa784ff75b3818d567d7a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs nav-msgs roscpp rosgraph-msgs rospy sensor-msgs std-srvs tf-conversions tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hardware_emulation package provides idealized nodes emulating real robot hardware and/or physics simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
