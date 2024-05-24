
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-iceoryx-hoofs";
  version = "2.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/jazzy/iceoryx_hoofs/2.0.5-6.tar.gz";
    name = "2.0.5-6.tar.gz";
    sha256 = "ec9983a91302deec3a44a8ed6d6a28ce5308d4ca57b6b24b87ef3f3ed72656ee";
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
