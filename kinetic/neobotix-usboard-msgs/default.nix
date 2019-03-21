
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-neobotix-usboard-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/neobotix_usboard_msgs/2.3.1-0.tar.gz;
    sha256 = "ee1798c33b1876a8d936e8aead4a4960adffac76955c53bfda44647ad969116f";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''neobotix_usboard package'';
    #license = lib.licenses.MIT;
  };
}
