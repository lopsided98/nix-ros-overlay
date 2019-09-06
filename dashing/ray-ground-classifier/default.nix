
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, lidar-utils, autoware-auto-cmake, autoware-auto-algorithm }:
buildRosPackage rec {
  pname = "ros-dashing-ray-ground-classifier";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/ray_ground_classifier/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "5c7bef7ebda83c9d93d1987bc56a3f0c15766e2d9f3e21a859c35502c19ad53d";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-auto-algorithm lidar-utils ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ autoware-auto-algorithm lidar-utils ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''an implementation of a ray ground filter'';
    license = with lib.licenses; [ asl20 ];
  };
}
