
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, image-geometry, message-filters, python3Packages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-camera-calibration";
  version = "7.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/lyrical/camera_calibration/7.1.3-3.tar.gz";
    name = "7.1.3-3.tar.gz";
    sha256 = "80afda19d8491e38a143c7ee4b632f5e6d29f074175e6922d740453face35f1f";
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
