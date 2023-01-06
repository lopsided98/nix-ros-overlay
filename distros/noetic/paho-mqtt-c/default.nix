
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-noetic-paho-mqtt-c";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/noetic/paho-mqtt-c/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "ac047afc17c08dcab54263ec0206bc379e1abe564eab1ac859fe2debb66128ac";
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
