
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-cli }:
buildRosPackage {
  pname = "ros-rolling-rosidl-adapter";
  version = "4.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_adapter/4.8.1-1.tar.gz";
    name = "4.8.1-1.tar.gz";
    sha256 = "3d54300b15b589355aa6bd662cd449548ebdb9648f94fae7e1c2609731270e5c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core python3 python3Packages.empy rosidl-cli ];
  nativeBuildInputs = [ ament-cmake-core python3 ];

  meta = {
    description = "API and scripts to parse .msg/.srv/.action files and convert them to .idl.";
    license = with lib.licenses; [ asl20 ];
  };
}
