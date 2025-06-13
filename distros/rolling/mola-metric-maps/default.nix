
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, mola-common, mp2p-icp, mrpt-libmaps, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-metric-maps";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_metric_maps/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "ed76650ed656a4cfebe31e73a5b7c126f842510a8c916dfeefed4862b22073b7";
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
