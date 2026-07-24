
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, geometry-msgs, python3Packages, rclpy, sensor-msgs, std-msgs, tf2-ros, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-scan-detection-fusion";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/HexboxRC/scan_detection_fusion-release/archive/release/jazzy/scan_detection_fusion/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "1d319a5e6c787f4e462f7b524b4e64531576d098e743972ea815ad886ba7c2dd";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs python3Packages.numpy rclpy sensor-msgs std-msgs tf2-ros vision-msgs visualization-msgs ];

  meta = {
    description = "Reusable ROS 2 LiDAR-camera fusion. Matches 2D object detections
    (vision_msgs/Detection2DArray) to LaserScan points, producing range-resolved,
    semantically labeled obstacles and class-aware footprint polygons for navigation.";
    license = with lib.licenses; [ asl20 ];
  };
}
