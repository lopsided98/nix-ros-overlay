
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-ur-msgs";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_msgs/1.2.1-0.tar.gz;
    sha256 = "748c1f696a6d22015341e8595dfbe321f2f4d9196f705be1c2f184c99c1920ab";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''The ur_msgs package'';
    #license = lib.licenses.BSD;
  };
}
