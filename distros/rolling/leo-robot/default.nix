
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-filters, leo-fw }:
buildRosPackage {
  pname = "ros-rolling-leo-robot";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/rolling/leo_robot/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "2738136a2ef01e2b562824adea0fe503a713335c22863e31172bbe87b3339548";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-bringup leo-filters leo-fw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of software to install on Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
