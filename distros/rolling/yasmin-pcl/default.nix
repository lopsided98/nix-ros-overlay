
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, pcl, pcl-conversions, pluginlib, sensor-msgs, yasmin }:
buildRosPackage {
  pname = "ros-rolling-yasmin-pcl";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_pcl/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "a1e16bbc7d9a7caa7480c8e1e048252afe570b0360b819cdf0301df8da5407ce";
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
