
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-tf2-eigen";
  version = "0.25.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_eigen/0.25.7-1.tar.gz";
    name = "0.25.7-1.tar.gz";
    sha256 = "2395563b6212ea167eb7680f3eabbe8b853925c60e70df36f611f42fb63be3f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen geometry-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "tf2_eigen";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
