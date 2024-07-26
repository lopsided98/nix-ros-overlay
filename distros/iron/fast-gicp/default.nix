
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, pcl, ros-environment }:
buildRosPackage {
  pname = "ros-iron-fast-gicp";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fast_gicp-release/archive/release/iron/fast_gicp/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "198c0fec4c99f237138695888c48a5ffe93d89724cf292fd7e759c63b6f73658";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ eigen pcl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A collection of fast point cloud registration implementations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
