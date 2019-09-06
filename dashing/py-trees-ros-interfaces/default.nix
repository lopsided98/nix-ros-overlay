
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-identifier-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, action-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-py-trees-ros-interfaces";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros_interfaces-release/archive/release/dashing/py_trees_ros_interfaces/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "1ba7e99e2e74008b430d7e48393dda8fdfea90686e0518c9963a1496c36fdcda";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs rosidl-default-generators unique-identifier-msgs geometry-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime unique-identifier-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interfaces used by py_trees_ros and py_trees_ros_tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
