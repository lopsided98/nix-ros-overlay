
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-xml, python3Packages, rclpy, rmf-fleet-adapter-python, rmf-fleet-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-demos-fleet-adapter";
  version = "2.8.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/lyrical/rmf_demos_fleet_adapter/2.8.2-4.tar.gz";
    name = "2.8.2-4.tar.gz";
    sha256 = "ab67e0a2ae3d70d905e782b8e826cc498282191de40cbc791ff334da3abd3ff4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ launch-xml python3Packages.fastapi python3Packages.flask-socketio python3Packages.numpy python3Packages.pydantic python3Packages.pyproj python3Packages.pyyaml python3Packages.requests python3Packages.uvicorn rclpy rmf-fleet-adapter-python rmf-fleet-msgs rmf-task-msgs ];

  meta = {
    description = "Fleet adapters for interfacing with RMF Demos robots with a fleet manager via REST API";
    license = with lib.licenses; [ asl20 ];
  };
}
