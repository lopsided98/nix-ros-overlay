
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, tf2, ament-lint-auto, autoware-auto-cmake, geometry-msgs, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-localization-common";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/localization_common/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "03fce843ec7e263f7bb29438029c3319708ef0ecebffa3744001a9c089fa17e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2 geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest osrf-testing-tools-cpp ament-lint-common ];
  propagatedBuildInputs = [ tf2 geometry-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Contains common functionality and interfaces for localizer implementations'';
    license = with lib.licenses; [ asl20 ];
  };
}
