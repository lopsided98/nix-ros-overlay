
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, ncurses }:
buildRosPackage {
  pname = "ros-humble-iceoryx-introspection";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/humble/iceoryx_introspection/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "b8ce5d4033e4301bbf7545a07022d90ef41a1479d1034a09860fbb553c3c1762";
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
