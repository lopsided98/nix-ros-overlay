
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-identifier-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, action-msgs, diagnostic-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-py-trees-ros-interfaces";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros_interfaces-release/archive/release/dashing/py_trees_ros_interfaces/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d6edc96033d5e25360907f1610fa4fc720dc1f7cb18d0c1f6018ddd39d403f2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ unique-identifier-msgs rosidl-default-generators action-msgs diagnostic-msgs geometry-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ unique-identifier-msgs action-msgs diagnostic-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interfaces used by py_trees_ros and py_trees_ros_tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
