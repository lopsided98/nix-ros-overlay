
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-hoofs }:
buildRosPackage {
  pname = "ros-lyrical-iceoryx-posh";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/lyrical/iceoryx_posh/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "5a5ffac29db99a30866b859368d04ffabc50e31bc7f526133679671afbbdd8f5";
  };

  buildType = "cmake";
  buildInputs = [ cmake git ];
  propagatedBuildInputs = [ iceoryx-hoofs ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware Posix Shared Memory Library and middleware daemon (RouDi)";
    license = with lib.licenses; [ asl20 ];
  };
}
