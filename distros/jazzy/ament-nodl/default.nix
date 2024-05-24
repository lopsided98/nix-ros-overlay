
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-ament-nodl";
  version = "0.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/jazzy/ament_nodl/0.1.0-7.tar.gz";
    name = "0.1.0-7.tar.gz";
    sha256 = "36a87af745e2c9bbe45fc3f64a6cf415d2ec60daa73e7d92283ff67c1ffec87d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ament extension for exporting NoDL .xml files";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
