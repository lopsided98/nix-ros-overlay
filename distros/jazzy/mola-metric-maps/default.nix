
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, mola-common, mrpt2, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-metric-maps";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_metric_maps/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "51dd0fa36d31b85c54ae86d4b58e023285a386c6363ac6a2510420f001598c6c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Advanced metric map classes, using the generic `mrpt::maps::CMetricMap` interface, for use in other MOLA odometry and SLAM modules.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
