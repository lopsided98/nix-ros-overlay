
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-launch";
  version = "3.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/lyrical/launch/3.9.9-1.tar.gz";
    name = "3.9.9-1.tar.gz";
    sha256 = "1c90188a9b8c2f19c09dba0cc2462c73fba68ebd3e93a229891891c42cc0216e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout python3Packages.types-pyyaml ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lark python3Packages.osrf-pycommon python3Packages.pyyaml python3Packages.typing-extensions ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
