
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, joint-state-publisher-gui, launch, launch-ros, launch-testing, python3Packages, pythonPackages, rcl-interfaces, rclpy, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-foxy-xacro-live";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/orise-robotics/xacro_live-release/archive/release/foxy/xacro_live/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "6780833008e35d68270a5d75473fcc42544523af01b319ae26c1888770e2afcf";
  };

  buildType = "ament_python";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch-testing pythonPackages.pytest ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros python3Packages.watchdog rcl-interfaces rclpy robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tool to update the robot_description dinamically from updates on a target xacro file'';
    license = with lib.licenses; [ asl20 ];
  };
}
