
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, automatika-ros-sugar, builtin-interfaces, python3Packages, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-automatika-embodied-agents";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automatika_embodied_agents-release/archive/release/kilted/automatika_embodied_agents/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "47b4af634fdc428dace90bffe03da0a56cd38d7702815220e71bf92fb90dd880";
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
