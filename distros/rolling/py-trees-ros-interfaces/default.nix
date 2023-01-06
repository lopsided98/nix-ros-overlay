
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-py-trees-ros-interfaces";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros_interfaces-release/archive/release/rolling/py_trees_ros_interfaces/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "eaa1cf2351072901940778fb7effd896f88434acc17eed8244b878e4728626d6";
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
