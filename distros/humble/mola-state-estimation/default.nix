
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, mola-state-estimation-simple, mola-state-estimation-smoother }:
buildRosPackage {
  pname = "ros-humble-mola-state-estimation";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/humble/mola_state_estimation/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "af88639278893fbc4e99400420d01cbb531fb8acb4215941bc872fd3c932fc79";
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
