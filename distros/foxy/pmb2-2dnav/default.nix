
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pmb2-maps }:
buildRosPackage {
  pname = "ros-foxy-pmb2-2dnav";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/foxy/pmb2_2dnav/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "f43b4e559d4067c33fab92e1be6b98af74e55abd4f7a1030e6cd09144f0e9311";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pmb2-maps ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2-specific launch files needed to run
    navigation on the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
