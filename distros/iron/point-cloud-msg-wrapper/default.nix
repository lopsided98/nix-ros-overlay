
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-point-cloud-msg-wrapper";
  version = "1.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_msg_wrapper-release/archive/release/iron/point_cloud_msg_wrapper/1.0.7-4.tar.gz";
    name = "1.0.7-4.tar.gz";
    sha256 = "5d338cbcd4f2318b75a0a5157d8ce1dbd288331328f7510c106756d1d731fdc0";
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
