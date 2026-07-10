
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, pcl, pcl-conversions, pluginlib, sensor-msgs, yasmin }:
buildRosPackage {
  pname = "ros-rolling-yasmin-pcl";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_pcl/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "ccce4dde9e9f1ad2950ea7f6b6e858f167b17379439aedbb84bacc8ec3bdbab3";
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
