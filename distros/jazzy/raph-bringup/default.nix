
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, compressed-depth-image-transport, compressed-image-transport, depth-image-proc, depthai-ros-driver, image-transport, laser-filters, raph-description, raph-interfaces, rosapi, rosbridge-server, rplidar-ros, web-video-server }:
buildRosPackage {
  pname = "ros-jazzy-raph-bringup";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_robot-release/archive/release/jazzy/raph_bringup/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9b5617879dcb72cdc996dcdfe553c9a95ceededa0e5ec5aab1854574e3897fde";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ compressed-depth-image-transport compressed-image-transport depth-image-proc depthai-ros-driver image-transport laser-filters raph-description raph-interfaces rosapi rosbridge-server rplidar-ros web-video-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for starting basic Raph Rover functionalities.";
    license = with lib.licenses; [ mit ];
  };
}
