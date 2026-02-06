
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-auto-apms-interfaces";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/jazzy/auto_apms_interfaces/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "e1edc30d9b8c910684fc0dbe43c229860c8841037192b9d14d874b33f7b25067";
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
