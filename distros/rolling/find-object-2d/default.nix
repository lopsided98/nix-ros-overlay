
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, cv-bridge, geometry-msgs, image-transport, message-filters, qt5, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, zlib }:
buildRosPackage {
  pname = "ros-rolling-find-object-2d";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/find_object_2d-release/archive/release/rolling/find_object_2d/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "a9280e194df5d7dcd386fca19726187477e18eb70644896b7667b51facfb1313";
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
