
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-iron-iceoryx-binding-c";
  version = "2.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/iron/iceoryx_binding_c/2.0.3-5.tar.gz";
    name = "2.0.3-5.tar.gz";
    sha256 = "df344f1dc26afd91c9f577124fe32d465ec5501075d7313ed1224aa29adc4ce3";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding'';
    license = with lib.licenses; [ asl20 ];
  };
}
