
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-bringup, tiago-controller-configuration, tiago-description }:
buildRosPackage {
  pname = "ros-humble-tiago-robot";
  version = "4.2.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_robot/4.2.3-1.tar.gz";
    name = "4.2.3-1.tar.gz";
    sha256 = "52343e5b72096838b3e0a34bab77cd322d0c5f07323c08c9e12999f5aaf67d27";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-bringup tiago-controller-configuration tiago-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description and controller configuration of TIAGo'';
    license = with lib.licenses; [ asl20 ];
  };
}
