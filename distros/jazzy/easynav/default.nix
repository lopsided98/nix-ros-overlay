
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, easynav-common, easynav-controller, easynav-core, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-sensors, easynav-support-py, easynav-system, easynav-tools }:
buildRosPackage {
  pname = "ros-jazzy-easynav";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "71ee143d1ccb97a533e4ff2df7db4b596b22958bc90c3624be82feaae9ecc3be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ easynav-common easynav-controller easynav-core easynav-interfaces easynav-localizer easynav-maps-manager easynav-planner easynav-sensors easynav-support-py easynav-system easynav-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation:Mata package for installing all EasyNav.";
    license = with lib.licenses; [ asl20 ];
  };
}
