
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, boost, geometry-msgs, ouxt-common, rclcpp }:
buildRosPackage {
  pname = "ros-humble-boost-geometry-util";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_geometry_util-release/archive/release/humble/boost_geometry_util/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "3054977c41c7664c8e4c412abaaf49933b4ce3bf732691fa81e83e60378888a7";
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
