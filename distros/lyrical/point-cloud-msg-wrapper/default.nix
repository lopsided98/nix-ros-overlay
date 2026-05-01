
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-point-cloud-msg-wrapper";
  version = "1.0.7-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_msg_wrapper-release/archive/release/lyrical/point_cloud_msg_wrapper/1.0.7-6.tar.gz";
    name = "1.0.7-6.tar.gz";
    sha256 = "7c3b7e8a8099891f3bff22c11b572978bf7fdf27660df45c3d0fd6da6bcf4373";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A point cloud message wrapper that allows for simple and safe PointCloud2 msg usage";
    license = with lib.licenses; [ asl20 ];
  };
}
