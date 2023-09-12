
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-foxy-paho-mqtt-c";
  version = "1.3.12-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/paho.mqtt.c-release/archive/release/foxy/paho-mqtt-c/1.3.12-1.tar.gz";
    name = "1.3.12-1.tar.gz";
    sha256 = "283ed56423ccab613b0f657ba08dd8ec451c59be78b3e310a1180df1346d44a4";
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
