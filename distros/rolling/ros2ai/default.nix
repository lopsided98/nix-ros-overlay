
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-openai-pip, _unresolved_python3-validators, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, ros2cli, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2ai";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2ai-release/archive/release/rolling/ros2ai/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e2c8fe1f3f5cab1235441ffb0cdd306e5071598f93a52c0d294bf124116d1cf1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint geometry-msgs launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout std-msgs test-msgs ];
  propagatedBuildInputs = [ _unresolved_python3-openai-pip _unresolved_python3-validators python3Packages.pyyaml ros2cli ];

  meta = {
    description = "The LLM (OpenAI, Anthropic, Ollama) command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
