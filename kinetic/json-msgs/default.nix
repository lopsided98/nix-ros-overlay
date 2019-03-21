
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-json-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/locusrobotics/json_transport-release/archive/release/kinetic/json_msgs/0.0.1-0.tar.gz;
    sha256 = "5d9f8770eb2fafa195087500bee956ea5c0b3f5c120a9b8ad54bebbf4fe8d298";
  };

  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''JSON ROS message'';
    #license = lib.licenses.BSD;
  };
}
