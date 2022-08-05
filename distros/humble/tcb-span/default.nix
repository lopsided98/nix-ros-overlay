
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-tcb-span";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/tcb_span/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "551e6448b7fa74dae6c2d8b52a0f898c9d3f699d1c249c6ba03cf91a3c222397";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Implementation of C++20's std::span'';
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
