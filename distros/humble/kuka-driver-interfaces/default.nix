
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-kuka-driver-interfaces";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_driver_interfaces/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c0a2ae97e4a119b9896e80b74ef91fb424d60f618a75eea2944fe5df8ab77f1a";
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
