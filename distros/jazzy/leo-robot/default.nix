
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-jazzy-leo-robot";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/leo_robot/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "1a46f673397e720313eee467ada17671000accced54e2a6da34cc2706197cb3b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of software to install on Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
