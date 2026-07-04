
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-platform-description";
  version = "2.9.10-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_platform_description/2.9.10-2.tar.gz";
    name = "2.9.10-2.tar.gz";
    sha256 = "5615708baec9272ef0865b564530a2efaf6256ca46384cf3d2f70413749a9330";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Platform URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
