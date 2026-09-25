
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, eigen, mola-common, mola-kernel, mola-test-datasets, mp2p-icp, mrpt-maps, mrpt-viz, nanoflann-vendor, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-metric-maps";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_metric_maps/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "4e493ad6c2b9e5d9a0db3f091b34f424861a0712900256c8c0454da73babd399";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake eigen ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common mola-test-datasets ];
  propagatedBuildInputs = [ cli11 mola-common mola-kernel mp2p-icp mrpt-maps mrpt-viz nanoflann-vendor onetbb ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Advanced metric map classes, using the generic `mrpt::maps::CMetricMap` interface, for use in other MOLA odometry and SLAM modules.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
