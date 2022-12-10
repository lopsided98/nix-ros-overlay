
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ament-nodl";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/rolling/ament_nodl/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "318ff03dd2b45122e81c92c2f5557ba17b0de51b437daadaeeebea449d738b36";
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
