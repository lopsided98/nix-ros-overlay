
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-py-trees-ros-interfaces";
  version = "2.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_interfaces-release/archive/release/lyrical/py_trees_ros_interfaces/2.1.1-4.tar.gz";
    name = "2.1.1-4.tar.gz";
    sha256 = "43e411e6f874185b5185caf3daecd7f72eb8eed8f834210cc5501bff2617c845";
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
