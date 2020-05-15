
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-eloquent-teleop-tools-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/eloquent/teleop_tools_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ad03fcc9669d37bff5f6ebe17a37147db70e8142db388b985dc1f387ba318a4e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The teleop_tools_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
