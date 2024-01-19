
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ament-nodl";
  version = "0.1.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/rolling/ament_nodl/0.1.0-5.tar.gz";
    name = "0.1.0-5.tar.gz";
    sha256 = "3d07b6056921c918ad2def2c44650aea9fd578a6234bb3505a4a382d18e511df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Ament extension for exporting NoDL .xml files'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
