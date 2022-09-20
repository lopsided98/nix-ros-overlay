
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-smach-msgs";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/noetic/smach_msgs/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "d1c9f8fe63b55bc6eae336803b302e2fe633207190ae0acbe9dad7937f06ee09";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''this package contains a set of messages that are used by the introspection
    interfaces for smach.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
