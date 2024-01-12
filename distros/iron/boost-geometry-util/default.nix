
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, boost, geometry-msgs, ouxt-common, rclcpp }:
buildRosPackage {
  pname = "ros-iron-boost-geometry-util";
  version = "0.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_geometry_util-release/archive/release/iron/boost_geometry_util/0.0.1-4.tar.gz";
    name = "0.0.1-4.tar.gz";
    sha256 = "e18fd416066d7d68be3b47c07252844ac14c8d0db75c5665f1cc4e7679e66632";
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
