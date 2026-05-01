
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, image-proc, launch, launch-ros, leo-description, leo-filters, leo-fw, leo-msgs, python3Packages, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-lyrical-leo-bringup";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/lyrical/leo_bringup/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "f69c64d54b90a3dae38b2539ae844e694b42b947f08d4bdd22bb0a5e92a46ab0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-black ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs image-proc launch launch-ros leo-description leo-filters leo-fw leo-msgs python3Packages.smbus2 robot-state-publisher rosapi rosbridge-server sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for starting basic Leo Rover functionalities.";
    license = with lib.licenses; [ mit ];
  };
}
