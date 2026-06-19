
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-audio-common-msgs";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/jazzy/audio_common_msgs/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "c652c31abc4b21d56141da9d0ce23af746d3420df1b75589facd42dcb3068ac1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for transmitting audio via ROS";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
