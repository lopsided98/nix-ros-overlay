
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-kartech-linear-actuator-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/kartech_linear_actuator_msgs/2.3.1-0.tar.gz;
    sha256 = "d6d6b78f353f2d0ac6f9a74038f2413f8afe9ed4b7977bd54280e933770eca62";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''The kartech_linear_actuator_msgs package'';
    #license = lib.licenses.MIT;
  };
}
