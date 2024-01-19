
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-iron-iceoryx-hoofs";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/iron/iceoryx_hoofs/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "547cd7dd9ebe640f7dd55ab87a1ab9fd8f7e89bfe13cbe7e93f06cc69ca189df";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ acl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware basic building blocks'';
    license = with lib.licenses; [ asl20 ];
  };
}
