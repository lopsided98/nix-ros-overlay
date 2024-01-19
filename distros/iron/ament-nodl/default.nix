
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-iron-ament-nodl";
  version = "0.1.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/iron/ament_nodl/0.1.0-6.tar.gz";
    name = "0.1.0-6.tar.gz";
    sha256 = "c27cd122bc21afba360c12010781375c7e30308e1527ec2b00144345ee5e56c8";
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
