
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-urdf-utils";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_urdf_utils-release/archive/release/humble/pal_urdf_utils/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "3623ab0f93755fcd01aa16ea7da57fcb1b7d709fb683c79c2dda3f56272273e6";
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
