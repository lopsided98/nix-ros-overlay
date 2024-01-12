
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-2d-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-social-nav-msgs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/social_nav_ros-release/archive/release/humble/social_nav_msgs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "57241f25b32b515f3e34f2ef1cdd4362f160df538b028d7dd74c654e0bd23221";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS interfaces for social navigation'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
