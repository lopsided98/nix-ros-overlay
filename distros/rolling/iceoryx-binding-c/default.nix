
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-binding-c";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_binding_c/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "5b4ecce5fddaf9c275836ea8f810e7f2179bdf7d4c726831975a54848b804a92";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding'';
    license = with lib.licenses; [ asl20 ];
  };
}
