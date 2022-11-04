
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, pmb2-2dnav, pmb2-gazebo }:
buildRosPackage {
  pname = "ros-humble-pmb2-2dnav-gazebo";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-gbp/archive/release/humble/pmb2_2dnav_gazebo/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "8b45c571f1b7ae8af09a2e6df358b9e8ee67a7063c1b95ee1f4d7a3e8175e1a9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal pmb2-2dnav pmb2-gazebo ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2-specific launch files needed to run
    navigation on the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
