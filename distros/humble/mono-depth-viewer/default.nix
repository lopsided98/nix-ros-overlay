
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, launch-ros, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-mono-depth-viewer";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/divagarn/mono_depth_viewer-release/archive/release/humble/mono_depth_viewer/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ba9a202e43746534f63d3a96b4368c792f5af8ca4bc7f01b55de7771895acbba";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros python3Packages.numpy python3Packages.opencv4 python3Packages.pyqt5 rclpy sensor-msgs ];

  meta = {
    description = "Qt viewer that runs transformer-based monocular depth estimation on image topics stored in ROS 2 bags.";
    license = with lib.licenses; [ asl20 ];
  };
}
