
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-mqtt-client-interfaces";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/kilted/mqtt_client_interfaces/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "c6bb732a00e4ce11ef1c6258017a7be79ddca3bab5a44ce8c5c6b18f6c899946";
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
