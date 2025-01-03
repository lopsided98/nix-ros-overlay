
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, pcl, ros-environment }:
buildRosPackage {
  pname = "ros-humble-fast-gicp";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fast_gicp-release/archive/release/humble/fast_gicp/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "bf58d4e73cbc249fb30313972b83271d1dde964218b87df47ec37fd05641c15f";
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
