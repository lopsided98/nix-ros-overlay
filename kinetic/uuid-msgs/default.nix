
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-uuid-msgs";
  version = "1.0.5";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/unique_identifier-release/archive/release/kinetic/uuid_msgs/1.0.5-0.tar.gz;
    sha256 = "48f1a7f03999df0e532ffdd6aea70920507c308c64b635cc7cf881462462534e";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for universally unique identifiers.'';
    #license = lib.licenses.BSD;
  };
}
