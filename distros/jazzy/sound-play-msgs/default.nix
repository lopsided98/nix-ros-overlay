
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-sound-play-msgs";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/jazzy/sound_play_msgs/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "51b668b70f5b607378ab3d3e077ef1ce7bf07758e2cbc836fdae520c1e45db8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for transmitting sound via ROS with sound_play";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
