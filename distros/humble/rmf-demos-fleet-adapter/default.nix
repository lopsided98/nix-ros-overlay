
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-adapter-python, rmf-fleet-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-fleet-adapter";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_fleet_adapter/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d823991ba7d0b9feef84d3d3fa7f2da9921f80edad3198ac75ae9cac3089cea6";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-adapter-python rmf-fleet-msgs rmf-task-msgs ];

  meta = {
    description = ''Fleet adapters for interfacing with RMF Demos robots with a fleet manager via REST API'';
    license = with lib.licenses; [ asl20 ];
  };
}
