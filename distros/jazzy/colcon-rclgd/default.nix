
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-colcon-common-extensions, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-colcon-rclgd";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/Ozuba/rclgd-release/archive/release/jazzy/colcon_rclgd/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "bb5681d11911eaab1b086e471bde24fe861e47307959f16dbb005a790648676b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_python3-colcon-common-extensions ];

  meta = {
    description = "colcon build extension for rclgd (Godot Engine) packages";
    license = with lib.licenses; [ mit ];
  };
}
