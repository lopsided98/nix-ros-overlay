
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-humble-iceoryx-binding-c";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/humble/iceoryx_binding_c/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "4299edb4d8162bde37c309ad40fa6ca5faedb7e17a70b1053ad48bd3186e0ca9";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding'';
    license = with lib.licenses; [ asl20 ];
  };
}
