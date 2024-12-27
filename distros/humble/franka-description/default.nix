
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-franka-description";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_description-release/archive/release/humble/franka_description/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "8de46cf1a1a4fb0c70270d142d989ccbb80aa5e71c021ee0e75cbc7265a525bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-publisher-gui rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "franka_description contains URDF files and meshes of Franka robots";
    license = with lib.licenses; [ asl20 ];
  };
}
