
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform-description";
  version = "1.3.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_platform_description/1.3.10-1.tar.gz";
    name = "1.3.10-1.tar.gz";
    sha256 = "f8abe3eaca1970636dc2556c3e633804486c5c0fbbde3f183e145c62d6b722af";
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
