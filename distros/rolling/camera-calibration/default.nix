
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, image-geometry, message-filters, python3Packages, pythonPackages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-camera-calibration";
  version = "6.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/camera_calibration/6.0.5-1.tar.gz";
    name = "6.0.5-1.tar.gz";
    sha256 = "276227648b00baeb523a650d93bb9f8be09eb2d688fb3a5055d7fa0578a1f880";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.requests pythonPackages.pytest ];
  propagatedBuildInputs = [ cv-bridge image-geometry message-filters python3Packages.opencv4 python3Packages.semver rclpy sensor-msgs std-srvs ];

  meta = {
    description = "camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
