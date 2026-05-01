
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-lyrical-unique-identifier-msgs";
  version = "2.8.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/lyrical/unique_identifier_msgs/2.8.1-3.tar.gz";
    name = "2.8.1-3.tar.gz";
    sha256 = "091ea3c4f922f1eb9e38238a723a1d4ded71b95c022ef970f2e1826e44508c05";
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
