
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-marti-perception-msgs";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/jazzy/marti_perception_msgs/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "a334534b2535a57147f2b08b395e028ba9f278b5733b326998a87342416a9144";
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
