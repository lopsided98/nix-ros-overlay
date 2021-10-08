
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-tf2-msgs";
  version = "0.13.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_msgs/0.13.12-1.tar.gz";
    name = "0.13.12-1.tar.gz";
    sha256 = "56e8df9f8043867338ae74ce8d70c0ec7a40b11ce6224aae68d6aec3cfaec453";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
