
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, image-geometry, message-filters, python3Packages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-camera-calibration";
  version = "8.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/camera_calibration/8.0.2-1.tar.gz";
    name = "8.0.2-1.tar.gz";
    sha256 = "488d483e7bdf5a98fbd516a11d69a941dbf68ec1c5c9038074ef96bbad252ec2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest python3Packages.requests ];
  propagatedBuildInputs = [ cv-bridge image-geometry message-filters python3Packages.opencv4 python3Packages.semver rclpy sensor-msgs std-srvs ];

  meta = {
    description = "camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
