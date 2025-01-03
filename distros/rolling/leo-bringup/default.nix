
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, image-proc, leo-description, leo-fw, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, v4l2-camera, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-rolling-leo-bringup";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/rolling/leo_bringup/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "404718a3237de26df34f32326758b954796bf41961b926046476d4de8056a50c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs image-proc leo-description leo-fw robot-state-publisher rosapi rosbridge-server sensor-msgs v4l2-camera web-video-server xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for starting basic Leo Rover functionalities.";
    license = with lib.licenses; [ mit ];
  };
}
