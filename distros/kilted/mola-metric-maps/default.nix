
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, mola-common, mola-kernel, mp2p-icp, mrpt-libmaps, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mola-metric-maps";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_metric_maps/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "2d6ff4fd6555e4624fca91eae260bcb60947b739d0b60760ff8e6bfc0ddfbcd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mola-common mola-kernel mp2p-icp mrpt-libmaps onetbb ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Advanced metric map classes, using the generic `mrpt::maps::CMetricMap` interface, for use in other MOLA odometry and SLAM modules.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
