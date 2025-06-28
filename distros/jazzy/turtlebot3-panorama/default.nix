
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, geometry-msgs, image-transport, nav-msgs, opencv, rclcpp, sensor-msgs, tf2, tf2-geometry-msgs, turtlebot3-applications-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-panorama";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/jazzy/turtlebot3_panorama/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "0048d91f0e6c747c9acc39622cc049f70b55c2d0fe81d3a4623b7948db49e5c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge geometry-msgs image-transport nav-msgs opencv opencv.cxxdev rclcpp sensor-msgs tf2 tf2-geometry-msgs turtlebot3-applications-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package for turtlebot3 panorama.";
    license = with lib.licenses; [ bsd3 ];
  };
}
