
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, easynav-common, easynav-controller, easynav-core, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-sensors, easynav-support-py, easynav-system, easynav-tools }:
buildRosPackage {
  pname = "ros-jazzy-easynav";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ca36e03c66a5ed462f8f3e223aefd81a55afdbed2279afdacb07dff6ab2a7c36";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ easynav-common easynav-controller easynav-core easynav-interfaces easynav-localizer easynav-maps-manager easynav-planner easynav-sensors easynav-support-py easynav-system easynav-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation:Mata package for installing all EasyNav.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
