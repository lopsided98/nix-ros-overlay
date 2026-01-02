
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-smbus2, ament-cmake, ament-cmake-black, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, image-proc, launch, launch-ros, leo-description, leo-filters, leo-fw, leo-msgs, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-kilted-leo-bringup";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/kilted/leo_bringup/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "da6289b46e3ab26a17fd96861a53782b5f2c2e14606843181ad29895e1e804b8";
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
