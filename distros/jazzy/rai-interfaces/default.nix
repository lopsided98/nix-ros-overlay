
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-msgs, nav2-simple-commander, portaudio, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf-transformations, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rai-interfaces";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rai_interfaces-release/archive/release/jazzy/rai_interfaces/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "f0f22cfdb99a7eb768feea5982df9f67c3d5bbf224c09c7684ca3c182fec75af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs geometry-msgs nav2-msgs nav2-simple-commander portaudio rosidl-default-runtime sensor-msgs std-msgs tf-transformations vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interfaces for RAI communication";
    license = with lib.licenses; [ asl20 ];
  };
}
