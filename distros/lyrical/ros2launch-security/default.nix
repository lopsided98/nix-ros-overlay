
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, demo-nodes-py, launch-ros, nodl-python, python3Packages, ros2launch, sros2 }:
buildRosPackage {
  pname = "ros-lyrical-ros2launch-security";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2launch_security-release/archive/release/lyrical/ros2launch_security/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "318947ee1f5522c07a7079f6d8719ebbd7b7449b631624020ecce625c794f8a7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-py launch-ros python3Packages.pytest ros2launch sros2 ];
  propagatedBuildInputs = [ ament-index-python nodl-python ros2launch sros2 ];

  meta = {
    description = "Security extensions for ros2 launch";
    license = with lib.licenses; [ asl20 ];
  };
}
