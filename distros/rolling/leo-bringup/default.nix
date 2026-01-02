
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-smbus2, ament-cmake, ament-cmake-black, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, image-proc, launch, launch-ros, leo-description, leo-filters, leo-fw, leo-msgs, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-rolling-leo-bringup";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/rolling/leo_bringup/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "43660ccced030d3a80b0db2237d7cc4aa6fe61391495a31fe55a44c530539a99";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-black ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ _unresolved_python3-smbus2 ament-index-python geometry-msgs image-proc launch launch-ros leo-description leo-filters leo-fw leo-msgs robot-state-publisher rosapi rosbridge-server sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for starting basic Leo Rover functionalities.";
    license = with lib.licenses; [ mit ];
  };
}
