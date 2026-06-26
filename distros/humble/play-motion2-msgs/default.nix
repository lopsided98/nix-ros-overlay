
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-play-motion2-msgs";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion2-release/archive/release/humble/play_motion2_msgs/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "1146c595914eaf72cc5921f3b6ddfaef2e016f8154f54eacd2b80167e5906144";
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
