
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, cyclonedds, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-foxy-rmw-cyclonedds-cpp";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/foxy/rmw_cyclonedds_cpp/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "8f56eca62c9de7fba065f35ec5715c0e516069d05dabf93607b4fa83013ff2ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cyclonedds rcpputils rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Implement the ROS middleware interface using Eclipse CycloneDDS in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
