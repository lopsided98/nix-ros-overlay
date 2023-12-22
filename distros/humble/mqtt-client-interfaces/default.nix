
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mqtt-client-interfaces";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/humble/mqtt_client_interfaces/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "0c250c21ab149d4801d3ea6c5b43f062a532c70ce793df25d10425d85f44f0e9";
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
