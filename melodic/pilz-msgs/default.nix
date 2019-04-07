
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, message-generation, message-runtime, moveit-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-msgs";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_msgs/0.4.2-0.tar.gz;
    sha256 = "83d399a6e0db26ccb56590b15c3817e8b82da0d5572a0661e3852ed7d689081d";
  };

  buildInputs = [ genmsg message-generation moveit-msgs ];
  propagatedBuildInputs = [ moveit-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    #license = lib.licenses.Apache 2.0;
  };
}
