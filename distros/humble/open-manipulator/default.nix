
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, open-manipulator-x-bringup, open-manipulator-x-description, open-manipulator-x-gui, open-manipulator-x-moveit-config, open-manipulator-x-playground, open-manipulator-x-teleop }:
buildRosPackage {
  pname = "ros-humble-open-manipulator";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/humble/open_manipulator/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "e9f6010b33c7b8183fb60d040a4d0288e786e78d83c6cf498697dd05d01df0ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ open-manipulator-x-bringup open-manipulator-x-description open-manipulator-x-gui open-manipulator-x-moveit-config open-manipulator-x-playground open-manipulator-x-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "OpenMANIPULATOR-X meta ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
