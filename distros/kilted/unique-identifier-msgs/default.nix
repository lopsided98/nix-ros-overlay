
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-kilted-unique-identifier-msgs";
  version = "2.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/kilted/unique_identifier_msgs/2.7.0-2.tar.gz";
    name = "2.7.0-2.tar.gz";
    sha256 = "4becc843fe3d31ce966530d45eda528ca474c5984ef641ed24f6357e533013ac";
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
