
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-openai-pip, _unresolved_python3-validators, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, curl, geometry-msgs, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, ros2cli, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2ai";
  version = "0.1.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2ai-release/archive/release/jazzy/ros2ai/0.1.3-4.tar.gz";
    name = "0.1.3-4.tar.gz";
    sha256 = "9a1c076e3d25350152d88085ddf014370433d68c78845317c17ab643577078b9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint geometry-msgs launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout std-msgs test-msgs ];
  propagatedBuildInputs = [ _unresolved_python3-openai-pip _unresolved_python3-validators curl ros2cli ];

  meta = {
    description = "The OpenAI command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
