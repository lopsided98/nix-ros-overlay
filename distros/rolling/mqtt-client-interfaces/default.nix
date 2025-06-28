
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-mqtt-client-interfaces";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/rolling/mqtt_client_interfaces/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "82547b1a1da0f2eae1bbba5ee3c9695949ed54bb03a25feed718417673ffe9e8";
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
