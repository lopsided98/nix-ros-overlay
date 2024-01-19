
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-quality-of-service-demo-py";
  version = "0.27.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/quality_of_service_demo_py/0.27.1-1.tar.gz";
    name = "0.27.1-1.tar.gz";
    sha256 = "8e2a4c0be7e34f61b487131d892198a81af3d149e4ac5633fa450066928caf74";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = ''Python Demo applications for Quality of Service features'';
    license = with lib.licenses; [ asl20 ];
  };
}
