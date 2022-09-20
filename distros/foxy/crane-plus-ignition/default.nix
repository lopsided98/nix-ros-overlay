
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, ros-ign }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-ignition";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/foxy/crane_plus_ignition/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "40023f28799b14eaf9388e724716835372bf74b9e46cf08feeb6df4236c348fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher ros-ign ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 ignition gazebo simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
