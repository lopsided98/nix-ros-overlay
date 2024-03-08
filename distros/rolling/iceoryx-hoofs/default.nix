
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-hoofs";
  version = "2.0.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_hoofs/2.0.5-4.tar.gz";
    name = "2.0.5-4.tar.gz";
    sha256 = "b0485194d694970b13fe9a0dd6770effed6f27fd88ac5d6ed2c40dafbe8001d9";
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
