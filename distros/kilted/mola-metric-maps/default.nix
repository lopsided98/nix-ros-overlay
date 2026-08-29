
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, mola-common, mola-kernel, mp2p-icp, mrpt-libmaps, nanoflann-vendor, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mola-metric-maps";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_metric_maps/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "2db36e97f90ecd7c183c4be5b64063ac5c4d11a8008e0f3c4bd6b31b6cdf4fd4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cli11 mola-common mola-kernel mp2p-icp mrpt-libmaps nanoflann-vendor onetbb ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Advanced metric map classes, using the generic `mrpt::maps::CMetricMap` interface, for use in other MOLA odometry and SLAM modules.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
