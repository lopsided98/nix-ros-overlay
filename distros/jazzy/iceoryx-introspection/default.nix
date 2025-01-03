
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, ncurses }:
buildRosPackage {
  pname = "ros-jazzy-iceoryx-introspection";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/jazzy/iceoryx_introspection/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "0c3e649143bcffb92d94b27094267064c2592fcdcb0cb47e613fe044ffbe69de";
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
