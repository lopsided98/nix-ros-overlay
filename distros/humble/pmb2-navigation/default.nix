
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_navigation/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "3a041989b9061d2213359fe6f6a7e3d23285ba168922e03a91cd7d9a119065cb";
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
