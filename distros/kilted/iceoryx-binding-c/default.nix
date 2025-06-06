
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-kilted-iceoryx-binding-c";
  version = "2.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/kilted/iceoryx_binding_c/2.0.5-6.tar.gz";
    name = "2.0.5-6.tar.gz";
    sha256 = "0761508751487f7731ce3236db4029514e82b0a3cd20b4b53bb97176ab87416f";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding";
    license = with lib.licenses; [ asl20 ];
  };
}
