
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-auto-apms-interfaces";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/jazzy/auto_apms_interfaces/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "fd04d59bf9a8b693e7a582c96f77e0d5fe0c6843a956d838cba1c74e774bb210";
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
