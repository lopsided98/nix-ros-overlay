
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-iceoryx-hoofs";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/lyrical/iceoryx_hoofs/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "8cd9c623daf5dc8f9b68f5668e74e8342dc1e5c428c8c8f52fd13fad54c2257e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ acl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware basic building blocks";
    license = with lib.licenses; [ asl20 ];
  };
}
