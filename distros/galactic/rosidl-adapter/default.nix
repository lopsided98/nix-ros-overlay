
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, rosidl-cli }:
buildRosPackage {
  pname = "ros-galactic-rosidl-adapter";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/galactic/rosidl_adapter/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "13db73c0bbec1f44fc58a4ae61f2dbfec9fe2ce04efa60fa85f7122d4295cb10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.empy rosidl-cli ];

  meta = {
    description = ''API and scripts to parse .msg/.srv/.action files and convert them to .idl.'';
    license = with lib.licenses; [ asl20 ];
  };
}
