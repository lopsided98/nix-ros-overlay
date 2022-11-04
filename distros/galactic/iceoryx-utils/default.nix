
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-galactic-iceoryx-utils";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/galactic/iceoryx_utils/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "e46ba80b20244c20e6ff3a40487ca30fc997c1cd74ee69e246f61db7f485f501";
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
