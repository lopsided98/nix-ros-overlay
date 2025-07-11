
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, boost, geometry-msgs, ouxt-common, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-boost-geometry-util";
  version = "0.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_geometry_util-release/archive/release/kilted/boost_geometry_util/0.0.1-5.tar.gz";
    name = "0.0.1-5.tar.gz";
    sha256 = "19b93f776f694f30330f4fbb83f38430d3e9fb94258e08174427bb0f19a07a18";
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
