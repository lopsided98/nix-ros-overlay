
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-phidgets-msgs";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/lyrical/phidgets_msgs/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "8e32e8a5413bd9ba8802072d5e52cea7b8df59f3b4f7a4658fe48388a5c26ff4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Custom ROS messages for Phidgets drivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
