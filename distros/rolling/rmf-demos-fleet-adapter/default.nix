
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-xml, python3Packages, rclpy, rmf-fleet-adapter-python, rmf-fleet-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-fleet-adapter";
  version = "2.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_fleet_adapter/2.8.2-2.tar.gz";
    name = "2.8.2-2.tar.gz";
    sha256 = "4def719f76d062ae6f5f5a8a27b665d70dcaa96003c2a16e8762e766d4510b11";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ launch-xml python3Packages.fastapi python3Packages.flask-socketio python3Packages.numpy python3Packages.pydantic python3Packages.pyproj python3Packages.pyyaml python3Packages.requests python3Packages.uvicorn rclpy rmf-fleet-adapter-python rmf-fleet-msgs rmf-task-msgs ];

  meta = {
    description = "Fleet adapters for interfacing with RMF Demos robots with a fleet manager via REST API";
    license = with lib.licenses; [ asl20 ];
  };
}
