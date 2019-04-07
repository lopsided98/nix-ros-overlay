
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-ibeo-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/ibeo_msgs/2.3.1-0.tar.gz;
    sha256 = "d7a7ce5b115b598b1dcf4d4ac30d909de6db7e5577a770410d9629a0fe414f13";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for Ibeo sensors.'';
    #license = lib.licenses.MIT;
  };
}
