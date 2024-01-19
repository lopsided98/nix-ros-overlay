
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-noetic-paho-mqtt-c";
  version = "1.3.13-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/noetic/paho-mqtt-c/1.3.13-1.tar.gz";
    name = "1.3.13-1.tar.gz";
    sha256 = "d6c8a247024a82ae18c5c87835ed130d0deeb964d0caf9b49dbe581d54583058";
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
