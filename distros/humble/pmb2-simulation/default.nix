
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pmb2-gazebo }:
buildRosPackage {
  pname = "ros-humble-pmb2-simulation";
  version = "4.9.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-release/archive/release/humble/pmb2_simulation/4.9.1-1.tar.gz";
    name = "4.9.1-1.tar.gz";
    sha256 = "1a3093cd87f60b56478c0bf4f9a67a8f06c3ee49285a41a05f374177a2ba94ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pmb2-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PMB2-specific simulation components. These include plugins
               and launch scripts necessary for running PMB2 in simulation.";
    license = with lib.licenses; [ asl20 ];
  };
}
