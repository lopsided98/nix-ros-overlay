
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mqtt-client-interfaces";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/jazzy/mqtt_client_interfaces/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "77a40784b97bf2bc375eb4fb9282932e4451da527d554c2fbac83e519d14d3c4";
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
