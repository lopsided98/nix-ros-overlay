
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-nerian-stereo";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo_ros2-release/archive/release/iron/nerian_stereo/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "355abbbb1afd5195f94e6e5ae8e63da8eac39d2edc2ba81c4d44878633573a9b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake cv-bridge rosidl-default-generators rosidl-default-runtime sensor-msgs std-msgs stereo-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Driver node for ROS 2 for Scarlet, SceneScan and SP1 stereo vision sensors by Nerian Vision GmbH";
    license = with lib.licenses; [ mit ];
  };
}
