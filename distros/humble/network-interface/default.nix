
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, std-msgs }:
buildRosPackage {
  pname = "ros-humble-network-interface";
  version = "2003.1.1-r2";

  src = fetchurl {
    url = "https://github.com/astuff/network_interface-release/archive/release/humble/network_interface/2003.1.1-2.tar.gz";
    name = "2003.1.1-2.tar.gz";
    sha256 = "a32a68f9a9beaed917e398348b2631bbe5491e5013a2cbb6dd6627365c6255e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Network interfaces and messages.'';
    license = with lib.licenses; [ mit ];
  };
}
