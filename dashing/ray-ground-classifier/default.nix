
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, ament-lint-auto, autoware-auto-algorithm, autoware-auto-cmake, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-ray-ground-classifier";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/ray_ground_classifier/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "62422c6d217df7acf0b72cc00519e2902a352c3df2f8c95bc39205bef957cb9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-auto-algorithm lidar-utils ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ autoware-auto-algorithm lidar-utils ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''an implementation of a ray ground filter'';
    license = with lib.licenses; [ asl20 ];
  };
}
