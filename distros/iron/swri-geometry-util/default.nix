
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cv-bridge, eigen, geos, pkg-config, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-iron-swri-geometry-util";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_geometry_util/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "f279e0d519aa4dd46f1b1cbfba9373fb95b68b06558869605f0666e705d7e5cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cv-bridge eigen geos rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''swri_geometry_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
