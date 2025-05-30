
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-mqtt-client-interfaces";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/kilted/mqtt_client_interfaces/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "7078072b1a77cc7b1188243fb56c79601405330ded4c06a71ec8259a9eecf531";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Message and service definitions for mqtt_client";
    license = with lib.licenses; [ mit ];
  };
}
