
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-msgs";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_msgs/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "e341762b851f9e6d879798d8ab33d80780cd9accd60e3896a9123b61c0c94e10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Custom ROS messages for Phidgets drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
