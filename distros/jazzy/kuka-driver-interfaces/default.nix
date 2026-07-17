
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-kuka-driver-interfaces";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_driver_interfaces/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "b24ea93303c4af51596b9fb8f5d61a63dbd7e40c9446010635752ff83911b07f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message definitions necessary for using KUKA drivers";
    license = with lib.licenses; [ asl20 ];
  };
}
