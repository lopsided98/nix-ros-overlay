
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-2dnav, tiago-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-navigation";
  version = "4.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_navigation/4.0.12-1.tar.gz";
    name = "4.0.12-1.tar.gz";
    sha256 = "3d66507241e48ea1465aba388eb40da79e34d699527325daf16a3480bd88a405";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-2dnav tiago-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "TIAGo navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
