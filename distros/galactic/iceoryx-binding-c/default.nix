
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-posh, iceoryx-utils }:
buildRosPackage {
  pname = "ros-galactic-iceoryx-binding-c";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/galactic/iceoryx_binding_c/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "a70c36142dc8d16509aec92c184790ee6e6715461719d74763b4ca1fe6f67509";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-posh iceoryx-utils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding'';
    license = with lib.licenses; [ asl20 ];
  };
}
