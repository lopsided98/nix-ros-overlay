
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, nav-msgs, roscpp, rosgraph-msgs, rospy, sensor-msgs, std-srvs, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-cob-hardware-emulation";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_hardware_emulation/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "b0db4c0d61a5bd25a477eab1a50b21bc45d23c9ade3d95fd938b8449f415b4bd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs nav-msgs roscpp rosgraph-msgs rospy sensor-msgs std-srvs tf-conversions tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hardware_emulation package provides idealized nodes emulating real robot hardware and/or physics simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
