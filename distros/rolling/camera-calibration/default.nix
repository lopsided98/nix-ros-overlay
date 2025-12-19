
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, image-geometry, message-filters, python3Packages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-camera-calibration";
  version = "7.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/camera_calibration/7.1.3-1.tar.gz";
    name = "7.1.3-1.tar.gz";
    sha256 = "6868189e4dcaadcb92995acd8569735034062fdc7fd1cf1b8d3074d7c8b56c68";
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
