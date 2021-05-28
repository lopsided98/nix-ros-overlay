
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, sdformat, sdformat-test-files, tinyxml2-vendor, urdf, urdf-parser-plugin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-galactic-sdformat-urdf";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/galactic/sdformat_urdf/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "52bf193eea3dc223c27f29517b61afb1c894764c5a6dd0e173bfd935cb1eef04";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib urdfdom-headers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common sdformat-test-files ];
  propagatedBuildInputs = [ ament-cmake-ros sdformat tinyxml2-vendor urdf urdf-parser-plugin ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''URDF plugin to parse SDFormat XML into URDF C++ DOM objects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
