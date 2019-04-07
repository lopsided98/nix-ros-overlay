
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, move-base-msgs, actionlib, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lost-comms-recovery";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/danielsnider/lost_comms_recovery-release/archive/release/kinetic/lost_comms_recovery/0.1.0-0.tar.gz;
    sha256 = "faff7f1c50aa083d57a091bb6c229b2522293fda9df8c9a2c78dce4705755623";
  };

  buildInputs = [ move-base-msgs actionlib actionlib-msgs rospy sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ move-base-msgs actionlib actionlib-msgs rospy sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''If your robot loses connection to the base station it will stop motors or navigate home.'';
    #license = lib.licenses.Unlicense;
  };
}
