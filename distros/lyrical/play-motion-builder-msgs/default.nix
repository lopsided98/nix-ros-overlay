
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-play-motion-builder-msgs";
  version = "1.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion_builder-release/archive/release/lyrical/play_motion_builder_msgs/1.4.1-3.tar.gz";
    name = "1.4.1-3.tar.gz";
    sha256 = "b53131dc19dddc0662f4fb865c31fc875e796d743530b1f0e7393632e730b6ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The play_motion_builder_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
