
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, vision-msgs }:
buildRosPackage {
  pname = "ros-lyrical-zbar-ros-interfaces";
  version = "0.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/lyrical/zbar_ros_interfaces/0.7.0-3.tar.gz";
    name = "0.7.0-3.tar.gz";
    sha256 = "4bd886a6f0a3f0cf052ec840715e38115cc60921ea4f3a55b6c6333d613de3ec";
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
