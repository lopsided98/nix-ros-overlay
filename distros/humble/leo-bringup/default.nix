
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, image-proc, leo-description, leo-fw, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, v4l2-camera, xacro }:
buildRosPackage {
  pname = "ros-humble-leo-bringup";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/humble/leo_bringup/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "53d74ce8dade9f3927d95ec3602a5852f9ba8af98a5a152325d1564149260719";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs image-proc leo-description leo-fw robot-state-publisher rosapi rosbridge-server sensor-msgs v4l2-camera xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
