
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, axis-msgs, camera-info-manager-py, ptz-action-server-msgs, python3Packages, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-axis-camera";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/jazzy/axis_camera/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "2e14e116ab79d9133731f9108df19bb8075b84cb4631d7ac089648d50a1a9de4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ axis-msgs camera-info-manager-py ptz-action-server-msgs python3Packages.requests sensor-msgs std-srvs ];

  meta = {
    description = "ROS 2 driver for fixed and PTZ Axis cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
