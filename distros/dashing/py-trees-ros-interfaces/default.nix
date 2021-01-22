
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-dashing-py-trees-ros-interfaces";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros_interfaces-release/archive/release/dashing/py_trees_ros_interfaces/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d6edc96033d5e25360907f1610fa4fc720dc1f7cb18d0c1f6018ddd39d403f2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs diagnostic-msgs geometry-msgs rosidl-default-runtime unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interfaces used by py_trees_ros and py_trees_ros_tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
