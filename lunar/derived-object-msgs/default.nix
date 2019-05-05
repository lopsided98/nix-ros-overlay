
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, catkin, message-generation, radar-msgs, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-derived-object-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/lunar/derived_object_msgs/2.3.1-0.tar.gz;
    sha256 = "132152691ef746caa9e73c262ab493490a231bf8616300b0cf287c9c9937320b";
  };

  buildInputs = [ shape-msgs message-generation radar-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs radar-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Abstracted Messages from Perception Modalities'';
    license = with lib.licenses; [ mit ];
  };
}
