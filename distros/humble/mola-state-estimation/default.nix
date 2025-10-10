
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, mola-state-estimation-simple, mola-state-estimation-smoother }:
buildRosPackage {
  pname = "ros-humble-mola-state-estimation";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/humble/mola_state_estimation/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "c96d5cdd3145cf13e57f7952ea75deef254f64e322bbff55024bc94a1fa679f4";
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
