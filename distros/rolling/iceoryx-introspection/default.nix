
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, ncurses }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-introspection";
  version = "2.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_introspection/2.0.5-3.tar.gz";
    name = "2.0.5-3.tar.gz";
    sha256 = "5e5f45a198265d3aa65fcb9eea40ece63ebc75858e04b106a01c941f15ca02ae";
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
