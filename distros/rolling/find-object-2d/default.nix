
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, cv-bridge, geometry-msgs, image-transport, message-filters, qt5, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-find-object-2d";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/introlab/find_object_2d-release/archive/release/rolling/find_object_2d/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "17a2b3050d92508fd8cd0b4b67c54de682180ebb11a2c80be7d14b276a31b474";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge geometry-msgs image-transport message-filters qt5.qtbase rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The find_object_2d package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
