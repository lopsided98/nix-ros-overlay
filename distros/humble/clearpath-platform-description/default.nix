
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform-description";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_platform_description/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "ebfcd30cfbd1833390ce28ff3d7e522b150d907a59c7a829d0748d9e68d3b27f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Platform URDF descriptions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
