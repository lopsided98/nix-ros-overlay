
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-kilted-iceoryx-hoofs";
  version = "2.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/kilted/iceoryx_hoofs/2.0.5-6.tar.gz";
    name = "2.0.5-6.tar.gz";
    sha256 = "38f263efb9a64932d01f9a186beedaa63199c629ba7750cc84612376e0abbdeb";
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
