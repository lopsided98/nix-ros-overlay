
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, pcl }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-sdf";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_sdf/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "9e052ef27becdc91f120bd5a280cf4d050f8586480fa07c7d5e03101b49fb627";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-core pcl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generates signed distance fields from grid maps.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
