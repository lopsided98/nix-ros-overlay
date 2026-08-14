
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, pcl, pcl-conversions, pluginlib, sensor-msgs, yasmin }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-pcl";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_pcl/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "6fb659296688e8ee62757846d70f6f5dc2109964e20d1cd30292a76bb0f3160a";
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
