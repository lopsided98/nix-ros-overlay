
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, pcl, pcl-conversions, pluginlib, sensor-msgs, yasmin }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-pcl";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_pcl/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "7a5e390c109055e0094495606e35dd5e586ea540f6ae3a025a023d43cb2fe519";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ pcl pcl-conversions pluginlib sensor-msgs yasmin ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PCL-based reusable YASMIN states for PointCloud2 conversion, file I/O, and filtering.";
    license = with lib.licenses; [ asl20 ];
  };
}
