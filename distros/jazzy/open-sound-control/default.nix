
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, open-sound-control-bridge, open-sound-control-msgs }:
buildRosPackage {
  pname = "ros-jazzy-open-sound-control";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_sound_control-release/archive/release/jazzy/open_sound_control/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "30c7d62dee20ab49a9a5d2e3f97db4922be7d5826ae9635b8cc0836c663dc5f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ open-sound-control-bridge open-sound-control-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ROS/Open Sound Control bridge";
    license = with lib.licenses; [ asl20 ];
  };
}
