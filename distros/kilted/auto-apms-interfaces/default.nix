
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-kilted-auto-apms-interfaces";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/kilted/auto_apms_interfaces/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "63cd07e2dfec00be581c3783950793605c3703e1dce9882bd8d96ed2c0a63cc5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-copyright ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 interfaces for AutoAPMS";
    license = with lib.licenses; [ asl20 ];
  };
}
