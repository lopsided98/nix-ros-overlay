
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, geometry-msgs, image-transport, nav-msgs, opencv, rclcpp, sensor-msgs, tf2, tf2-geometry-msgs, turtlebot3-applications-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-panorama";
  version = "1.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/humble/turtlebot3_panorama/1.3.3-2.tar.gz";
    name = "1.3.3-2.tar.gz";
    sha256 = "0055c67bf28417918c1065993f08a09bd92ec9467deabf22bfe1e3e85884b8df";
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
