
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, realsense2-description, xacro }:
buildRosPackage {
  pname = "ros-rolling-pal-urdf-utils";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_urdf_utils-release/archive/release/rolling/pal_urdf_utils/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "0d1a19643fa90c053ce0a2e763b9369c36b9cb4e26f5d1518d75fc5298fb53cf";
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
