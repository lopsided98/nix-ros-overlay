
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-humble-leo-robot";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-ros2-release/archive/release/humble/leo_robot/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c21d474d040f3aa548d01054db887eb41397a09d48f9eb48ddfe1e74ec3bcd3f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of software to install on Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
