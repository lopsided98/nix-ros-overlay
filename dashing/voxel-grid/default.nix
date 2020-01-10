
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, geometry-msgs, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-voxel-grid";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/voxel_grid/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "47966ef7f873e517e966fead87bd0a531e0c315f2067687e8466a061bf86f519";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs lidar-utils ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''voxel grid filters'';
    license = with lib.licenses; [ asl20 ];
  };
}
