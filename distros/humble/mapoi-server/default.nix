
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pytest, ament-index-cpp, ament-lint-auto, ament-lint-common, gazebo-msgs, geometry-msgs, launch-testing, launch-testing-ament-cmake, launch-testing-ros, mapoi-interfaces, nav2-msgs, rclcpp, rclcpp-action, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-mapoi-server";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/humble/mapoi_server/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "be1efd87ea1350cdaa64c3bb904edec42c36e1f629bb79a65ba25fb0df77c874";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ ament-cmake-auto ament-index-cpp gazebo-msgs geometry-msgs mapoi-interfaces nav2-msgs rclcpp rclcpp-action std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros visualization-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "map and poi server";
    license = with lib.licenses; [ mit ];
  };
}
