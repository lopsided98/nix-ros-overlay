
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, catkin, message-generation, radar-msgs, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-derived-object-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/derived_object_msgs/2.3.1-0.tar.gz;
    sha256 = "5b5450bf1c0968aa5b7f6190cb26b07b11563d0041e410d322ceff66567b5a23";
  };

  propagatedBuildInputs = [ shape-msgs radar-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ shape-msgs message-generation radar-msgs std-msgs catkin geometry-msgs ];

  meta = {
    description = ''Abstracted Messages from Perception Modalities'';
    #license = lib.licenses.MIT;
  };
}
