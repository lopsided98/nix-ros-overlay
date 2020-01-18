
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, cyclonedds, cyclonedds-cmake-module, rcutils, rmw, rosidl-generator-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-dashing-rmw-cyclonedds-cpp";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/dashing/rmw_cyclonedds_cpp/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "23b18c4e499c2e3170349a288d43eec0ac3da61f654ce42cbe19565704a48e01";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake cyclonedds cyclonedds-cmake-module rcutils rmw rosidl-generator-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake-ros cyclonedds-cmake-module ];

  meta = {
    description = ''Implement the ROS middleware interface using Eclipse CycloneDDS in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
