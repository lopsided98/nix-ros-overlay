
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pmb2-2dnav, pmb2-gazebo }:
buildRosPackage {
  pname = "ros-foxy-pmb2-2dnav-gazebo";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-gbp/archive/release/foxy/pmb2_2dnav_gazebo/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "56118dc7d7b3b94c719e39cadd23a7d26eac0a31b4e2c285505dcb939b5d9c36";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pmb2-2dnav pmb2-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PMB2-specific launch files needed to run
    navigation on the PMB2 robot.'';
    license = with lib.licenses; [ "Modified BSD" ];
  };
}
