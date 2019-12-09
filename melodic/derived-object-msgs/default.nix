
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, shape-msgs, message-generation, radar-msgs }:
buildRosPackage {
  pname = "ros-melodic-derived-object-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/derived_object_msgs/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "5b5450bf1c0968aa5b7f6190cb26b07b11563d0041e410d322ceff66567b5a23";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs shape-msgs message-generation radar-msgs ];
  propagatedBuildInputs = [ geometry-msgs std-msgs shape-msgs message-runtime radar-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Abstracted Messages from Perception Modalities'';
    license = with lib.licenses; [ mit ];
  };
}
