
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl, paho-mqtt-c }:
buildRosPackage {
  pname = "ros-galactic-paho-mqtt-cpp";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.cpp-release/archive/release/galactic/paho-mqtt-cpp/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "415eac652bcfa00e8a8d22efe1d165303c7e0a407d530ac479a7c6615aeb3af0";
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
