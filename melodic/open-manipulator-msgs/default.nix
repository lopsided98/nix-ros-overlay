
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator_msgs-release/archive/release/melodic/open_manipulator_msgs/1.0.0-0.tar.gz;
    sha256 = "8a499c54924fdc7b81c8315d5e720e3b2179757fc5ef98e524dfef53ac9bd300";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Messages and services package for OpenManipulator to send information about state or pose'';
    #license = lib.licenses.Apache 2.0;
  };
}
