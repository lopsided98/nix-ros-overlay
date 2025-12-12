
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, easynav-common, easynav-controller, easynav-core, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-sensors, easynav-support-py, easynav-system, easynav-tools }:
buildRosPackage {
  pname = "ros-kilted-easynav";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "656064ecb41d55ffbb6accd0e98abd7202f431fdbfe64d592fd4851ce7b85626";
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
