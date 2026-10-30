
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, mola-state-estimation-simple, mola-state-estimation-smoother }:
buildRosPackage {
  pname = "ros-kilted-mola-state-estimation";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/kilted/mola_state_estimation/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "a4b5e3243ce18939d0caa491cb8e4752ba23c3c4f52919900d5c7b066997ec69";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ mola-state-estimation-simple mola-state-estimation-smoother ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage with all MOLA state estimation packages.";
    license = with lib.licenses; [ bsd3 ];
  };
}
