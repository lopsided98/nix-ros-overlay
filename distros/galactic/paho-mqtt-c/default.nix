
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-galactic-paho-mqtt-c";
  version = "1.3.9-r3";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/galactic/paho-mqtt-c/1.3.9-3.tar.gz";
    name = "1.3.9-3.tar.gz";
    sha256 = "b4b2e2af11a7f3eef5e150ea64958d0e37e06f3016565d2c49fd1bc460604347";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Paho C Client Library for the MQTT Protocol'';
    license = with lib.licenses; [ "EPL-2.0" ];
  };
}
