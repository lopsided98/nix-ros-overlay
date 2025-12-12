
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-play-motion2-msgs";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion2-release/archive/release/kilted/play_motion2_msgs/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "094502a23f40c64c21671817880adb948c2eb1993868f48934fa369244f5cc87";
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
