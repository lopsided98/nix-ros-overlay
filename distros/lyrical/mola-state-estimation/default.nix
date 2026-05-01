
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, mola-state-estimation-simple, mola-state-estimation-smoother }:
buildRosPackage {
  pname = "ros-lyrical-mola-state-estimation";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_state_estimation/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "bc3a867ac3a8bcc2f46d3f3196707700ed87508ebfaf0764b0b8a672cccfc57f";
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
