
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-mypy, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-cli }:
buildRosPackage {
  pname = "ros-kilted-rosidl-adapter";
  version = "4.9.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_adapter/4.9.4-2.tar.gz";
    name = "4.9.4-2.tar.gz";
    sha256 = "5da32b7898626d8e0ccb2818f0bf2fe2e4ecd9721c13562999f7751679e46a59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-mypy ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core python3 python3Packages.empy rosidl-cli ];
  nativeBuildInputs = [ ament-cmake-core python3 ];

  meta = {
    description = "API and scripts to parse .msg/.srv/.action files and convert them to .idl.";
    license = with lib.licenses; [ asl20 ];
  };
}
