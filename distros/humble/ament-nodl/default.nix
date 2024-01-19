
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-ament-nodl";
  version = "0.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/humble/ament_nodl/0.1.0-4.tar.gz";
    name = "0.1.0-4.tar.gz";
    sha256 = "c5582c2a5856fabbe768ed8b465b35ee95fa905f422630e82454e95d01640873";
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
