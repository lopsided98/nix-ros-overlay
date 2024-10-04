
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-2dnav, omni-base-laser-sensors, omni-base-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-omni-base-navigation";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_navigation/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "e79a3d62e8772e7eb4833e745cc94a702b3a4b35dfbf05fdfecc7fd7cf79102a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-2dnav omni-base-laser-sensors omni-base-rgbd-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base Navigatgion metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
