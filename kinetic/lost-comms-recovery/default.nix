
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, catkin, actionlib, actionlib-msgs, rospy, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lost-comms-recovery";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/danielsnider/lost_comms_recovery-release/archive/release/kinetic/lost_comms_recovery/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "faff7f1c50aa083d57a091bb6c229b2522293fda9df8c9a2c78dce4705755623";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs actionlib actionlib-msgs rospy move-base-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs actionlib actionlib-msgs rospy move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''If your robot loses connection to the base station it will stop motors or navigate home.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
