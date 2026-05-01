
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-launch";
  version = "3.9.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/lyrical/launch/3.9.7-3.tar.gz";
    name = "3.9.7-3.tar.gz";
    sha256 = "6466ada1e24d1fbdab1eb42b45eab461dee49e94f78c754fcc25459b98a9d706";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout python3Packages.types-pyyaml ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lark python3Packages.osrf-pycommon python3Packages.pyyaml python3Packages.typing-extensions ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
