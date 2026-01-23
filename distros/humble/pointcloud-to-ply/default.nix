
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-open3d, ament-cmake, ament-lint-auto, ament-lint-common, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-pointcloud-to-ply";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/li9i/pointcloud-to-ply-release/archive/release/humble/pointcloud_to_ply/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "f7332df6d08f482e3a0d52d2e6019bd8605cb7ab83cf0a5225c8785f5692ce17";
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
