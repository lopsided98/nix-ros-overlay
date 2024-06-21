
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-jazzy-unique-identifier-msgs";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/jazzy/unique_identifier_msgs/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "e57a72a47faf8472b08a7510336d6b2354ff4b35006569d48449f510853c48e8";
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
