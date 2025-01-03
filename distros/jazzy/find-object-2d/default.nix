
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, cv-bridge, geometry-msgs, image-transport, message-filters, qt5, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, zlib }:
buildRosPackage {
  pname = "ros-jazzy-find-object-2d";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/find_object_2d-release/archive/release/jazzy/find_object_2d/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "2b529316c9e3af2fadfacaa4851c812e6cc30669b05b6d810197bd1bb3766590";
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
