
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cv-bridge, eigen, geos, pkg-config, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-swri-geometry-util";
  version = "3.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_geometry_util/3.6.1-3.tar.gz";
    name = "3.6.1-3.tar.gz";
    sha256 = "a3cb85b471860f8ac967d3c2fa08603f2d4b78f6f79ce2b7ae779e41fc0f4cde";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cv-bridge eigen geos rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "swri_geometry_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
