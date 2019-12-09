
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-lint-common, ament-cmake, autoware-auto-cmake, ament-cmake-gtest, osrf-testing-tools-cpp, tf2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-localization-common";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/localization_common/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "03fce843ec7e263f7bb29438029c3319708ef0ecebffa3744001a9c089fa17e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs tf2 ];
  checkInputs = [ ament-lint-auto osrf-testing-tools-cpp ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs tf2 ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''Contains common functionality and interfaces for localizer implementations'';
    license = with lib.licenses; [ asl20 ];
  };
}
