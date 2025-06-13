
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-urdf-utils";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_urdf_utils-release/archive/release/humble/pal_urdf_utils/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "4737fc46559f2860f68372e9f76cb02ee5b9ac957e673906922ac576c0feb3f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "This package contains the color materials of common elements of PAL Robotics' robot.
      The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
