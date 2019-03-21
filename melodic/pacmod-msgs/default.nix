
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-pacmod-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/pacmod_msgs/2.3.1-0.tar.gz;
    sha256 = "cfdcb09b275da8304f367682c9d46fb3f02008e741a8634b67fd235f443c0a08";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Message definition files for the PACMod driver'';
    #license = lib.licenses.MIT;
  };
}
