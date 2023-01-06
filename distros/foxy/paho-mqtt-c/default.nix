
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-foxy-paho-mqtt-c";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/foxy/paho-mqtt-c/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "dfa91d1d2890fa10378f9fe24f53212b29e574d4113ad191eb91c1cbe0afb2e0";
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
