
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "4.1.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_navigation/4.1.1-1.tar.gz";
    name = "4.1.1-1.tar.gz";
    sha256 = "6c3901a9b9e8108e0d3cfa03b68fef630d559ef2b0e8ebdab5d29e9167697396";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pmb2-2dnav pmb2-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2 navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
