
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-mqtt-client-interfaces";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/iron/mqtt_client_interfaces/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "3de58da4fefce744246f7614d79f944cd98db37775c2993f96a424dbe607b0b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message and service definitions for mqtt_client'';
    license = with lib.licenses; [ mit ];
  };
}
