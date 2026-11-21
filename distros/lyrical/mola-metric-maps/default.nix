
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, eigen, mola-common, mola-test-datasets, mp2p-icp, mrpt-maps, mrpt-viz, nanoflann-vendor, onetbb, python3, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mola-metric-maps";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_metric_maps/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "52b84ef5ab3f9eb8bd069e26d54cabde801f1b15f94ad29fe3f02df33505df73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake eigen python3 python3Packages.pybind11 ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common mola-test-datasets python3Packages.pytest ];
  propagatedBuildInputs = [ cli11 mola-common mp2p-icp mrpt-maps mrpt-viz nanoflann-vendor onetbb python3Packages.numpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Advanced metric map classes, using the generic `mrpt::maps::CMetricMap` interface, for use in other MOLA odometry and SLAM modules.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
