
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-iceoryx-hoofs";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/jazzy/iceoryx_hoofs/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "8be8347fd96ce64f0215f3705cbbadc10e0deba85ca3a13df559d1f1d2bfc056";
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
