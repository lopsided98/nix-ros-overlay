
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-open3d, ament-cmake, ament-lint-auto, ament-lint-common, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-pointcloud-to-ply";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/li9i/pointcloud-to-ply-release/archive/release/humble/pointcloud_to_ply/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "e72fe51c1e4bc878ca3c98d50ee5d60c1fbc8456618246c5b2aa2d5f96c1d3be";
  };

  buildType = "ament_python";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_python3-open3d rclpy sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Subscribe to a PointCloud2 topic, reconstruct a mesh, and save to OBJ/PLY.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
