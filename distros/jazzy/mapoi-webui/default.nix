
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, mapoi-interfaces, mapoi-server, python3Packages, rclpy, std-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mapoi-webui";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/jazzy/mapoi_webui/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b9a71f135f7a86717fe34ad372aede97399b3d7f3868206d71eb229ca00b459b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mapoi-interfaces mapoi-server python3Packages.flask python3Packages.pillow python3Packages.pyyaml rclpy std-msgs std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Web UI for mapoi - POI editing, navigation, and robot monitoring";
    license = with lib.licenses; [ mit ];
  };
}
