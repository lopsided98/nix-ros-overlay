
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ament-nodl";
  version = "0.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/rolling/ament_nodl/0.1.0-7.tar.gz";
    name = "0.1.0-7.tar.gz";
    sha256 = "b3b69491bb35328429430a308097d03b9687979ee0e979d2ae646b0bca372255";
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
