
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, image-proc, leo-description, leo-fw, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, v4l2-camera, xacro }:
buildRosPackage {
  pname = "ros-humble-leo-bringup";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/humble/leo_bringup/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "1009cb8cadd231a66476a193e0cb1a4f928d161a7301d554dfe75efa8447335d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs image-proc leo-description leo-fw robot-state-publisher rosapi rosbridge-server sensor-msgs v4l2-camera xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
