
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, message-generation, message-runtime, moveit-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pilz-msgs";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_msgs/0.3.6-0.tar.gz;
    sha256 = "8e497aeacf3d28ab30117d7cf62bb47734e957ff9b6e401cd7ec56c8b7736351";
  };

  buildInputs = [ genmsg message-generation moveit-msgs ];
  propagatedBuildInputs = [ moveit-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    #license = lib.licenses.Apache 2.0;
  };
}
