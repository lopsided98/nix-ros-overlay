
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, image-proc, launch, launch-ros, leo-description, leo-filters, leo-fw, leo-msgs, python3Packages, rclpy, robot-state-publisher, rosapi, rosbridge-server, sensor-msgs, tf-transformations, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-jazzy-leo-bringup";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/leo_bringup/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "5bdcb7b799c7ba92bec6628c0daed3919878f2e406f92856aef579d7f6d5a7a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-black ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs image-proc launch launch-ros leo-description leo-filters leo-fw leo-msgs python3Packages.smbus2 rclpy robot-state-publisher rosapi rosbridge-server sensor-msgs tf-transformations web-video-server xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for starting basic Leo Rover functionalities.";
    license = with lib.licenses; [ mit ];
  };
}
