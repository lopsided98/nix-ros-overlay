
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-py-trees-ros-interfaces";
  version = "2.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_interfaces-release/archive/release/rolling/py_trees_ros_interfaces/2.1.1-3.tar.gz";
    name = "2.1.1-3.tar.gz";
    sha256 = "0aa786414e1570bdb1dd3139b4ae93a9ca361d9212fe31227c179452e825ca79";
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
