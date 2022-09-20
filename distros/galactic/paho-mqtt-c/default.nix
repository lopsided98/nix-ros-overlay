
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-galactic-paho-mqtt-c";
  version = "1.3.10-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/galactic/paho-mqtt-c/1.3.10-1.tar.gz";
    name = "1.3.10-1.tar.gz";
    sha256 = "f1181f06d3b2e1a354cb4cb2bc6394531adcacb81cddd6f61f9a490bbb11efc8";
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
