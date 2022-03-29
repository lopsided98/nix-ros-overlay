
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-noetic-paho-mqtt-c";
  version = "1.3.9-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/noetic/paho-mqtt-c/1.3.9-1.tar.gz";
    name = "1.3.9-1.tar.gz";
    sha256 = "b6e040899f9a5520d8bef21744a8d721c9800c5adb553c1742da104328ef652b";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Paho C Client Library for the MQTT Protocol'';
    license = with lib.licenses; [ "EPL-2.0" ];
  };
}
