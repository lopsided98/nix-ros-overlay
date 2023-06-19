
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-hoofs }:
buildRosPackage {
  pname = "ros-iron-iceoryx-posh";
  version = "2.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/iron/iceoryx_posh/2.0.3-5.tar.gz";
    name = "2.0.3-5.tar.gz";
    sha256 = "23822dcae8631737ad868af499c8c7d4413b85fcfcb8da8215b45f537bafc48a";
  };

  buildType = "cmake";
  buildInputs = [ cmake git ];
  propagatedBuildInputs = [ iceoryx-hoofs ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware Posix Shared Memory Library and middleware daemon (RouDi)'';
    license = with lib.licenses; [ asl20 ];
  };
}
