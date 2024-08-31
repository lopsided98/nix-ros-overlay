
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, image-geometry, message-filters, python3Packages, pythonPackages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-iron-camera-calibration";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/iron/camera_calibration/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "913f98313d163f143c4abe6dc35a876602c722372fe9fa23ad89f9981f126ed5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.requests pythonPackages.pytest ];
  propagatedBuildInputs = [ cv-bridge image-geometry message-filters python3Packages.opencv4 rclpy sensor-msgs std-srvs ];

  meta = {
    description = "camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
