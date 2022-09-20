
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, nav-msgs, roscpp, rosgraph-msgs, rospy, sensor-msgs, std-srvs, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-hardware-emulation";
  version = "0.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_hardware_emulation/0.8.12-1.tar.gz";
    name = "0.8.12-1.tar.gz";
    sha256 = "dc242894bd6d8ddc0faa8fef2b87dbc326b68ed75580893f15c89e716e963dee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib control-msgs nav-msgs roscpp rosgraph-msgs rospy sensor-msgs std-srvs tf-conversions tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hardware_emulation package provides idealized nodes emulating real robot hardware and/or physics simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
