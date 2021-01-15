
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-actionlib-tutorials";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/actionlib_tutorials/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "a6427b547fe2c4e026fc4dc52b7ed53c4d21a104cd5c9839274022385540c835";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs message-generation std-msgs ];
  propagatedBuildInputs = [ actionlib message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
