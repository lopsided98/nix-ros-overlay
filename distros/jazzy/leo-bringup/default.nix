
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, image-proc, leo-description, leo-fw, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, v4l2-camera, xacro }:
buildRosPackage {
  pname = "ros-jazzy-leo-bringup";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/leo_bringup/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "8aeec7786752d3acad8d6162848bff85ad476a28783e3bf09eb90f873f6895de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs image-proc leo-description leo-fw robot-state-publisher rosapi rosbridge-server sensor-msgs v4l2-camera xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for starting basic Leo Rover functionalities.";
    license = with lib.licenses; [ mit ];
  };
}
