
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-arbotix-msgs";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/melodic/arbotix_msgs/0.10.0-0.tar.gz;
    sha256 = "4c30092a42cad55c7ed008b877d72fa55f90fd899352daa35e4e1bf64797c092";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Messages and Services definitions for the ArbotiX.'';
    #license = lib.licenses.BSD;
  };
}
