
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, ncurses }:
buildRosPackage {
  pname = "ros-iron-iceoryx-introspection";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/iron/iceoryx_introspection/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "bce2112eed3b6707a327ac6f4b827b39893e4b8897b06865c37aaadd097be4f7";
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
