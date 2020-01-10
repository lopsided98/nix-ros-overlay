
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, radar-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-derived-object-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/derived_object_msgs/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "2ba5578684d5935fd014c0fc4d933682117740f20acc62f7c8d5f00b398f20f2";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime radar-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Abstracted Messages from Perception Modalities'';
    license = with lib.licenses; [ mit ];
  };
}
