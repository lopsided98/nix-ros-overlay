
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, image-geometry, message-filters, python3Packages, pythonPackages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-camera-calibration";
  version = "5.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/jazzy/camera_calibration/5.0.1-2.tar.gz";
    name = "5.0.1-2.tar.gz";
    sha256 = "06e1836b2f61279b7956bed21543da0daa2dc76f5e1baa2d7a1972f276746871";
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
