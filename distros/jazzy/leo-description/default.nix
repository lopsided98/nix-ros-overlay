
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-leo-description";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/jazzy/leo_description/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "258c6da71458ea110973fc1ee1dd643e1663f6aec6cf797da789609f6fd5ebf5";
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
