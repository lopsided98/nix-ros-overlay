
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, realsense2-description, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-urdf-utils";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_urdf_utils-release/archive/release/humble/pal_urdf_utils/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "fef7612423c56c18ba233aa560c44cf687d3abfaa5c4c033ae7f408e700c42dd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ realsense2-description xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "This package contains the color materials of common elements of PAL Robotics' robot.
      The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
