
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-xml, python3Packages, rclpy, rmf-fleet-adapter-python, rmf-fleet-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmf-demos-fleet-adapter";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/jazzy/rmf_demos_fleet_adapter/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "1788f6d10bb3e5fa88e8b58eaa8a00ade49244845ae195ae5ac49f621a37431e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ launch-xml python3Packages.fastapi python3Packages.flask-socketio python3Packages.numpy python3Packages.pydantic python3Packages.pyproj python3Packages.pyyaml python3Packages.requests python3Packages.uvicorn rclpy rmf-fleet-adapter-python rmf-fleet-msgs rmf-task-msgs ];

  meta = {
    description = "Fleet adapters for interfacing with RMF Demos robots with a fleet manager via REST API";
    license = with lib.licenses; [ asl20 ];
  };
}
