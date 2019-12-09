
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_msgs-release/archive/release/melodic/open_manipulator_msgs/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "8a499c54924fdc7b81c8315d5e720e3b2179757fc5ef98e524dfef53ac9bd300";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and services package for OpenManipulator to send information about state or pose'';
    license = with lib.licenses; [ asl20 ];
  };
}
