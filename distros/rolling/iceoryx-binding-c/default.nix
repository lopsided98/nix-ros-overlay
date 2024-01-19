
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-binding-c";
  version = "2.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_binding_c/2.0.5-3.tar.gz";
    name = "2.0.5-3.tar.gz";
    sha256 = "54896972fb49094eb9bc1883ab79d5093c585981e911b4f41415ede69eb2ebe9";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding'';
    license = with lib.licenses; [ asl20 ];
  };
}
