
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-jazzy-iceoryx-binding-c";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/jazzy/iceoryx_binding_c/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "913b79d51d5c17457c75ea8dd651ddfcf88607e424590a36f5029d2c9fa9615d";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding";
    license = with lib.licenses; [ asl20 ];
  };
}
