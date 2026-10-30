
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-mono-depth-viewer";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/divagarn/mono_depth_viewer-release/archive/release/humble/mono_depth_viewer/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "dddbfcc21eca61ec59243d812295b49671f8f410209b5c70cd2c86dbf7a1c25e";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.opencv4 python3Packages.pyqt5 rclpy sensor-msgs ];

  meta = {
    description = "Qt viewer that runs transformer-based monocular depth estimation on image topics stored in ROS 2 bags.";
    license = with lib.licenses; [ asl20 ];
  };
}
