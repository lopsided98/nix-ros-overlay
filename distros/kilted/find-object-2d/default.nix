
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, cv-bridge, geometry-msgs, image-transport, message-filters, qt5, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, zlib }:
buildRosPackage {
  pname = "ros-kilted-find-object-2d";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/find_object_2d-release/archive/release/kilted/find_object_2d/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "50c633a4783330c60d96c40d7a706d32ead7ec7a877b7aac8027fb576ca09966";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge geometry-msgs image-transport message-filters qt5.qtbase rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The find_object_2d package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
