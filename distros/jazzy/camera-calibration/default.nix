
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, image-geometry, message-filters, python3Packages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-camera-calibration";
  version = "5.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/jazzy/camera_calibration/5.0.8-1.tar.gz";
    name = "5.0.8-1.tar.gz";
    sha256 = "138c6ed98c42410c1305aaf8643012efe6662168618b8db28b58d34865090136";
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
