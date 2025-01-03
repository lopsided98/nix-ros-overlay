
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, vision-msgs }:
buildRosPackage {
  pname = "ros-rolling-zbar-ros-interfaces";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/rolling/zbar_ros_interfaces/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "528153962db4f4eb1a9c181afa23f9a7be73970a33bebee059c5533e23c5ca31";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing interfaces for zbar_ros to use to publish results";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
