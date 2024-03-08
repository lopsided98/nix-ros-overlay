
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-py";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_py/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "ef579be056100a912d8ddd74334034c3b75029996855068d342dbd2b67f0201f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = ''Python action tutorial code'';
    license = with lib.licenses; [ asl20 ];
  };
}
