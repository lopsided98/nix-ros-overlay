
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-hoofs";
  version = "2.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_hoofs/2.0.5-3.tar.gz";
    name = "2.0.5-3.tar.gz";
    sha256 = "951ad8d2ab600580f5b8fb525cd479ef0b8a2126597576eb34bd87f1cb047935";
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
