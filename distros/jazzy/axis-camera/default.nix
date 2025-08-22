
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, axis-msgs, camera-info-manager-py, ptz-action-server-msgs, python3Packages, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-axis-camera";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/jazzy/axis_camera/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "9497b4659aac5b836381b0e3cddef798557e8501186428f3c602b502a32a9bc7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ axis-msgs camera-info-manager-py ptz-action-server-msgs python3Packages.requests sensor-msgs std-srvs ];

  meta = {
    description = "ROS 2 driver for fixed and PTZ Axis cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
