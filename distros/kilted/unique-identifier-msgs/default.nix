
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-kilted-unique-identifier-msgs";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/kilted/unique_identifier_msgs/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "b86f464eb0c66e9f91aed28642fa4b2162da5b09f6c57b2234e744a64fe2cd79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-core-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = "ROS messages for universally unique identifiers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
