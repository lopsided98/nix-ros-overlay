
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-kartech-linear-actuator-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/kartech_linear_actuator_msgs/2.3.1-0.tar.gz;
    sha256 = "be518d78afb13fdaac8bdaf0da50fcafa371660bfe03e81c4e5e231d88732d5c";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The kartech_linear_actuator_msgs package'';
    #license = lib.licenses.MIT;
  };
}
