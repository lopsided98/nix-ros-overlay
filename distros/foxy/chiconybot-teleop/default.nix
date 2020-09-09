
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-foxy-chiconybot-teleop";
  version = "0.0.0-r2";

  src = fetchurl {
    url = "https://github.com/jediofgever/ROS_CB-release/archive/release/foxy/chiconybot_teleop/0.0.0-2.tar.gz";
    name = "0.0.0-2.tar.gz";
    sha256 = "33a5b6625dbf7739ecbe9903e45b0dc52145e05cb5a094efbf4f29f8973358c9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''Teleoperation node using keyboard for chiconybot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
