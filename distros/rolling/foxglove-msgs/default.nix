
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-foxglove-msgs";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_foxglove_msgs-release/archive/release/rolling/foxglove_msgs/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "d96e1d46975cbcf0ecd3a7a4bc137a263d53ec5acbb2c1d7ff23cb8e5fea6b17";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "foxglove_msgs provides visualization messages that are supported by Foxglove Studio.";
    license = with lib.licenses; [ mit ];
  };
}
