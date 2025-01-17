
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-py-trees-ros-interfaces";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_interfaces-release/archive/release/humble/py_trees_ros_interfaces/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "2261e1c486787720ee9c1ccce8670eb83197d24ae26bcaee17d3330903d6deac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs diagnostic-msgs geometry-msgs rosidl-default-runtime unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interfaces used by py_trees_ros and py_trees_ros_tutorials.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
