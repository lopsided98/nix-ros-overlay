
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client-interfaces";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client_interfaces/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "6675f85695f6ea7aaaa39113e986e088bf53b0c9d03379034268bfc7c1c470a3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service definitions for mqtt_client'';
    license = with lib.licenses; [ mit ];
  };
}
