
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client-interfaces";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client_interfaces/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "82db56ee75c8d1ba5ebad5ddbc6cc51104886c3c42a5c72e84ba61f359145fa2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Message and service definitions for mqtt_client";
    license = with lib.licenses; [ mit ];
  };
}
