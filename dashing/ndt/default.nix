
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, localization-common, optimization, lidar-utils, sensor-msgs, ament-cmake-gtest, eigen, ament-lint-auto, autoware-auto-cmake, geometry-msgs, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-ndt";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/ndt/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "f50880b0376030cc2bd130c751712223a05512b4c6a5146b300c601f9477674d";
  };

  buildType = "ament_cmake";
  buildInputs = [ localization-common optimization geometry-msgs sensor-msgs eigen lidar-utils ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest osrf-testing-tools-cpp ament-lint-common ];
  propagatedBuildInputs = [ localization-common optimization geometry-msgs sensor-msgs eigen lidar-utils ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Implementation of ndt localization'';
    license = with lib.licenses; [ asl20 ];
  };
}
