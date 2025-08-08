
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, axis-msgs, camera-info-manager-py, ptz-action-server-msgs, python3Packages, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-axis-camera";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/humble/axis_camera/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "7b1f43e9cd33ffeca06759d7e879740b80dc4b2dcd1279b856e0bec6acd02aa7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ axis-msgs camera-info-manager-py ptz-action-server-msgs python3Packages.requests sensor-msgs std-srvs ];

  meta = {
    description = "ROS 2 driver for fixed and PTZ Axis cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
