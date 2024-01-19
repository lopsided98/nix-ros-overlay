
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-schunk-svh-description";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/schunk_svh_ros_driver-release/archive/release/humble/schunk_svh_description/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "d5834a9ed9b4aebadb9fa22630bb17c5b9c101db5897ddd2f6aa9593ad165c1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Kinematic and visual descriptions of the Schunk SVH'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
