
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-play-motion2-msgs";
  version = "1.8.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion2-release/archive/release/lyrical/play_motion2_msgs/1.8.4-3.tar.gz";
    name = "1.8.4-3.tar.gz";
    sha256 = "7085afa0fd5a59878fb4b2a48229ae25359605c554b5f61ae5ffc99721ca6b6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Play a pre-recorded motion on a robot";
    license = with lib.licenses; [ asl20 ];
  };
}
