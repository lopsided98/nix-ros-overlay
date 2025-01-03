
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-nerian-stereo";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo_ros2-release/archive/release/humble/nerian_stereo/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "fd1e73c200f68ed649529a8a558ae7b767f97dc5edc65caf9db6506ba078237b";
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
