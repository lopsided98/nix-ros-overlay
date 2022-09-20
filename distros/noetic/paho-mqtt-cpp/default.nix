
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl, paho-mqtt-c }:
buildRosPackage {
  pname = "ros-noetic-paho-mqtt-cpp";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.cpp-release/archive/release/noetic/paho-mqtt-cpp/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "08cfe92bbf29546b435398dc32db9c53974f2d14151d188dc59113aa595af360";
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
