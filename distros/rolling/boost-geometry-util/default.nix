
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, boost, geometry-msgs, ouxt-common, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-boost-geometry-util";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_geometry_util-release/archive/release/rolling/boost_geometry_util/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "abe4e01f2a23bcc31eb1f897b092a1c8f81d1c928c8290d62f20779f57f10c5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ouxt-common ];
  propagatedBuildInputs = [ boost geometry-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''Utility library for boost geometry'';
    license = with lib.licenses; [ asl20 ];
  };
}
