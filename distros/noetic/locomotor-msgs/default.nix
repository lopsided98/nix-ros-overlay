
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-noetic-locomotor-msgs";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/locomotor_msgs/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "16aff17501fa3618374445e22d5ae689fbd4f823f8adf089a333074c0222aef6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definition for Locomotor'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
