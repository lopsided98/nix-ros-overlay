
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-lyrical-iceoryx-binding-c";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/lyrical/iceoryx_binding_c/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "e037f013fffbe2299305b1e2b76a0b2b0d27990bbb19e23ce93a022d093e5eba";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding";
    license = with lib.licenses; [ asl20 ];
  };
}
