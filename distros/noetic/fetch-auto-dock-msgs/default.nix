
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-fetch-auto-dock-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_msgs-release/archive/release/noetic/fetch_auto_dock_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "07d675e227e9e0a6143af6c101cfc62d0bb4b0907e07f8143bba2fa148a67cb2";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for fetch_auto_dock package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
