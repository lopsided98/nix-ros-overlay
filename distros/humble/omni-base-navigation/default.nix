
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-2dnav, omni-base-laser-sensors, omni-base-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-omni-base-navigation";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_navigation/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "35466ce33035d08966f4c066146dfd8b11a9493029407bb0b9c15bb6e34c8c78";
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
