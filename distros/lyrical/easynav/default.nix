
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, easynav-common, easynav-controller, easynav-core, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-recovery, easynav-sensors, easynav-support-py, easynav-system, easynav-tools }:
buildRosPackage {
  pname = "ros-lyrical-easynav";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "cef3fa72870fa3214c9a0fc29e61f825f6b99303aacff4c5f97bac3528a68f54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ easynav-common easynav-controller easynav-core easynav-interfaces easynav-localizer easynav-maps-manager easynav-planner easynav-recovery easynav-sensors easynav-support-py easynav-system easynav-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation:Mata package for installing all EasyNav.";
    license = with lib.licenses; [ asl20 ];
  };
}
