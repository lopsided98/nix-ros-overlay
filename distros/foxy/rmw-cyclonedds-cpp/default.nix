
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, cyclonedds, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-foxy-rmw-cyclonedds-cpp";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/foxy/rmw_cyclonedds_cpp/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "9e2e01744e4d0b45c61ff7eefac15e8469f4aa3c675f270b895b4c4e9a2df760";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cyclonedds rcpputils rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Implement the ROS middleware interface using Eclipse CycloneDDS in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
