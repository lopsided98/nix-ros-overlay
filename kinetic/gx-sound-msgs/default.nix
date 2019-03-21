
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, actionlib-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gx-sound-msgs";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/groove-x/gx_sound-release/archive/release/kinetic/gx_sound_msgs/0.2.2-0.tar.gz;
    sha256 = "834fc3c54921a462d9a0be0357dd5bac2de11b3b6583b46cd89cc1109c07242e";
  };

  propagatedBuildInputs = [ actionlib-msgs ];
  nativeBuildInputs = [ catkin message-generation actionlib-msgs ];

  meta = {
    description = ''The gx_sound_msgs package'';
    #license = lib.licenses.BSD;
  };
}
