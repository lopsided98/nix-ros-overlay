
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, axis-msgs, camera-info-manager-py, ptz-action-server-msgs, python3Packages, pythonPackages, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-axis-camera";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/humble/axis_camera/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "2e4405c4288ac0cc6fecd3432866a1f6a877536139d575de3471dc2fb3255076";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ axis-msgs camera-info-manager-py ptz-action-server-msgs python3Packages.requests sensor-msgs std-srvs ];

  meta = {
    description = "ROS 2 driver for fixed and PTZ Axis cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
