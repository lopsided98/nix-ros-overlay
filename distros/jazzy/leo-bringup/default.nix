
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, image-proc, launch, launch-ros, leo-description, leo-filters, leo-fw, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-jazzy-leo-bringup";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/leo_bringup/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "9988769fe203f9cd853a60031429fe83d02474f505cf092786ba39cfd8479c3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-black ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs image-proc launch launch-ros leo-description leo-filters leo-fw robot-state-publisher rosapi rosbridge-server sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for starting basic Leo Rover functionalities.";
    license = with lib.licenses; [ mit ];
  };
}
