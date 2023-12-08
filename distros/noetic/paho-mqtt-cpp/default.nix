
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl, paho-mqtt-c }:
buildRosPackage {
  pname = "ros-noetic-paho-mqtt-cpp";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.cpp-release/archive/release/noetic/paho-mqtt-cpp/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "65a0282890c8f752dd1a7a41af0173b0f2256d825fa12e1608a3c1aea5540249";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ openssl paho-mqtt-c ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Paho MQTT C++ Client Library'';
    license = with lib.licenses; [ "Eclipse-Public-License-v-1.0" ];
  };
}
