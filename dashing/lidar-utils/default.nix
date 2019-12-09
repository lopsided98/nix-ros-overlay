
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rclcpp-lifecycle, ament-lint-common, ament-cmake, autoware-auto-cmake, ament-cmake-gtest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-lidar-utils";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/lidar_utils/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "e09998388ec7ab13b7b1e34126310139d93dd9a2494ebec9e28819c2bf2efa42";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp rclcpp-lifecycle ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''Common utility functions and classes for point clouds'';
    license = with lib.licenses; [ "Apex.AI License" ];
  };
}
