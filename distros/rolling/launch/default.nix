
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch";
  version = "3.9.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch/3.9.7-2.tar.gz";
    name = "3.9.7-2.tar.gz";
    sha256 = "ac8b24a718db73bd3436a33ead0f4dc04b12c03a7202cf2a1a2b46ba1c992ef8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout python3Packages.types-pyyaml ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lark python3Packages.osrf-pycommon python3Packages.pyyaml python3Packages.typing-extensions ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
