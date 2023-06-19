
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-mqtt-client-interfaces";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/rolling/mqtt_client_interfaces/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "17d6c7a53e6f01161d685f64a26da2bc7e9161d82d3e209f7968212d3d103cb8";
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
