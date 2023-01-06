
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-simulation";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_simulation/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "e7aa5db9bc41a3394ad2ee514b60af9d6ab6f8ed9cc2d25de217031283762c9b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The tiago_simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
