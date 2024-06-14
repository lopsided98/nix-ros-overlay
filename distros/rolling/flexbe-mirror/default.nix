
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-flexbe-mirror";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/rolling/flexbe_mirror/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "82fcc33ff0337065f6727b1ed635e613386e02a214c451ea7e0a50d6a78dc1fe";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = "flexbe_mirror implements functionality to remotely mirror an executed behavior.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
