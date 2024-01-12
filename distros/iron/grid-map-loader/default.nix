
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-msgs, grid-map-ros }:
buildRosPackage {
  pname = "ros-iron-grid-map-loader";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/iron/grid_map_loader/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "5ad11c34dd3e9629f896b455be3f2386051f7a2004afd8622f80a96f300b68e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-msgs grid-map-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Loading and publishing grid maps from bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
