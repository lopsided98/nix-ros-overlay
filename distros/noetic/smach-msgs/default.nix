
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-smach-msgs";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/noetic/smach_msgs/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "9be653bc2a770a5a36724c688926cfc58280e1a14139c2348ab5f81a31cdb8aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "this package contains a set of messages that are used by the introspection
    interfaces for smach.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
