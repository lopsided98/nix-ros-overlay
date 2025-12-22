
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libopen3d-dev, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, eigen, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-open3d-conversions";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_open3d-release/archive/release/humble/open3d_conversions/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "dae362864f0429e744d1d440d2936f9b669672887c9b9a1e3fe7877a150eb913";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_libopen3d-dev eigen rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Provides conversion functions to and from Open3D datatypes";
    license = with lib.licenses; [ asl20 ];
  };
}
