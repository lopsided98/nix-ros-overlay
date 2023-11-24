
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, raspimouse-description, raspimouse-fake, robot-state-publisher, ros-gz }:
buildRosPackage {
  pname = "ros-humble-raspimouse-gazebo";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_sim-release/archive/release/humble/raspimouse_gazebo/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "7adc317ef48ae001338b8d53c2d4cb12ac3928d1b7abf11bdc3071cd49cd8a44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager raspimouse-description raspimouse-fake robot-state-publisher ros-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The raspimouse_gazebo package'';
    license = with lib.licenses; [ mit ];
  };
}
