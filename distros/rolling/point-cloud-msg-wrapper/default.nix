
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-msg-wrapper";
  version = "1.0.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_msg_wrapper-release/archive/release/rolling/point_cloud_msg_wrapper/1.0.7-3.tar.gz";
    name = "1.0.7-3.tar.gz";
    sha256 = "bcebe3036099e87389110eac0d239fdf4cb1b901a94028342c208908f3c40784";
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
