
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-2dnav, omni-base-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-omni-base-navigation";
  version = "2.19.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_navigation/2.19.1-1.tar.gz";
    name = "2.19.1-1.tar.gz";
    sha256 = "0bc57f31bf54af6a9c8460f4811d91e7c10eb3aa8a48a7e2871fb9262417dca4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-2dnav omni-base-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base Navigatgion metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
