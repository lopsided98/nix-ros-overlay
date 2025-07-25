
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-automatic-parking";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/jazzy/turtlebot3_automatic_parking/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "02de8c071111ce8884d506484c528b162f5e5eb4273a163a2f9e1ed8f918863a";
  };

  buildType = "ament_python";
  buildInputs = [ geometry-msgs nav-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Package for turtlebot3 automatic_parking.";
    license = with lib.licenses; [ asl20 ];
  };
}
