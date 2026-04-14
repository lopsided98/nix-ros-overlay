
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, automatika-ros-sugar, builtin-interfaces, python3Packages, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-automatika-embodied-agents";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automatika_embodied_agents-release/archive/release/jazzy/automatika_embodied_agents/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "a59720e487cf3843471e97e325e1b1e1761e99403bd58694b9bbf1fb100ac308";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ automatika-ros-sugar builtin-interfaces python3Packages.httpx python3Packages.platformdirs python3Packages.tqdm python3Packages.websockets rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];

  meta = {
    description = "agents";
    license = with lib.licenses; [ mit ];
  };
}
