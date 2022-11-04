
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-maps }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_navigation/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "4ba6c59610b51f5e3345c5d2160705fd8e37a6756e020db927a43772520be509";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ pmb2-2dnav pmb2-maps ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2 navigation metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
