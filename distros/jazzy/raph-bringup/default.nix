
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, compressed-depth-image-transport, compressed-image-transport, depth-image-proc, image-proc, image-transport, laser-filters, raph-description, raph-interfaces, raph-oak, rosapi, rosbridge-server, rplidar-ros, web-video-server }:
buildRosPackage {
  pname = "ros-jazzy-raph-bringup";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_robot-release/archive/release/jazzy/raph_bringup/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "6046e6853b3ba4ef8ac71de374b14a3cbab65c8e879caf9a97fbc4c9c129b8aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ compressed-depth-image-transport compressed-image-transport depth-image-proc image-proc image-transport laser-filters raph-description raph-interfaces raph-oak rosapi rosbridge-server rplidar-ros web-video-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for starting basic Raph Rover functionalities.";
    license = with lib.licenses; [ mit ];
  };
}
