
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, control-msgs, move-base-msgs, nav-msgs, roscpp, rosgraph-msgs, rospy, sensor-msgs, std-srvs, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-cob-hardware-emulation";
  version = "0.8.23-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_hardware_emulation/0.8.23-1.tar.gz";
    name = "0.8.23-1.tar.gz";
    sha256 = "b92a71b8c640effbdf6aa6ad994bbc0d378f988c0495d34364c6336288c1c02f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs control-msgs move-base-msgs nav-msgs roscpp rosgraph-msgs rospy sensor-msgs std-srvs tf-conversions tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_hardware_emulation package provides idealized nodes emulating real robot hardware and/or physics simulation.";
    license = with lib.licenses; [ asl20 ];
  };
}
