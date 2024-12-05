
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, joint-state-broadcaster, raspimouse-description, raspimouse-fake, robot-state-publisher, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-raspimouse-gazebo";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_sim-release/archive/release/jazzy/raspimouse_gazebo/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "e4db22232036f35e69f6000d8cf889d102c7044e10527cede2d9ef08be87d10b";
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
