
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, boost, geometry-msgs, ouxt-common, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-boost-geometry-util";
  version = "0.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_geometry_util-release/archive/release/jazzy/boost_geometry_util/0.0.1-5.tar.gz";
    name = "0.0.1-5.tar.gz";
    sha256 = "4c6f4197dbb750f54a5f1168f7ab161d30a6149ab40c686d672a85e568391634";
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
