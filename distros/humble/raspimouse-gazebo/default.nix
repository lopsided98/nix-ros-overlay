
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster, raspimouse-description, raspimouse-fake, robot-state-publisher, ros-gz }:
buildRosPackage {
  pname = "ros-humble-raspimouse-gazebo";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_sim-release/archive/release/humble/raspimouse_gazebo/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "32135b9eb45ff4d333362ced8439b0eaddb45f66c0e157920a377c69ee60a57f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster raspimouse-description raspimouse-fake robot-state-publisher ros-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The raspimouse_gazebo package";
    license = with lib.licenses; [ mit ];
  };
}
