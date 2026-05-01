
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, pcl, pcl-conversions, pluginlib, sensor-msgs, yasmin }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-pcl";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_pcl/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "faf3003871c899f5e1b86ef3594e1b597d7193a17702051561806a78100e464d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ pcl pcl-conversions pluginlib sensor-msgs yasmin ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PCL-based reusable YASMIN states for PointCloud2 conversion, file I/O, and filtering.";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
