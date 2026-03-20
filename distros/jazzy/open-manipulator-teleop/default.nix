
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-teleop";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_teleop/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "adaf38158227ad16ac56049145814f2a710092f153da381dd15786e3ee740459";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "OpenManipulator teleoperation package";
    license = with lib.licenses; [ asl20 ];
  };
}
