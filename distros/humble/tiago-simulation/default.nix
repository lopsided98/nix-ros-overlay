
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-simulation";
  version = "4.8.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_simulation/4.8.0-1.tar.gz";
    name = "4.8.0-1.tar.gz";
    sha256 = "18aba13d9baa00bce2ef9026d694a77427aed8fc1304dad5cbd91431ec42c4a5";
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
