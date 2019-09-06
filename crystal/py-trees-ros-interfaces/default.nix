
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-identifier-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, action-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-py-trees-ros-interfaces";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros_interfaces-release/archive/release/crystal/py_trees_ros_interfaces/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "d4792a78173a09b204e0f4bffc654a22b3401ff0bf8b6018930e085d18ea72ba";
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
