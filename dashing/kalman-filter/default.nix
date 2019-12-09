
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, motion-model, ament-cmake, autoware-auto-cmake, eigen, ament-cmake-gtest, osrf-testing-tools-cpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-kalman-filter";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/kalman_filter/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "1266802a96c358c09b6db093f566f8b4a905efb594af67201b833b176ddcf6d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen motion-model ];
  checkInputs = [ ament-lint-auto osrf-testing-tools-cpp ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ eigen motion-model ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''an implementation of square root covariance filtering (carlson-schmidt) for probabilistic state estimation'';
    license = with lib.licenses; [ asl20 ];
  };
}
