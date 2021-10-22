
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pmb2-2dnav-gazebo, pmb2-gazebo }:
buildRosPackage {
  pname = "ros-foxy-pmb2-simulation";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-gbp/archive/release/foxy/pmb2_simulation/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "c27c8f87c8118b62dcd47150f7030cffa6d4b00d76029f945699dae19fb55e2d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pmb2-2dnav-gazebo pmb2-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PMB2-specific simulation components. These include plugins
               and launch scripts necessary for running PMB2 in simulation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
