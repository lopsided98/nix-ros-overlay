
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, vision-msgs }:
buildRosPackage {
  pname = "ros-kilted-zbar-ros-interfaces";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/kilted/zbar_ros_interfaces/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "240f14b9216b837c5077a54f4d424348302526f50da1ced2041ce5e0c8233d83";
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
