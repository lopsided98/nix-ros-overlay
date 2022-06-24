
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-msgs";
  version = "0.1.13-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_msgs/0.1.13-1.tar.gz";
    name = "0.1.13-1.tar.gz";
    sha256 = "84d51eba57e6ba8fc9cf7ba6488def3ccbc1e5b82f2227440f8495ca749dead4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_msgs package provides all the messages for all kind of robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
