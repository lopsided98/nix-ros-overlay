
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, axis-msgs, camera-info-manager-py, ptz-action-server-msgs, python3Packages, pythonPackages, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-axis-camera";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/jazzy/axis_camera/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "5c37339a5faefbdae76cb671e10207ff715a57e86bfa1ab03af734f546b0b6f1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ axis-msgs camera-info-manager-py ptz-action-server-msgs python3Packages.requests sensor-msgs std-srvs ];

  meta = {
    description = "ROS 2 driver for fixed and PTZ Axis cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
