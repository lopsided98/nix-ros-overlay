
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform-description";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_platform_description/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "0f42c773b465cbf86544dc2ab434ab40e67a9289ef92e9cddc60b6e56cd85f8c";
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
