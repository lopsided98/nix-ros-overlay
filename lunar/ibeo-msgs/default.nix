
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-ibeo-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/lunar/ibeo_msgs/2.3.1-0.tar.gz;
    sha256 = "5b25de7dfe975402621efc231aed1d8718661fd8f375ec6ee2c38c551c3e752b";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for Ibeo sensors.'';
    #license = lib.licenses.MIT;
  };
}
