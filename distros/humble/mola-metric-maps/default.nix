
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, eigen, mola-common, mola-kernel, mola-test-datasets, mp2p-icp, mrpt-maps, mrpt-viz, nanoflann-vendor, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mola-metric-maps";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_metric_maps/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "acf3c6f0d035e87287c2027533c30dc8f239e7829f5a6c5ca1f6474ec61de038";
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
