
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-simulation";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_simulation/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "6672e57b88b8ca0d8224fc13211e31badc417e945e228b22fb887953ae789754";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
