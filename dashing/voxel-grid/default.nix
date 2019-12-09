
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, lidar-utils, ament-lint-common, ament-cmake, ament-lint-auto, autoware-auto-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-voxel-grid";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/voxel_grid/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "47966ef7f873e517e966fead87bd0a531e0c315f2067687e8466a061bf86f519";
  };

  buildType = "ament_cmake";
  buildInputs = [ lidar-utils geometry-msgs ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ lidar-utils geometry-msgs ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''voxel grid filters'';
    license = with lib.licenses; [ asl20 ];
  };
}
