
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, eigen, mola-common, mola-kernel, mola-test-datasets, mp2p-icp, mrpt-maps, mrpt-viz, nanoflann-vendor, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mola-metric-maps";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_metric_maps/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "4ff1c4886a216156a149761b3fb483724f0bc6435d7db28fa6c20d2cf3f8cec5";
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
