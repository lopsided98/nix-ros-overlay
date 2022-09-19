
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, cyclonedds, iceoryx-binding-c, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-humble-rmw-cyclonedds-cpp";
  version = "1.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/humble/rmw_cyclonedds_cpp/1.3.3-2.tar.gz";
    name = "1.3.3-2.tar.gz";
    sha256 = "46d27e15dc30b09e842f40fcb1fa83c36eae2168eb2906e7b120237fad5e6363";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cyclonedds iceoryx-binding-c rcpputils rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Implement the ROS middleware interface using Eclipse CycloneDDS in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
