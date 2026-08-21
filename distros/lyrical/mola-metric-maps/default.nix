
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, mola-common, mola-kernel, mp2p-icp, mrpt-libmaps, nanoflann-vendor, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mola-metric-maps";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_metric_maps/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "0cb6ed32562554624dae87854056c48724f5bdaadfa8c5456a8cdf40746e8d0f";
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
