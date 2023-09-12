
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-schunk-svh-description";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/schunk_svh_ros_driver-release/archive/release/foxy/schunk_svh_description/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a723982587d40d43bd3a1be23e9fb47bca46c77d1d2aaddab8259936964c2dc5";
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
