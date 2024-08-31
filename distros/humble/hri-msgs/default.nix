
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-hri-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_msgs-release/archive/release/humble/hri_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "3eb41d56158757714236fee89e7ed6d7ce0a280c366a619e9f7c1ef704480834";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Messages, services and action definitions useful for Human-Robot Interaction";
    license = with lib.licenses; [ asl20 ];
  };
}
