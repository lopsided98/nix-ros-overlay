
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, launch, launch-ros, launch-yaml, mocap4r2-interfaces, python3Packages, rclpy, std-srvs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-gt-tools";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_gt_tools/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "dd2f5412fb340c44d1ba1db75a72931c02c365692938f7ace03f7a520e8890b3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros launch-yaml mocap4r2-interfaces python3Packages.numpy python3Packages.pyyaml rclpy std-srvs tf2-ros-py ];

  meta = {
    description = "Ground-truth tools of MOCAP4ROS2: online localization error (ATE/RPE) with TUM export, map-mocap frame alignment and marker body calibration";
    license = with lib.licenses; [ asl20 ];
  };
}
