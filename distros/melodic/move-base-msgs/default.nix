
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-move-base-msgs";
  version = "1.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/melodic/move_base_msgs/1.14.1-1.tar.gz";
    name = "1.14.1-1.tar.gz";
    sha256 = "f221272c2819180557e5c21b79dd30f34d9ac83503595c6132f9fecc7b48cfcc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Holds the action description and relevant messages for the move_base package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
