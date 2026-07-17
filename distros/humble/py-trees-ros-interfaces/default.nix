
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-py-trees-ros-interfaces";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_interfaces-release/archive/release/humble/py_trees_ros_interfaces/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "33f217dac52d8441c665926ac4640558667ea23e7339743986a902e0fc5910a1";
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
