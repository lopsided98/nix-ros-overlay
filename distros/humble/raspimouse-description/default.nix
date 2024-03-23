
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ign-ros2-control, joint-state-publisher, joint-state-publisher-gui, launch, realsense2-description, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-raspimouse-description";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_description-release/archive/release/humble/raspimouse_description/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "ffae980fa75d09ea29705a78cb0818b68595a6055377624b92e79f1932c6914b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ign-ros2-control joint-state-publisher joint-state-publisher-gui launch realsense2-description robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The raspimouse_description package";
    license = with lib.licenses; [ mit ];
  };
}
