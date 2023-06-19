
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-cli }:
buildRosPackage {
  pname = "ros-iron-rosidl-adapter";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/iron/rosidl_adapter/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "005928477237adc01680db7336abf135f77f47eda288e6fa22a0b746a8bc89b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core python3 python3Packages.empy rosidl-cli ];
  nativeBuildInputs = [ ament-cmake-core python3 ];

  meta = {
    description = ''API and scripts to parse .msg/.srv/.action files and convert them to .idl.'';
    license = with lib.licenses; [ asl20 ];
  };
}
