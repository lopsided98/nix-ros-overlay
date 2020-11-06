
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, cyclonedds, cyclonedds-cmake-module, rcutils, rmw, rosidl-generator-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rmw-cyclonedds-cpp";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/eloquent/rmw_cyclonedds_cpp/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "bf5d2a594f12e2f3ed6478ab0d7dfdc02d11118e26285f8204952d49f2d5ccda";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cyclonedds cyclonedds-cmake-module rcutils rmw rosidl-generator-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake-ros cyclonedds-cmake-module ];

  meta = {
    description = ''Implement the ROS middleware interface using Eclipse CycloneDDS in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
