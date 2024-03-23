
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-rolling-leo-description";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/rolling/leo_description/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "5911023f8a7d81b252117b8acd42a197d1dcfbc147ec8d0fd592fb91cf1192ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF Description package for Leo Rover";
    license = with lib.licenses; [ mit ];
  };
}
