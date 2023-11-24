
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, clearpath-mission-manager-msgs, clearpath-navigation-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-mission-scheduler-msgs";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_mission_scheduler_msgs/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "cf4bb72cd10188db0765247b79ac7adf09ab3905b4fb655fee22833b2fdfa1cd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs clearpath-mission-manager-msgs clearpath-navigation-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The clearpath_mission_scheduler_msgs package'';
    license = with lib.licenses; [ "Clearpath-Proprietary" ];
  };
}
