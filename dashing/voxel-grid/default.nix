
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-pclint, geometry-msgs, autoware-auto-cmake, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-voxel-grid";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/voxel_grid/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "0d0157f88ce309b666e9198b4aa8d7b8e255a5e7ebe354826e461873601b3ecd";
  };

  buildType = "ament_cmake";
  buildInputs = [ lidar-utils geometry-msgs ];
  checkInputs = [ ament-lint-common ament-cmake-pclint ];
  propagatedBuildInputs = [ lidar-utils geometry-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''voxel grid filters'';
    license = with lib.licenses; [ asl20 ];
  };
}
