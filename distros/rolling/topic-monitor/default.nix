
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, example-interfaces, launch, launch-ros, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-monitor";
  version = "0.38.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/topic_monitor/0.38.1-1.tar.gz";
    name = "0.38.1-1.tar.gz";
    sha256 = "5142ce74f295b9505e1122ba68a2329862b5fa597e430b56e53d19748cd92f1b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces launch launch-ros python3Packages.matplotlib rclpy std-msgs ];

  meta = {
    description = "Package containing tools for monitoring ROS 2 topics.";
    license = with lib.licenses; [ asl20 ];
  };
}
