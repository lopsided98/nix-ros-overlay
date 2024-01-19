
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, image-geometry, message-filters, python3Packages, pythonPackages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-camera-calibration";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/camera_calibration/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "7b4db2a1614d0a27efc44d3bf6d2121cd5eea98f4a66bc11f441995ea6e40359";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.requests pythonPackages.pytest ];
  propagatedBuildInputs = [ cv-bridge image-geometry message-filters python3Packages.opencv4 rclpy sensor-msgs std-srvs ];

  meta = {
    description = ''camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
