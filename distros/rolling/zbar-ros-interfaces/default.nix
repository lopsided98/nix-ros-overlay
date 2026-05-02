
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, vision-msgs }:
buildRosPackage {
  pname = "ros-rolling-zbar-ros-interfaces";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/rolling/zbar_ros_interfaces/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "3740f0d24e9046e59d237ca32ff42fdda9f9dd7d28ce889e54abb2cdefeb979c";
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
