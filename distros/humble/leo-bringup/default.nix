
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, leo-description, leo-fw, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, v4l2-camera, xacro }:
buildRosPackage {
  pname = "ros-humble-leo-bringup";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/humble/leo_bringup/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "fdec7e725450c9c440b58a2ed2f335e5b02974ede9c520e540bcd32860fdfb60";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs leo-description leo-fw robot-state-publisher rosapi rosbridge-server sensor-msgs v4l2-camera xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
