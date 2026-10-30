
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, easynav-common, easynav-controller, easynav-core, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-recovery, easynav-sensors, easynav-support-py, easynav-system, easynav-tools }:
buildRosPackage {
  pname = "ros-kilted-easynav";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "026754ed5603e0a8bc146cfbc01e83a727d8cea8052a238f91f4e7f1e04a8d57";
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
