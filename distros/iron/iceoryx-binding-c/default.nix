
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-iron-iceoryx-binding-c";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/iron/iceoryx_binding_c/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "b5ecd5caf1c8361d0ae5c39f91d8894b4e06f931e7ad824f47ec626c9e645e63";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding'';
    license = with lib.licenses; [ asl20 ];
  };
}
