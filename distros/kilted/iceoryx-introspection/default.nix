
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, ncurses }:
buildRosPackage {
  pname = "ros-kilted-iceoryx-introspection";
  version = "2.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/kilted/iceoryx_introspection/2.0.5-6.tar.gz";
    name = "2.0.5-6.tar.gz";
    sha256 = "46b183a8807dfca6e34c85e3a22537d6f51b09539c04958fd68d27cd8b341cb6";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ iceoryx-hoofs iceoryx-posh ncurses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware introspection client";
    license = with lib.licenses; [ asl20 ];
  };
}
