
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster, raspimouse-description, raspimouse-fake, robot-state-publisher, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-raspimouse-gazebo";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_sim-release/archive/release/jazzy/raspimouse_gazebo/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "6fa263adcdcce56fc051c7a0efa6fe0ca561393c12d2f3f7eb5ca6327e73c47f";
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
