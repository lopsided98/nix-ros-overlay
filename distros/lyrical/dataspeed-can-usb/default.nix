
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, lusb, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-dataspeed-can-usb";
  version = "2.0.8-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/lyrical/dataspeed_can_usb/2.0.8-1.tar.gz";
    name = "2.0.8-1.tar.gz";
    sha256 = "a99f5f1a94536ac060fe39c9d5cc2beee774ab4c7dc0a02a4f79f0d2404d36e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs lusb rclcpp rclcpp-components rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Driver to interface with the Dataspeed Inc. USB CAN Tool";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
