
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform-description";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_platform_description/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "e3fe25f9673ef25140e94fb243911a7b43b206ab083fb2af0e8139b041790ddd";
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
