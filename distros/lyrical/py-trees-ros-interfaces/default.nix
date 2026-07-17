
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-py-trees-ros-interfaces";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_interfaces-release/archive/release/lyrical/py_trees_ros_interfaces/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "9a0da21f5eac8fe6b40a31334e356e81b7d00c53d5d2b21e53f4dfeddd55c780";
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
