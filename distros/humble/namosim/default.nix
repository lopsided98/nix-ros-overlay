
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-jsonpickle, _unresolved_python3-typer, cairo, geometry-msgs, grid-map, grid-map-msgs, opencv, pre-commit, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-namosim";
  version = "0.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/namosim-release/archive/release/humble/namosim/0.0.4-2.tar.gz";
    name = "0.0.4-2.tar.gz";
    sha256 = "6822ff5f4e7a13c4417b8dd40bdb2a1e8f71df7ba22978e187668c2d26b97c32";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ _unresolved_python3-jsonpickle _unresolved_python3-typer cairo geometry-msgs grid-map grid-map-msgs opencv opencv.cxxdev pre-commit python3Packages.bidict python3Packages.black python3Packages.cairosvg python3Packages.matplotlib python3Packages.notebook python3Packages.numpy python3Packages.opencv4 python3Packages.pandas python3Packages.pillow python3Packages.pydantic python3Packages.pytest python3Packages.pytestcov python3Packages.requests python3Packages.scikitimage python3Packages.shapely python3Packages.tkinter python3Packages.typing-extensions rclpy ];

  meta = {
    description = "A navigation planner for Navigation Among Movable Obstacles (NAMO)";
    license = with lib.licenses; [ mit ];
  };
}
