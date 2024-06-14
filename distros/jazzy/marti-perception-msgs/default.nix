
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-marti-perception-msgs";
  version = "1.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/jazzy/marti_perception_msgs/1.5.2-3.tar.gz";
    name = "1.5.2-3.tar.gz";
    sha256 = "499602bd79d8ae9ee9ec7980da0759350cb9710e5d77d8c97964fe9fbd5317fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_perception_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
