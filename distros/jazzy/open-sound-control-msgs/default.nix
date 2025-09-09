
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-open-sound-control-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_sound_control-release/archive/release/jazzy/open_sound_control_msgs/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "3f843d61fb5e3a18dc5156332e66fb99868219a3a6a9546cefc5880f8b36c401";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Open Sound Control messages for ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
