
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-foxglove-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_foxglove_msgs-release/archive/release/jazzy/foxglove_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e1c6c4f19466727fdd5e73b43034790ca0af844587dd222eb129f0f6d1195b33";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "foxglove_msgs provides visualization messages that are supported by Foxglove.";
    license = with lib.licenses; [ mit ];
  };
}
