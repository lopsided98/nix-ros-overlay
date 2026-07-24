
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-colcon-common-extensions, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-colcon-rclgd";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/Ozuba/rclgd-release/archive/release/jazzy/colcon_rclgd/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "a4c81291fd2abef9102597a8d5fcb0a1a5833ea4097ca0396484a0e6c6b49d8b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_python3-colcon-common-extensions ];

  meta = {
    description = "colcon build extension for rclgd (Godot Engine) packages";
    license = with lib.licenses; [ mit ];
  };
}
