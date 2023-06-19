
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-iron-iceoryx-hoofs";
  version = "2.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/iron/iceoryx_hoofs/2.0.3-5.tar.gz";
    name = "2.0.3-5.tar.gz";
    sha256 = "630dbca759e310dc495f3cc5cb7ae8c49679f07b5f853a914b714f3e0effb9ab";
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
