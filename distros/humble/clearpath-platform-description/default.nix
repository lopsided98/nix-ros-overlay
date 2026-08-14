
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform-description";
  version = "1.3.12-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_platform_description/1.3.12-1.tar.gz";
    name = "1.3.12-1.tar.gz";
    sha256 = "a74ba6af33bef5156b54a423b0059fa98e8e315a706da7df51835cd4b386e2c9";
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
