
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, catkin, cmake, eigen }:
buildRosPackage {
  pname = "ros-melodic-libfranka";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/melodic/libfranka/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "1494bbb0fa5f713ad3895f519abb23cf2bbb6a6fddd95cfbf88e7319a1e4688e";
  };

  buildType = "cmake";
  buildInputs = [ poco eigen ];
  propagatedBuildInputs = [ poco catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libfranka is a C++ library for Franka Emika research robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
