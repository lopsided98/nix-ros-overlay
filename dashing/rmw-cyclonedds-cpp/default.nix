
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, ament-lint-common, ament-cmake, cyclonedds, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, rmw, rosidl-generator-c, cyclonedds-cmake-module, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rmw-cyclonedds-cpp";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/dashing/rmw_cyclonedds_cpp/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "23b18c4e499c2e3170349a288d43eec0ac3da61f654ce42cbe19565704a48e01";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils cyclonedds rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rmw rosidl-generator-c cyclonedds-cmake-module ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rcutils ament-cmake cyclonedds rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rmw rosidl-generator-c cyclonedds-cmake-module ];
  nativeBuildInputs = [ cyclonedds-cmake-module ament-cmake-ros ];

  meta = {
    description = ''Implement the ROS middleware interface using Eclipse CycloneDDS in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
