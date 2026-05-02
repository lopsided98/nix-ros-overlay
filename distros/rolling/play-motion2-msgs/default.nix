
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-play-motion2-msgs";
  version = "1.8.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion2-release/archive/release/rolling/play_motion2_msgs/1.8.4-2.tar.gz";
    name = "1.8.4-2.tar.gz";
    sha256 = "97dbfe62bcfc0c704203c1fcdbc60b695d765e5b593ccd5da37c8579881b9c13";
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
