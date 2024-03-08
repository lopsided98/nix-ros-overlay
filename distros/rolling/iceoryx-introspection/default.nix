
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, ncurses }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-introspection";
  version = "2.0.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_introspection/2.0.5-4.tar.gz";
    name = "2.0.5-4.tar.gz";
    sha256 = "d74a7a2ec712a576d30aa04fb3f037768b3b4f8f0a485e7c27f96aca2947b1f6";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ iceoryx-hoofs iceoryx-posh ncurses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware introspection client'';
    license = with lib.licenses; [ asl20 ];
  };
}
