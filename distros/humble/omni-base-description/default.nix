
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, ament-lint-common, gazebo-plugins, launch-pal, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-omni-base-description";
  version = "2.0.9-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_description/2.0.9-1.tar.gz";
    name = "2.0.9-1.tar.gz";
    sha256 = "c3313b3d68701874246400b711b7cb1c7fcca5e77aac4af1c56f4a3f9f51aa67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common urdf-test ];
  propagatedBuildInputs = [ gazebo-plugins launch-pal xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "This package contains the description (mechanical, kinematic, visual,
      etc.) of the omni_base robot.  The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
