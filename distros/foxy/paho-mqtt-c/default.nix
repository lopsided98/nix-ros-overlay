
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-foxy-paho-mqtt-c";
  version = "1.3.9-r4";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/foxy/paho-mqtt-c/1.3.9-4.tar.gz";
    name = "1.3.9-4.tar.gz";
    sha256 = "f90130ac18196616adc1a44fc5a611de0e7229714c4f4436b97cc62a45e9bb1d";
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
