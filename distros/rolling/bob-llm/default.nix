
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-bob-llm";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/bob-ros2/bob_llm-release/archive/release/rolling/bob_llm/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "39f586ed95be48025b98d3e192c6fa068532e773879b603891d52055d19bad6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.pyyaml python3Packages.requests rclpy std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS package for interfacing with LLM's and VLM's using OpenAI compatible API.";
    license = with lib.licenses; [ asl20 ];
  };
}
