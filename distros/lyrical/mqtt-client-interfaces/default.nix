
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mqtt-client-interfaces";
  version = "2.4.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/lyrical/mqtt_client_interfaces/2.4.2-2.tar.gz";
    name = "2.4.2-2.tar.gz";
    sha256 = "b38f28de9b8206e9f8228400a1a9ecec9760af177e66c52961821fb65687d176";
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
