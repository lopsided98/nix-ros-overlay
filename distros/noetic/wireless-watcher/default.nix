
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, wireless-msgs }:
buildRosPackage {
  pname = "ros-noetic-wireless-watcher";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/noetic/wireless_watcher/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "c3a1b64ac33660df0fd8becf86c5207e081d8c3c4c74ae7185b6568663cd8117";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy wireless-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python-based which publishes connection information about a linux wireless interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
