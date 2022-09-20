
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-noetic-paho-mqtt-c";
  version = "1.3.10-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/noetic/paho-mqtt-c/1.3.10-1.tar.gz";
    name = "1.3.10-1.tar.gz";
    sha256 = "5574da546a6aca7a06e1f094fad9b9916795e98f9c1f8c93ea9c8ded6afc0976";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Paho C Client Library for the MQTT Protocol'';
    license = with lib.licenses; [ "EPL-2.0" ];
  };
}
