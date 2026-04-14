
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-auto-apms-interfaces";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/jazzy/auto_apms_interfaces/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "1fcc4707dc9528f170b2d055d78c91d464a0d5cc225a12bcd4bdc88e9e431d19";
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
