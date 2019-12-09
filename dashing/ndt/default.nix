
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, optimization, lidar-utils, ament-lint-common, ament-cmake, ament-lint-auto, autoware-auto-cmake, eigen, osrf-testing-tools-cpp, localization-common, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-ndt";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/ndt/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "f50880b0376030cc2bd130c751712223a05512b4c6a5146b300c601f9477674d";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs geometry-msgs optimization lidar-utils eigen localization-common ];
  checkInputs = [ ament-lint-auto osrf-testing-tools-cpp ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs optimization lidar-utils eigen localization-common ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''Implementation of ndt localization'';
    license = with lib.licenses; [ asl20 ];
  };
}
