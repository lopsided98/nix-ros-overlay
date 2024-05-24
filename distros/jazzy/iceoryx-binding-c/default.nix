
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-jazzy-iceoryx-binding-c";
  version = "2.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/jazzy/iceoryx_binding_c/2.0.5-6.tar.gz";
    name = "2.0.5-6.tar.gz";
    sha256 = "49b220be272493c623c8643f362ba6ed5ba8179f6e2a1cbc33b6f499b591bb0e";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding";
    license = with lib.licenses; [ asl20 ];
  };
}
