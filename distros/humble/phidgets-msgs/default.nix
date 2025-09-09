
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-phidgets-msgs";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_msgs/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "7c0b40cf33e3a3ea28971e9eba8f8b3adf9efae4e4d02f7252f2dd2191fd1bde";
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
