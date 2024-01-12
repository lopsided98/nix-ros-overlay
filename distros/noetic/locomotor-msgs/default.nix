
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-noetic-locomotor-msgs";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/locomotor_msgs/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "090e71c23ac44da88b614d2cd37c5daab2bacfb1a69a3a62e109d7abc7d1e46a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definition for Locomotor'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
