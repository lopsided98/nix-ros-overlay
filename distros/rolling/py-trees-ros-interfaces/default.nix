
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-py-trees-ros-interfaces";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_interfaces-release/archive/release/rolling/py_trees_ros_interfaces/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "a9c5cf6aa609bd14b43784b3b43b5d49e0bed837935cd2c15248730ac6483eaf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs diagnostic-msgs geometry-msgs rosidl-default-runtime unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interfaces used by py_trees_ros and py_trees_ros_tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
