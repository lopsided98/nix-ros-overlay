
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, demo-nodes-py, launch-ros, nodl, python3Packages, ros2launch, sros2 }:
buildRosPackage {
  pname = "ros-rolling-ros2launch-security";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2launch_security-release/archive/release/rolling/ros2launch_security/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "5c50db456ca186a231ffa50d081961389ba43deb23b6e2966b995dd5c0e9fd27";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-py launch-ros python3Packages.pytest ros2launch sros2 ];
  propagatedBuildInputs = [ ament-index-python nodl ros2launch sros2 ];

  meta = {
    description = "Security extensions for ros2 launch";
    license = with lib.licenses; [ asl20 ];
  };
}
