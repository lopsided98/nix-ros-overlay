
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-cras-lint";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/jazzy/cras_lint/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "13ccf847f286b7911fdb6a68ddea46c17d867698524be4893fd0c566673609fd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "Various utilities to work with bag files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
