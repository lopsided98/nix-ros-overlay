
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-marti-perception-msgs";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/galactic/marti_perception_msgs/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "68f75885da65f5822060c67e683f3f846e0692106f30d6c440f067da5b7250f7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_perception_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
