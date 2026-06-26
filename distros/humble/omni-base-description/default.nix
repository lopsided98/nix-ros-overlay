
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, gazebo-planar-move-plugin, joint-state-publisher-gui, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-urdf-utils, realsense2-description, rviz2, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-omni-base-description";
  version = "2.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_robot-release/archive/release/humble/omni_base_description/2.17.0-1.tar.gz";
    name = "2.17.0-1.tar.gz";
    sha256 = "1f971354438f68c179e33635e96780a4843fe2f7c0ee9ce76f828093a945be9c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ gazebo-planar-move-plugin joint-state-publisher-gui launch launch-pal launch-param-builder launch-ros pal-urdf-utils realsense2-description rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "This package contains the description (mechanical, kinematic, visual,
      etc.) of the omni_base robot.  The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
