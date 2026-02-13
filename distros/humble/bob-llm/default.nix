
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-bob-llm";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/bob-ros2/bob_llm-release/archive/release/humble/bob_llm/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "3fcdb56009d39cc9f79622a4c0dba744d5fa222a9e45a2006feb62ed78acccd8";
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
