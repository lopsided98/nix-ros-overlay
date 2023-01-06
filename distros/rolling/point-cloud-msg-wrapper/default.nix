
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-msg-wrapper";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_msg_wrapper-release/archive/release/rolling/point_cloud_msg_wrapper/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "2005089636bec115a9829eca64f8d8f625caea084295a045080ce71751d34807";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A point cloud message wrapper that allows for simple and safe PointCloud2 msg usage'';
    license = with lib.licenses; [ asl20 ];
  };
}
