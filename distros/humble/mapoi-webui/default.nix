
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, mapoi-interfaces, mapoi-server, python3Packages, rclpy, std-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mapoi-webui";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/humble/mapoi_webui/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "ab34c1572f30c047e8ed83bd8a90f976049245268a8987a6e7ec1b27ff29b803";
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
