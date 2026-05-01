
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mqtt-client-interfaces";
  version = "2.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/lyrical/mqtt_client_interfaces/2.4.1-4.tar.gz";
    name = "2.4.1-4.tar.gz";
    sha256 = "5be89fa10bfcec4c683680e71a6d306aaf61ce1bd5c2ef5dc7c0513cc63bb375";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Message and service definitions for mqtt_client";
    license = with lib.licenses; [ mit ];
  };
}
