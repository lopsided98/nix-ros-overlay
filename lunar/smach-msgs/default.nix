
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-smach-msgs";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/executive_smach-release/archive/release/lunar/smach_msgs/2.0.1-0.tar.gz;
    sha256 = "c5434f699ab79f7a0ffa77e653a81de19b8238ef6e7b1adaf2a59cc08ab771f3";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''this package contains a set of messages that are used by the introspection
    interfaces for smach.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
