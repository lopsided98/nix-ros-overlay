
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-hoofs }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-posh";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_posh/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "a07b765db17858f483d8b9e529085b50646e4ce55273c15d815c6f055f406339";
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
