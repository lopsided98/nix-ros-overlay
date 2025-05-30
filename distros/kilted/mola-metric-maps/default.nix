
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, mola-common, mp2p-icp, mrpt-libmaps, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mola-metric-maps";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_metric_maps/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "fa9032004ae138d2cfc784b66010c4e0a482da24c0f4900397388c09f3ea85a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mola-common mp2p-icp mrpt-libmaps ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Advanced metric map classes, using the generic `mrpt::maps::CMetricMap` interface, for use in other MOLA odometry and SLAM modules.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
