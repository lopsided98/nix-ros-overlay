
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, control-msgs, move-base-msgs, nav-msgs, roscpp, rosgraph-msgs, rospy, sensor-msgs, std-srvs, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-cob-hardware-emulation";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_hardware_emulation/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "0c16b318884a2493edc489bc00228e3c82f7350252dbc21f6ab27b7676ae475d";
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
