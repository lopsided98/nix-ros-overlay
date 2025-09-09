
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-automatic-parking";
  version = "1.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/humble/turtlebot3_automatic_parking/1.3.3-2.tar.gz";
    name = "1.3.3-2.tar.gz";
    sha256 = "4725dd477174f245e598c540d5d4cd535200159f0505c1e5324c5e81de0305ed";
  };

  buildType = "ament_python";
  buildInputs = [ geometry-msgs nav-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Package for turtlebot3 automatic_parking.";
    license = with lib.licenses; [ asl20 ];
  };
}
