
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, power-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-fetch-driver-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_msgs-release/archive/release/noetic/fetch_driver_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "83afff86291e1c3b3ffd1b96b10da679dea0bb2f4f127e456aaf7e7876bea27c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime power-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for the fetch_drivers package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
