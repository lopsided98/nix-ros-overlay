
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-humble-iceoryx-hoofs";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/humble/iceoryx_hoofs/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "5bf45b5391d460f0c9895ef39cbe49f12390a16eaee26a70c2ca2d13b3a99722";
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
