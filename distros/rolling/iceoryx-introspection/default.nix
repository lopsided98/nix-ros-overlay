
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, ncurses }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-introspection";
  version = "2.0.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_introspection/2.0.5-5.tar.gz";
    name = "2.0.5-5.tar.gz";
    sha256 = "c88c228b308e9e4e2b8920a186a4fa6a61956bd8c12b0e380ee24771260c7db2";
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
