
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, eigen, geometry-msgs, lidar-utils, localization-common, optimization, osrf-testing-tools-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-ndt";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/ndt/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "f50880b0376030cc2bd130c751712223a05512b4c6a5146b300c601f9477674d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ eigen geometry-msgs lidar-utils localization-common optimization sensor-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Implementation of ndt localization'';
    license = with lib.licenses; [ asl20 ];
  };
}
