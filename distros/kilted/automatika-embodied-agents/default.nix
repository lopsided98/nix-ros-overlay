
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, automatika-ros-sugar, builtin-interfaces, python3Packages, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-automatika-embodied-agents";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automatika_embodied_agents-release/archive/release/kilted/automatika_embodied_agents/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "2c54f625b930d142ef7d699fced3683e13d04f5f614a616af5a82d2df5c5eb3c";
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
