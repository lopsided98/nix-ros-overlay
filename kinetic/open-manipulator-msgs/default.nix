
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator_msgs-release/archive/release/kinetic/open_manipulator_msgs/1.0.0-0.tar.gz;
    sha256 = "56c938f226b1b0f70ca84eab221b463f90deac4719e83ffa60e83d37a55d5dc1";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Messages and services package for OpenManipulator to send information about state or pose'';
    #license = lib.licenses.Apache 2.0;
  };
}
