
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mqtt-client-interfaces";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/humble/mqtt_client_interfaces/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "d643dc4827138e68c0b0ed5c67a820232c27d445252c81b862f499ab235c5634";
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
