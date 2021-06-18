
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, cyclonedds, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-galactic-rmw-cyclonedds-cpp";
  version = "0.22.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/galactic/rmw_cyclonedds_cpp/0.22.3-1.tar.gz";
    name = "0.22.3-1.tar.gz";
    sha256 = "2fc03f09537ea23892b56d173f50b10728f057ae6b56cccbd13848e253c89d6e";
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
