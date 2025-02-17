
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-gazebo-msgs";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/humble/gazebo_msgs/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "53795dc75ed1a71de54cf71fe623839cb6d6dfdbf9075f94fda53dbf09eccb8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service data structures for interacting with Gazebo from ROS2.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
