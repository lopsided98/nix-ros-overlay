
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, ncurses }:
buildRosPackage {
  pname = "ros-lyrical-iceoryx-introspection";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/lyrical/iceoryx_introspection/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "e209445d15f5b9d165d99c5229ab9ebbdfcdb037caf7f080e861853cb2498445";
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
