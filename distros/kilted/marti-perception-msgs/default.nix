
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-marti-perception-msgs";
  version = "1.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/kilted/marti_perception_msgs/1.6.1-2.tar.gz";
    name = "1.6.1-2.tar.gz";
    sha256 = "5c352c573460544d828af6ba551e0e94c6f714fcdd640dd477a653f72d1738c4";
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
