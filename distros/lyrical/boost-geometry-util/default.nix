
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, boost, geometry-msgs, ouxt-common, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-boost-geometry-util";
  version = "0.0.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_geometry_util-release/archive/release/lyrical/boost_geometry_util/0.0.1-6.tar.gz";
    name = "0.0.1-6.tar.gz";
    sha256 = "a0a0ce11e522e37fb6e0eb7e4c005775a72fce4a0f5e7d6eb8e386a48eb7e56c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ouxt-common ];
  propagatedBuildInputs = [ boost geometry-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = "Utility library for boost geometry";
    license = with lib.licenses; [ asl20 ];
  };
}
