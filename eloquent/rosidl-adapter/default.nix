
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-lint-common, ament-cmake, ament-cmake-pytest, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-adapter";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/eloquent/rosidl_adapter/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "12c9f3e998dbc4622446b99bab173bb5c854d8bb5a5489bf6fb9eb39a76e1c40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ament-lint-auto ament-cmake-pytest ];
  propagatedBuildInputs = [ python3Packages.empy ];

  meta = {
    description = ''API and scripts to parse .msg/.srv/.action files and convert them to .idl.'';
    license = with lib.licenses; [ asl20 ];
  };
}
