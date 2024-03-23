
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, image-geometry, message-filters, python3Packages, pythonPackages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-camera-calibration";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/humble/camera_calibration/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "4817e5c9ac787a248ce893e3143f20b7d17fcf8c441e04e9be4e64cffaddf052";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.requests pythonPackages.pytest ];
  propagatedBuildInputs = [ cv-bridge image-geometry message-filters rclpy sensor-msgs std-srvs ];

  meta = {
    description = "camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
